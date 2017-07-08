using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerForm : System.Web.UI.Page
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

                var query2 = from a in context.Categories select a;
                box2.InnerHtml = "Records: " + query2.ToList().Count;

                var query3 = from a in context.Employees select a;
                box3.InnerHtml = "Records: " + query3.ToList().Count;

                var query4 = from a in context.Shippers select a;
                box4.InnerHtml = "Records: " + query4.ToList().Count;

                var query5 = from a in context.Orders select a;
                box5.InnerHtml = "Records: " + query5.ToList().Count;

                var query6 = from a in context.Products select a;
                box6.InnerHtml = "Records: " + query6.ToList().Count;

                var aQuery = from a in context.Customers select a;

                foreach (var tmp in aQuery.ToList())
                {
                    tmp.phone = tmp.phone.Replace("(", string.Empty);
                    tmp.phone = tmp.phone.Replace(")", string.Empty);
                    tmp.phone = tmp.phone.Replace("-", string.Empty);
                    tmp.phone = tmp.phone.Replace("+", string.Empty);

                    tmp.fax = tmp.fax.Replace("(", string.Empty);
                    tmp.fax = tmp.fax.Replace(")", string.Empty);
                    tmp.fax = tmp.fax.Replace("-", string.Empty);
                    tmp.fax = tmp.fax.Replace("+", string.Empty);
                    tableDiv.InnerHtml += "<tr><td class='center' style='text-align: center;'>" + tmp.custid + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.companyname + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.contactname + "</td>" +
                                       "<td class='center' style='text-align: center;'>" +
                                          "<a class='btn btn-success customBtn' id='" + tmp.custid + "' onclick='View(this.id, \"show\")' href='#editField'>" +
                                            "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                            "View" +
                                        "</a>" +
                                        "<a class='btn btn-info customBtn' id='" + tmp.custid + "' onclick='View(this.id, \"edit\" )' href='#editField'>" +
                                            "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                            "Edit" +
                                        "</a>" +
                                        "<button class='btn btn-danger customBtn'  id='" + tmp.custid + "' onclick='Delete(this.id)' >" +
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
    public static string Add(string company, string contact, string contacttit, string add, string city, string region, string code,
                             string country, string phone, string fax)
    {
        try
        {
            Customer aCustomer = new Customer
            {
                companyname = company,
                contactname = contact,
                contacttitle = contacttit,
                address = add,
                city = city,
                region = region,
                postalcode = code,
                country = country,
                phone = phone,
                fax = fax
            };

            context.Customers.Add(aCustomer);
            context.SaveChanges();
            return "Add successful";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

    [WebMethod]
    public static string Delete(string tmpid)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Customers
                     where a.custid == id
                     select a).First();

        var query2 = from b in context.Orders
                     select new
                     {
                         b.custid
                     };

        foreach (var tmp in query2)
        {
            if (query.custid == tmp.custid)
            {
                return String.Format("The {0} customer is still in use", query.companyname);
            }
        }
        context.Customers.Remove(query);

        context.SaveChanges();

        return "Delete successful";
    }



    [WebMethod]
    public static string[] View(string tmpid)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Customers
                     where a.custid == id
                     select a).First();


        List<string> list = new List<string>();
        list.Add(query.custid.ToString());
        list.Add(query.companyname);
        list.Add(query.contactname);
        list.Add(query.contacttitle);
        list.Add(query.address);
        list.Add(query.city);
        list.Add(query.region);
        list.Add(query.postalcode);
        list.Add(query.country);
        list.Add(query.phone);
        list.Add(query.fax);

        return list.ToArray();
    }

    [WebMethod]
    public static string Update(string tmpid, string company, string contact, string contacttit, string add, string city, string region, string code,
                                string country, string phone, string fax)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Customers
                     where a.custid == id
                     select a).First();
        query.companyname = company;
        query.contactname = contact;
        query.contacttitle = contacttit;
        query.address = add;
        query.city = city;
        query.region = region;
        query.postalcode = code;
        query.country = country;
        query.phone = phone;
        query.fax = fax;
        context.SaveChanges();
        return "Update successful";
    }

    [WebMethod]
    public static string Search(string company)
    {
        string text = "";
        var query = (from a in context.Customers
                     where a.companyname.Contains(company)
                     select a);
        foreach (var tmp in query.ToList())
        {
            text += "<tr><td class='center' style='text-align: center;'>" + tmp.custid + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.companyname + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.contacttitle + "</td>" +
                               "<td class='center' style='text-align: center;'>" +
                                  "<a class='btn btn-success customBtn' id='" + tmp.custid + "' onclick='View(this.id, \"show\")' href='#editField'>" +
                                    "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                    "View" +
                                "</a>" +
                                "<a class='btn btn-info customBtn' id='" + tmp.custid + "' onclick='View(this.id, \"edit\" )' href='#editField'>" +
                                    "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                    "Edit" +
                                "</a>" +
                                "<button class='btn btn-danger customBtn'  id='" + tmp.custid + "' onclick='Delete(this.id)' >" +
                                    "<i class='glyphicon glyphicon-trash icon-white customBtn'></i>" +
                                    "Delete" +
                                "</button></td>" +
                    "</tr>";
        }
        return text;
    }
}