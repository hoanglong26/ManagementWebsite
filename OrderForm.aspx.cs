using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderForm : System.Web.UI.Page
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

                var query4 = from a in context.Shippers select a;
                box4.InnerHtml = "Records: " + query4.ToList().Count;

                var query5 = from a in context.Categories select a;
                box5.InnerHtml = "Records: " + query5.ToList().Count;

                var query6 = from a in context.Products select a;
                box6.InnerHtml = "Records: " + query6.ToList().Count;



                foreach (var tmp in query2)
                {
                    customerValue.InnerHtml += "<option value='" + tmp.custid + "'>" + tmp.contactname + "</option>";
                    customerValue2.InnerHtml += "<option value='" + tmp.custid + "'>" + tmp.contactname + "</option>";
                    //categoryvalue2.InnerHtml += "<option value='" + tmp.categoryid + "'>" + tmp.categoryname + "</option>";
                }
                foreach (var tmp in query3)
                {
                    employeeValue.InnerHtml += "<option value='" + tmp.empid + "'>" + tmp.firstname + "</option>";
                    employeeValue2.InnerHtml += "<option value='" + tmp.empid + "'>" + tmp.firstname + "</option>";
                }
                foreach (var tmp in query4)
                {
                    shipperValue.InnerHtml += "<option value='" + tmp.shipperid + "'>" + tmp.companyname + "</option>";
                    shipperValue2.InnerHtml += "<option value='" + tmp.shipperid + "'>" + tmp.companyname + "</option>";
                }
                foreach (var tmp in query6)
                {
                    productValue.InnerHtml += "<option value='" + tmp.productid + "'>" + tmp.productname + "</option>";
                    //productValue2.InnerHtml += "<option value='" + tmp.productid + "'>" + tmp.productname + "</option>";
                }
                var aQuery = from a in context.Orders select a;

                foreach (var tmp in aQuery.ToList())
                {
                    tableDiv.InnerHtml += "<tr><td class='center' style='text-align: center;'>" + tmp.orderid + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.shipname + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.Customer.contactname + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.Employee.firstname + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.orderdate.ToShortDateString() + "</td>" +
                                       "<td class='center' style='text-align: center;'>" + tmp.requireddate.ToShortDateString() + "</td>" +
                                       "<td class='center' style='text-align: center;'>" +
                                          "<a class='btn btn-success customBtn' id='" + tmp.orderid + "' onclick='View(this.id, \"show\")' href='#editField'>" +
                                            "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                            "View" +
                                        "</a>" +
                                        "<a class='btn btn-info customBtn' id='" + tmp.orderid + "' onclick='View(this.id, \"edit\" )' href='#editField'>" +
                                            "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                            "Edit" +
                                        "</a>" +
                                        "<a class='btn btn-success customBtn' id='" + tmp.orderid + "' onclick='ViewOrderDetails(this.id)' href='#viewOrderDetailsField'>" +
                                            "<i class='glyphicon glyphicon-zoom-in icon-white customBtn'></i>" +
                                            "Order Details" +
                                        "</button>" +
                                        "</a>" +
                                        "<button class='btn btn-danger customBtn'  id='" + tmp.orderid + "' onclick='Delete(this.id)' >" +
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
    public static string Add(int customer, int employee,
        int shipper, string orderDate, string requiredDate, string shippedDate,
        string freight, string name, string address, string city, string postalcode,
        string region, string country)
    {
        //DateTime curdate = DateTime.Now;
        //DateTime orderdate = DateTime.Parse(orderDate);
        //DateTime requireddate = DateTime.Parse(orderDate);
        //DateTime shippeddate = DateTime.Parse(orderDate);
        //if (requireddate < orderdate)
        //{
        //    return "Required date must be more than equal order date";
        //}
        //if (shippedDate.Length > 0)
        //{
        //    if (shippeddate < orderdate)
        //    {
        //        return "Shipped date must be more than equal order date";
        //    }
        //}

        Order order = new Order();

        order.custid = customer;
        order.empid = employee;
        order.shipperid = shipper;
        order.orderdate = DateTime.Parse(orderDate);
        order.requireddate = DateTime.Parse(requiredDate);
        if (shippedDate.Length > 0)
        {
            order.shippeddate = DateTime.Parse(shippedDate);
        }
        order.freight = decimal.Parse(freight);
        order.shipname = name;
        order.shipaddress = address;
        order.shipcity = city;
        order.shippostalcode = postalcode;
        order.shipregion = region;
        order.shipcountry = country;
        context.Orders.Add(order);
        context.SaveChanges();
        //}
        //catch (Exception e)
        //{

        //    return e.Message;
        //}
        return "Add successful";
    }

    //static bool CheckKey(int id)
    //{
    //    bool isDuplicate = false;
    //    var query = from orderDetails in context.OrderDetails
    //                where orderDetails.orderid == id
    //                select orderDetails.productid;
    //    if (query.ToList().Count <= 0)
    //    {
    //        isDuplicate = false;
    //    }
    //    else
    //    {
    //        foreach (var item in query)
    //        {
    //            if (item == id)
    //            {
    //                isDuplicate = true;
    //            }
    //        }
    //    }
    //    return isDuplicate;
    //}

    [WebMethod]
    public static string AddOrderDetails(int id, int product, string unitprice, string quantity, string discount)
    {
        string error = "Sorry product name exist please try another product.";
        var query = from orderDetails in context.OrderDetails
                    where orderDetails.orderid == id
                    select orderDetails.productid;
        if (query.ToList().Count <= 0)
        {
            return error;
        }
        else
        {
            foreach (var item in query)
            {
                if (item == product)
                {
                    return error;
                }
                //else
                //{
                //    isDuplicate = false;
                //}
            }
        }

        //if (isDuplicate == false)
        //{

        OrderDetail od = new OrderDetail();
        od.orderid = id;
        od.productid = product;
        od.unitprice = decimal.Parse(unitprice);
        od.qty = short.Parse(quantity);
        od.discount = decimal.Parse(discount);
        context.OrderDetails.Add(od);
        context.SaveChanges();
        //}
        //else
        //{
        //    return "Sorry product name exist please try another product";
        //}
        return "Add successful!";
    }

    [WebMethod]
    public static string Delete(string tmpid)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Orders
                     where a.orderid == id
                     select a).First();
        var queryOrderDetails = from a in context.OrderDetails
                                where a.orderid == id
                                select a;
        if (queryOrderDetails.ToList().Count > 0)
        {
            return "Need delete order details before delete order";
        }
        else
        {
            context.Orders.Remove(query);
        }
        context.SaveChanges();

        return "Delete successful";
    }

    [WebMethod]
    public static string DeleteOrderDetails(string orderId, string productId)
    {
        int orderid = int.Parse(orderId);
        int productid = int.Parse(productId);
        var query = (from a in context.OrderDetails
                     where a.orderid == orderid && a.productid == productid
                     select a).First();
        context.OrderDetails.Remove(query);
        context.SaveChanges();

        return "Delete successful";
    }

    [WebMethod]
    public static string[] View(string tmpid)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Orders
                     where a.orderid == id
                     select a).First();


        List<string> list = new List<string>();
        list.Add(id + "");
        list.Add(query.custid.ToString());
        list.Add(query.empid.ToString());
        list.Add(query.shipperid.ToString());
        list.Add(query.orderdate.ToShortDateString());
        list.Add(query.requireddate.ToShortDateString());
        if (query.shippeddate != null)
        {
            list.Add(query.shippeddate.Value.ToShortDateString());
        }
        else
        {
            list.Add("");
        }

        list.Add(String.Format("{0:0.#####}", query.freight));
        list.Add(query.shipname);
        list.Add(query.shipaddress);
        list.Add(query.shipcity);
        list.Add(query.shippostalcode);
        list.Add(query.shipregion);
        list.Add(query.shipcountry);

        return list.ToArray();
    }



    [WebMethod]
    public static string Update(string tmpid, int customer, int employee,
        int shipper, string orderDate, string requiredDate, string shippedDate,
        string freight, string name, string address, string city, string postalcode,
        string region, string country)
    {
        int id = int.Parse(tmpid);
        var query = (from a in context.Orders
                     where a.orderid == id
                     select a).First();
        query.custid = customer;
        query.empid = employee;
        query.shipperid = shipper;
        query.orderdate = DateTime.Parse(orderDate);
        query.requireddate = DateTime.Parse(requiredDate);
        query.shippeddate = DateTime.Parse(shippedDate);
        query.freight = decimal.Parse(freight);
        query.shipname = name;
        query.shipaddress = address;
        query.shipcity = city;
        query.shippostalcode = postalcode;
        query.shipregion = region;
        query.shipcountry = country;
        context.SaveChanges();
        return "Update successful";
    }

    [WebMethod]
    public static string[] SetFields(string orderId, string productId)
    {
        int oId = int.Parse(orderId);
        int pId = int.Parse(productId);
        var query = (from a in context.OrderDetails
                     where a.orderid == oId && a.productid == pId
                     select a).First();

        List<string> list = new List<string>();
        list.Add(orderId);
        list.Add(productId);
        list.Add(query.unitprice.ToString());
        list.Add(query.qty.ToString());
        list.Add(query.discount.ToString());
        return list.ToArray();
    }
    [WebMethod]
    public static string Edit(string orderId, string productId, string quantity, string unitprice, string discount)
    {
        int oId = int.Parse(orderId);
        int pId = int.Parse(productId);
        var query = (from a in context.OrderDetails
                     where a.orderid == oId && a.productid == pId
                     select a).First();
        query.unitprice = decimal.Parse(unitprice);
        query.qty = short.Parse(quantity);
        query.discount = decimal.Parse(discount);
        context.SaveChanges();
        return "Update successful";
    }

    [WebMethod]
    public static string Search(string name)
    {
        string text = "";
        var query = from a in context.Orders
                    where a.shipname.Contains(name)
                    select a;
        if (query.ToList().Count > 0)
        {
            foreach (var tmp in query)
            {
                text += "<tr><td class='center' style='text-align: center;'>" + tmp.orderid + "</td>" +
                                   "<td class='center' style='text-align: center;'>" + tmp.shipname + "</td>" +
                                   "<td class='center' style='text-align: center;'>" + tmp.Customer.contactname + "</td>" +
                                   "<td class='center' style='text-align: center;'>" + tmp.Employee.firstname + "</td>" +
                                   "<td class='center' style='text-align: center;'>" + tmp.orderdate.ToShortDateString() + "</td>" +
                                   "<td class='center' style='text-align: center;'>" + tmp.requireddate.ToShortDateString() + "</td>" +
                                   "<td class='center' style='text-align: center;'>" +
                                      "<a class='btn btn-success customBtn' id='" + tmp.orderid + "' onclick='View(this.id, \"show\")' href='#editField'>" +
                                        "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                        "View" +
                                    "</a>" +
                                    "<a class='btn btn-info customBtn' id='" + tmp.orderid + "' onclick='View(this.id, \"edit\" )' href='#editField'>" +
                                        "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                        "Edit" +
                                    "</a>" +
                                    "<a class='btn btn-success customBtn' id='" + tmp.orderid + "' onclick='ViewOrderDetails(this.id)' href='#viewOrderDetailsField'>" +
                                    "<i class='glyphicon glyphicon-zoom-in icon-white customBtn'></i>" +
                                    "Order Details" +
                                "</button>" +
                                "</a>" +
                                    "<button class='btn btn-danger customBtn'  id='" + tmp.orderid + "' onclick='Delete(this.id)' >" +
                                        "<i class='glyphicon glyphicon-trash icon-white customBtn'></i>" +
                                        "Delete" +
                                    "</button>" +
                                    "</td>" +
                        "</tr>";
            }

        }
        else
        {
            //text += "<tr><td>Sorry can't find. Please try another ship name<td></tr>";
        }
        return text;
    }

    [WebMethod]
    public static string ViewOrderDetails(string idStr)
    {
        int id = int.Parse(idStr);
        string text = "";
        //text += "< a class='btn btn-md' style='margin-bottom: 5px; background: red; color: white' href='#addField2' id='" + id + "' data-test='testing'>New" +
        //                     "<i class='glyphicon icon-plus icon-white'></i>" +
        //"</a>" +
        //"<table class='table table-bordered table-hover table-responsive' style='table-layout: fixed; word-wrap: break-word; font-size: 16px;'>" +
        //    "<thead>" +
        //        "<tr role = 'row' >" +
        //            "< th style='width: 20px; text-align: center;'>ID</th>" +
        //            "<th style = 'width: 65px; text-align: center;' > Product </ th >" +
        //            "< th style = 'width: 65px; text-align: center;'>Unit price</th>" +
        //            "<th style = 'width: 65px; text-align: center;'> Quantity </ th >" +
        //             "< th style= 'width: 65px; text-align: center;' > Discount </ th >" +
        //             "< th style= 'width: 200px; text-align: center;' > Action </ th >" +
        //         "</ tr >" +
        //     "</ thead >";
        text += "<input type='hidden' id='idOrder' value='" + id + "'>";

        var query = from a in context.OrderDetails
                    where a.orderid == id
                    select a;
        ////if (query.ToList().Count > 0)
        ////{
        foreach (var tmp in query)
        {
            text +=
                //"<tbody>" +
                "<tr><td class='center' style='text-align: center; '>" + tmp.orderid + "</td>" +

                               "<td class='center' style='text-align: center;'>" + tmp.Product.productname + "</td>" +
                               "<td class='center' style='text-align: center;'>" + String.Format("{0:0.#####}", tmp.unitprice) + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.qty + "</td>" +
                               "<td class='center' style='text-align: center;'>" + tmp.discount + "</td>" +
                               "<td class='center' style='text-align: center;'>" +
                                //  "<a class='btn btn-success customBtn' orderId='" + tmp.orderid + "' productId='" + tmp.productid + "' onclick='View(this.orderId, this.productId, \"show\")' href='#editField2'>" +
                                //    "<i class='glyphicon glyphicon-zoom-in icon-white'></i>" +
                                //    "View" +
                                //"</a>" +
                                "<a class='btn btn-info customBtn' id='" + tmp.orderid + "'name='" + tmp.productid + "' onclick='SetField(this.id, this.name)' href='#editField2'>" +
                                    "<i class='glyphicon glyphicon-edit icon-white'></i>" +
                                    "Edit" +
                                "</a>" +
                                "<button class='btn btn-danger customBtn'  id='" + tmp.orderid + "'name='" + tmp.productid + "' onclick='DeleteOrderDetails(this.id, this.name)' >" +
                                    "<i class='glyphicon glyphicon-trash icon-white customBtn'></i>" +
                                    "Delete" +
                                "</button>" +
                                "</td>" +
                    "</tr>";
            //"</ tbody >";
        }
        //text += "</ table >";
        //}
        //else
        //{
        //    text += "Sorry order details hasn't. Please new order details.";
        //}
        return text;
    }
}