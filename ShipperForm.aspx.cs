using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SupplierForm : System.Web.UI.Page
{
    static EntitiesModel context = new EntitiesModel();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["isLogin"] != null)
        {
            var isLogin = (bool)Session["isLogin"];
            if (isLogin == true)
            {
                var query = from a in context.Suppliers select a;
                box1.InnerHtml = "Records: " + query.ToList().Count;

                var query2 = from a in context.Customers select a;
                box2.InnerHtml = "Records: " + query2.ToList().Count;

                var query3 = from a in context.Employees select a;
                box3.InnerHtml = "Records: " + query3.ToList().Count;

                var query4 = from a in context.Categories select a;
                box4.InnerHtml = "Records: " + query4.ToList().Count;

                var query5 = from a in context.Orders select a;
                box5.InnerHtml = "Records: " + query5.ToList().Count;

                var query6 = from a in context.Products select a;
                box6.InnerHtml = "Records: " + query6.ToList().Count;

                var aQuery = from a in context.Shippers select a;

                foreach (var tmp in aQuery.ToList())
                {
                    tmp.phone = tmp.phone.Replace("(", string.Empty);
                    tmp.phone = tmp.phone.Replace(") ", string.Empty);
                    tmp.phone = tmp.phone.Replace("-", string.Empty);
                    tableDiv.InnerHtml += "<tr><td class='center' style='text-align: center;'>" + tmp.shipperid + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.companyname + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.phone + "</td>" +
                                       "<td class='center' style='text-align: center;'>" +
                                          "<a class='btn btn-success customBtn' id='" + tmp.shipperid + "' onclick='View(this.id, \"show\")' href='#editField'>" +
                                            "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                            "View" +
                                        "</a>" +
                                        "<a class='btn btn-info customBtn' id='" + tmp.shipperid + "' onclick='View(this.id, \"edit\" )' href='#editField'>" +
                                            "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                            "Edit" +
                                        "</a>" +
                                        "<button class='btn btn-danger customBtn'  id='" + tmp.shipperid + "' onclick='Delete(this.id)' >" +
                                            "<i class='glyphicon glyphicon-trash icon-white customBtn'></i>" +
                                            "Delete" +
                                        "</button></td>" +
                                        "</tr>";
                }
            }
            else
            {
                Response.Redirect("404.html");
            }
        }
        else
        {
            Response.Redirect("404.html");
        }
    }

    [WebMethod]
    public static string Add(string name, string phone)
    {
        Shipper aShipper = new Shipper
        {
            companyname = name,
            phone = phone
        };

        context.Shippers.Add(aShipper);
        context.SaveChanges();
        return "Add successful";
    }

    [WebMethod]
    public static string Delete(string tmpid)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Shippers
                     where a.shipperid == id
                     select a).First();

        var query2 = from b in context.Orders
                     select new
                     {
                         b.shipperid,
                     };

        foreach (var tmp in query2)
        {
            if (query.shipperid == tmp.shipperid)
            {
                return String.Format("The {0} shipper is still in use", query.shipperid);
            }
        }
        context.Shippers.Remove(query);

        context.SaveChanges();

        return "Delete successful";
    }

    [WebMethod]
    public static string[] View(string tmpid)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Shippers
                     where a.shipperid == id
                     select a).First();


        List<string> list = new List<string>();
        list.Add(query.shipperid.ToString());
        list.Add(query.companyname);
        list.Add(query.phone);

        return list.ToArray();
    }

    [WebMethod]
    public static string Update(string tmpid, string name, string phone)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Shippers
                     where a.shipperid == id
                     select a).First();
        query.companyname = name;
        query.phone = phone;
        context.SaveChanges();
        return "Update successful";
    }

    [WebMethod]
    public static string Search(string name)
    {
        string text = "";
        var query = (from a in context.Shippers
                     where a.companyname.Contains(name)
                     select a);
        foreach (var tmp in query.ToList())
        {
            text += "<tr><td class='center' style='text-align: center;'>" + tmp.shipperid + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.companyname + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.phone + "</td>" +
                               "<td class='center' style='text-align: center;'>" +
                                  "<a class='btn btn-success customBtn' id='" + tmp.shipperid + "' onclick='View(this.id, \"show\")' href='#editField'>" +
                                    "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                    "View" +
                                "</a>" +
                                "<a class='btn btn-info customBtn' id='" + tmp.shipperid + "' onclick='View(this.id, \"edit\" )' href='#editField'>" +
                                    "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                    "Edit" +
                                "</a>" +
                                "<button class='btn btn-danger customBtn'  id='" + tmp.shipperid + "' onclick='Delete(this.id)' >" +
                                    "<i class='glyphicon glyphicon-trash icon-white customBtn'></i>" +
                                    "Delete" +
                                "</button></td>" +
                    "</tr>";
        }
        return text;
    }
}