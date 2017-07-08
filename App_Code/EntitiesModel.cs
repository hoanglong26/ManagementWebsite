﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Category
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Category()
    {
        this.Products = new HashSet<Product>();
    }

    public int categoryid { get; set; }
    public string categoryname { get; set; }
    public string description { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Product> Products { get; set; }
}

public partial class Customer
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Customer()
    {
        this.Orders = new HashSet<Order>();
    }

    public int custid { get; set; }
    public string companyname { get; set; }
    public string contactname { get; set; }
    public string contacttitle { get; set; }
    public string address { get; set; }
    public string city { get; set; }
    public string region { get; set; }
    public string postalcode { get; set; }
    public string country { get; set; }
    public string phone { get; set; }
    public string fax { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Order> Orders { get; set; }
}

public partial class Employee
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Employee()
    {
        this.Employees1 = new HashSet<Employee>();
        this.Orders = new HashSet<Order>();
    }

    public int empid { get; set; }
    public string lastname { get; set; }
    public string firstname { get; set; }
    public string title { get; set; }
    public string titleofcourtesy { get; set; }
    public System.DateTime birthdate { get; set; }
    public System.DateTime hiredate { get; set; }
    public string address { get; set; }
    public string city { get; set; }
    public string region { get; set; }
    public string postalcode { get; set; }
    public string country { get; set; }
    public string phone { get; set; }
    public Nullable<int> mgrid { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Employee> Employees1 { get; set; }
    public virtual Employee Employee1 { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Order> Orders { get; set; }
}

public partial class Order
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Order()
    {
        this.OrderDetails = new HashSet<OrderDetail>();
    }

    public int orderid { get; set; }
    public Nullable<int> custid { get; set; }
    public int empid { get; set; }
    public System.DateTime orderdate { get; set; }
    public System.DateTime requireddate { get; set; }
    public Nullable<System.DateTime> shippeddate { get; set; }
    public int shipperid { get; set; }
    public decimal freight { get; set; }
    public string shipname { get; set; }
    public string shipaddress { get; set; }
    public string shipcity { get; set; }
    public string shipregion { get; set; }
    public string shippostalcode { get; set; }
    public string shipcountry { get; set; }

    public virtual Employee Employee { get; set; }
    public virtual Customer Customer { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    public virtual Shipper Shipper { get; set; }
}

public partial class OrderDetail
{
    public int orderid { get; set; }
    public int productid { get; set; }
    public decimal unitprice { get; set; }
    public short qty { get; set; }
    public decimal discount { get; set; }

    public virtual Product Product { get; set; }
    public virtual Order Order { get; set; }
}

public partial class Product
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Product()
    {
        this.OrderDetails = new HashSet<OrderDetail>();
    }

    public int productid { get; set; }
    public string productname { get; set; }
    public int supplierid { get; set; }
    public int categoryid { get; set; }
    public decimal unitprice { get; set; }
    public bool discontinued { get; set; }
    public string img { get; set; }

    public virtual Category Category { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    public virtual Supplier Supplier { get; set; }
}

public partial class Shipper
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Shipper()
    {
        this.Orders = new HashSet<Order>();
    }

    public int shipperid { get; set; }
    public string companyname { get; set; }
    public string phone { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Order> Orders { get; set; }
}

public partial class Supplier
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Supplier()
    {
        this.Products = new HashSet<Product>();
    }

    public int supplierid { get; set; }
    public string companyname { get; set; }
    public string contactname { get; set; }
    public string contacttitle { get; set; }
    public string address { get; set; }
    public string city { get; set; }
    public string region { get; set; }
    public string postalcode { get; set; }
    public string country { get; set; }
    public string phone { get; set; }
    public string fax { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Product> Products { get; set; }
}
