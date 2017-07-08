using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeForm : System.Web.UI.Page
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

                var query3 = from a in context.Categories select a;
                box3.InnerHtml = "Records: " + query3.ToList().Count;

                var query4 = from a in context.Shippers select a;
                box4.InnerHtml = "Records: " + query4.ToList().Count;

                var query5 = from a in context.Orders select a;
                box5.InnerHtml = "Records: " + query5.ToList().Count;

                var query6 = from a in context.Products select a;
                box6.InnerHtml = "Records: " + query6.ToList().Count;

                managervalue.InnerHtml += "<option value='0'></option>";
                managervalue2.InnerHtml += "<option value='0'></option>";

                var aQuery = from a in context.Employees select a;
                foreach (var tmp in aQuery.ToList())
                {
                    managervalue.InnerHtml += "<option value='" + tmp.empid + "'>" + tmp.firstname + "</option>";
                    managervalue2.InnerHtml += "<option value='" + tmp.empid + "'>" + tmp.firstname + "</option>";
                }
                foreach (var tmp in aQuery.ToList())
                {
                    tmp.postalcode = tmp.postalcode.Replace("-", string.Empty);

                    tmp.phone = tmp.phone.Replace("(", string.Empty);
                    tmp.phone = tmp.phone.Replace(") ", string.Empty);
                    tmp.phone = tmp.phone.Replace("-", string.Empty);


                    tableDiv.InnerHtml += "<tr><td class='center' style='text-align: center;'>" + tmp.empid + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.lastname + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.firstname + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.address + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.phone + "</td>" +
                                       "<td class='center' style='text-align: center;'>" +
                                          "<a class='btn btn-success customBtn' id='" + tmp.empid + "' onclick='View(this.id, \"show\")' href='#editField'>" +
                                            "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                            "View" +
                                        "</a>" +
                                        "<a class='btn btn-info customBtn' id='" + tmp.empid + "' onclick='View(this.id, \"edit\" )' href='#editField'>" +
                                            "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                            "Edit" +
                                        "</a>" +
                                        "<button class='btn btn-danger customBtn'  id='" + tmp.empid + "' onclick='Delete(this.id)' >" +
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
    public static string Add(string lastname, string firstname, string title, string titleOfCourtesy, string birthdate, string hiredate, string address, string city, string region, string postalcode, string country, string phone, string manager)
    {
        try
        {
            Employee aEmployee = new Employee()
            {
                lastname = lastname,
                firstname = firstname,
                title = title,
                titleofcourtesy = titleOfCourtesy,
                birthdate = DateTime.Parse(birthdate),
                hiredate = DateTime.Parse(hiredate),
                address = address,
                city = city,
                region = region,
                postalcode = postalcode,
                country = country,
                phone = phone,
                //mgrid = manager
            };
            if (!manager.Equals("0"))
            {
                aEmployee.mgrid = int.Parse(manager);
            }

            context.Employees.Add(aEmployee);
            context.SaveChanges();
            return "Add sưccessful";
        }
        catch (Exception e)
        {
            return "Can't add! Please try again";
        }

    }

    [WebMethod]
    public static string[] View(string tmpid)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Employees
                     where a.empid == id
                     select a).First();


        List<string> list = new List<string>();
        list.Add(query.empid.ToString());
        list.Add(query.lastname);
        list.Add(query.firstname);
        list.Add(query.title);
        list.Add(query.titleofcourtesy);
        list.Add(query.birthdate.ToShortDateString());
        list.Add(query.hiredate.ToShortDateString());
        list.Add(query.address);
        list.Add(query.city);
        list.Add(query.region);
        list.Add(query.postalcode);
        list.Add(query.country);
        list.Add(query.phone);
        if (query.mgrid == null)
        {
            list.Add("0");
        }
        else
        {
            list.Add(query.mgrid.ToString());
        }



        return list.ToArray();
    }

    [WebMethod]
    public static string Delete(string tmpid)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Employees
                     where a.empid == id
                     select a).First();

        var query2 = from b in context.Orders
                     select new
                     {
                         b.empid,
                     };

        foreach (var tmp in query2)
        {
            if (query.empid == tmp.empid)
            {
                return String.Format("The {0} employee is still in use", query.firstname);
            }
        }

        var query3 = from b in context.Employees
                     select new
                     {
                         b.mgrid,
                     };

        foreach (var tmp in query3)
        {
            if (query.empid == tmp.mgrid)
            {
                return String.Format("The {0} employee is still in use", query.firstname);
            }
        }

        context.Employees.Remove(query);

        context.SaveChanges();

        return "Delete successful";
    }

    [WebMethod]
    public static string Update(string empid, string lastname, string firstname, string title, string titleOfCourtesy, string birthdate, string hiredate, string address, string city, string region, string postalcode, string country, string phone, string manager)
    {
        int id = int.Parse(empid);
        Employee query = context.Employees.Find(id);

        query.lastname = lastname;
        query.firstname = firstname;
        query.title = title;
        query.titleofcourtesy = titleOfCourtesy;
        query.birthdate = DateTime.Parse(birthdate.ToString());
        query.hiredate = DateTime.Parse(hiredate.ToString());
        query.address = address;
        query.city = city;
        query.region = region;
        query.postalcode = postalcode;
        query.country = country;
        query.phone = phone;

        if (!manager.Equals("0"))
        {
            query.mgrid = int.Parse(manager);
        }
        else
        {
            query.mgrid = null;
        }


        context.SaveChanges();
        return "Update successful";
    }

    [WebMethod]
    public static string Search(string name)
    {
        string text = "";
        var query = (from a in context.Employees
                     where a.lastname.Contains(name) || a.firstname.Contains(name)
                     select a);
        foreach (var tmp in query.ToList())
        {
            text += "<tr><td class='center' style='text-align: center;'>" + tmp.empid + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.lastname + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.firstname + "</td>" +
                                "<td class='center' style='text-align: center;'>" + tmp.address + "</td>" +
                                "<td class='center' style='text-align: center;'>" + tmp.phone + "</td>" +
                               "<td class='center' style='text-align: center;'>" +
                                  "<a class='btn btn-sm btn-success customBtn' id='" + tmp.empid + "' onclick='View(this.id, \"show\")' href='#editField'>" +
                                    "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                    "View" +
                                "</a>" +
                                "<a class='btn btn-sm btn-info customBtn'  id='" + tmp.empid + "' onclick='View(this.id)' href='#editField'>" +
                                    "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                    "Edit" +
                                "</a>" +
                                "<button class='btn btn-sm btn-danger customBtn'  id='" + tmp.empid + "' onclick='Delete(this.id)' >" +
                                    "<i class='glyphicon glyphicon-trash icon-white customBtn'></i>" +
                                    "Delete" +
                                "</button></td></tr>";
        }

        return text;
    }
}