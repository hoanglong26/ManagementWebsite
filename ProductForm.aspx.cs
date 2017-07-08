using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductForm : System.Web.UI.Page
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
                foreach (var tmp in query.ToList())
                {
                    supvalue.InnerHtml += "<option value='" + tmp.supplierid + "'>" + tmp.companyname + "</option>";
                    supvalue2.InnerHtml += "<option value='" + tmp.supplierid + "'>" + tmp.companyname + "</option>";

                }


                var query2 = from a in context.Customers select a;
                box2.InnerHtml = "Records: " + query2.ToList().Count;

                var query3 = from a in context.Employees select a;
                box3.InnerHtml = "Records: " + query3.ToList().Count;

                var query4 = from a in context.Shippers select a;
                box4.InnerHtml = "Records: " + query4.ToList().Count;

                var query5 = from a in context.Orders select a;
                box5.InnerHtml = "Records: " + query5.ToList().Count;

                var query6 = from a in context.Categories select a;
                box6.InnerHtml = "Records: " + query6.ToList().Count;

                foreach (var tmp in query6.ToList())
                {
                    categoryvalue.InnerHtml += "<option value='" + tmp.categoryid + "'>" + tmp.categoryname + "</option>";
                    categoryvalue2.InnerHtml += "<option value='" + tmp.categoryid + "'>" + tmp.categoryname + "</option>";
                }



                var aQuery = from a in context.Products select a;

                foreach (var tmp in aQuery.ToList())
                {
                    tableDiv.InnerHtml += "<tr><td class='center' style='text-align: center;'>" + tmp.productid + "</td>" +
                                          "<td class='center' style='text-align: center;'>" + tmp.productname + "</td>" +
                                          "<td class='center' style='text-align: center;'>" + tmp.Supplier.companyname +
                                          "</td>" +
                                          "<td class='center' style='text-align: center;'>" + tmp.Category.categoryname +
                                          "</td>" +
                                          "<td class='center' style='text-align: center;'>" +
                                          String.Format("{0:0.#####}", tmp.unitprice) + "</td>" +
                                          "<td class='center' style='text-align: center;'>" + tmp.discontinued + "</td>" +
                                          "<td class='center' style='text-align: center;'>" +
                                          "<a class='btn btn-sm btn-success customBtn' id='" + tmp.productid +
                                          "' onclick='View(this.id, \"show\")' href='#editField'>" +
                                          "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                          "View" +
                                          "</a>" +
                                          "<a class='btn btn-sm btn-info customBtn'  id='" + tmp.productid +
                                          "' onclick='View(this.id)' href='#editField'>" +
                                          "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                          "Edit" +
                                          "</a>" +
                                          "<button class='btn btn-sm btn-danger customBtn'  id='" + tmp.productid +
                                          "' onclick='Delete(this.id)' >" +
                                          "<i class='glyphicon glyphicon-trash icon-white customBtn'></i>" +
                                          "Delete" +
                                          "</button></td></tr>";


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
    public static string Add(string name, int supplier, int category, bool discontinued, double price, string img)
    {
        Product aProduct = new Product()
        {
            productname = name,
            supplierid = supplier,
            categoryid = category,
            discontinued = discontinued,
            unitprice = decimal.Parse(price.ToString()),
        };

        if (img.Equals(""))
        {
            aProduct.img = null;
        }
        else
        {
            aProduct.img = img;
        }

        context.Products.Add(aProduct);
        context.SaveChanges();
        return "Add successful";
    }

    [WebMethod]
    public static string Delete(string tmpid)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Products
                     where a.productid == id
                     select a).First();

        context.Products.Remove(query);

        context.SaveChanges();

        return "Delete successful";
    }



    [WebMethod]
    public static string[] View(string tmpid)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Products
                     where a.productid == id
                     select a).First();


        List<string> list = new List<string>();
        list.Add(query.productid.ToString());
        list.Add(query.productname);
        list.Add(query.supplierid.ToString());
        list.Add(query.categoryid.ToString());
        list.Add(String.Format("{0:0.#####}", query.unitprice));
        list.Add(query.discontinued.ToString());
        list.Add(query.img);


        return list.ToArray();
    }

    [WebMethod]
    public static string Update(string tmpid, string name, int supplier, int category, bool discontinued, double price, string img)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Products
                     where a.productid == id
                     select a).First();

        query.productname = name;
        query.supplierid = supplier;
        query.categoryid = category;
        query.discontinued = discontinued;
        query.unitprice = decimal.Parse(price.ToString());

        if (img.Equals(""))
        {
            query.img = null;
        }
        else
        {
            query.img = img;
        }

        context.SaveChanges();
        return "Update sưccessful";
    }

    [WebMethod]
    public static string Search(string name)
    {
        try
        {
            string text = "";

            var query = (from a in context.Products
                         where a.productname.Contains(name)
                         select a);
            foreach (var tmp in query.ToList())
            {
                text += "<tr><td class='center' style='text-align: center;'>" + tmp.productid + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.productname + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.Supplier.companyname + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.Category.categoryname + "</td>" +
                                "<td class='center' style='text-align: center;'>" + String.Format("{0:0.#####}", tmp.unitprice) + "</td>" +
                                "<td class='center' style='text-align: center;'>" + tmp.discontinued + "</td>" +
                               "<td class='center' style='text-align: center;'>" +
                                  "<a class='btn btn-sm btn-success customBtn' id='" + tmp.productid + "' onclick='View(this.id, \"show\")' href='#editField'>" +
                                    "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                    "View" +
                                "</a>" +
                                "<a class='btn btn-sm btn-info customBtn'  id='" + tmp.productid + "' onclick='View(this.id)' href='#editField'>" +
                                    "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                    "Edit" +
                                "</a>" +
                                "<button class='btn btn-sm btn-danger customBtn'  id='" + tmp.productid + "' onclick='Delete(this.id)' >" +
                                    "<i class='glyphicon glyphicon-trash icon-white customBtn'></i>" +
                                    "Delete" +
                                "</button></td></tr>";
            }


            return text;
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }
}