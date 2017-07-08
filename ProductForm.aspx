<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductForm.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="ProductForm" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <style>
        .overlay:target + .popup {
                    top: 20%;
                    opacity: 1;
                    visibility: visible;
                }
    </style>
    <!--/.sidebar-->
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header" style="margin-top: 15px">Product Form</h2>
        </div>
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col-lg-12">
            <div class="table-wrapper input-group">
                <div align="right" style="margin-top: -16px">
                    <a class="btn btn-md" style="margin-bottom: 3px; background: red; color: white" href="#addField" id="yolo" data-test="testing">New
                            <i class="glyphicon glyphicon-plus" style="margin-left: 3px"></i>
                    </a>
                    <span>
                        <input type="text" class="customBorder" placeholder="Search by name" style="height: 35px;" id="searchBox" maxlength="200">
                        <span>
                            <a class="btn btn-default customBorder2" style="height: 35px;" href="#searchField" onclick="Search()"><i class="glyphicon glyphicon-search"></i></a>
                        </span>
                    </span>
                </div>
                <!-- Khong dung vao cho nay -->


                <table class="table table-bordered table-hover table-responsive" style="table-layout: fixed; word-wrap: break-word; font-size: 16px;">
                    <thead>
                        <tr role="row">
                            <!-- Thay va them cot vao cho nay, muon doi kich thuoc cot thi thay doi gia tri cua width -->
                            <!-- Chi hien 4 cot tuong trung thoi, Edit form moi hien thi het thuoc tinh -->
                            <th style="width: 70px; text-align: center;">Product ID</th>
                            <th style="width: 100px; text-align: center;">Name</th>
                            <th style="width: 100px; text-align: center;">Supplier</th>
                            <th style="width: 100px; text-align: center;">Category</th>
                            <th style="width: 100px; text-align: center;">Unit Price</th>
                            <th style="width: 80px; text-align: center;">Discontinued</th>
                            <th style="width: 150px; text-align: center;">Action</th>

                        </tr>
                    </thead>
                    <tbody runat="server" id="tableDiv">
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--/.row-->

    <!-- Khong dung vao cho nay -->
    <div class="row">
        <div class="col-xs-12 col-md-6 col-lg-4">
            <a href="SupplierForm.aspx">
                <div class="panel panel-widget" style="background: #0A3AD8; color: white;">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">
                            <i class='glyphicon glyphicon-home' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Supplier Form</div>
                            <div class="text-primary" id="box1" runat="server">Records: 10</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-4">
            <a href="CustomerForm.aspx">
                <div class="panel panel-widget" style="background: #EC810E; color: white;">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">
                            <i class='glyphicon glyphicon-user' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Customer Form</div>
                            <div class="text-primary" id="box2" runat="server">Records: 10</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-xs-12 col-md-6 col-lg-4">
            <a href="EmployeeForm.aspx">
                <div class="panel panel-widget" style="background: #E0E714; color: white;">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">
                            <i class='glyphicon glyphicon-briefcase' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Employee Form</div>
                            <div class="text-primary" id="box3" runat="server">Records: 10</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>
    <!--/.row-->

    <!-- Khong dung vao cho nay -->
    <div class="row">
        <div class="col-xs-12 col-md-6 col-lg-4">
            <a href="ShipperForm.aspx">
                <div class="panel panel-widget" style="background: #17A510; color: white;">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">

                            <i class='glyphicon glyphicon-plane' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Shipper Form</div>
                            <div class="text-primary" id="box4" runat="server">Records: 10</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-xs-12 col-md-6 col-lg-4">
            <a href="OrderForm.aspx">
                <div class="panel panel-blue panel-widget ">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">
                            <i class='glyphicon glyphicon-list-alt' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Order Form</div>
                            <div class="text-primary" id="box5" runat="server">Records: 10</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-xs-12 col-md-6 col-lg-4">
            <a href="CatergoryForm.aspx">
                <div class="panel panel-red panel-widget">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">

                            <i class='glyphicon glyphicon-tags' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Category Form</div>
                            <div class="text-primary" id="box6" runat="server">Records: 10</div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>
    <!--/.row-->

    <!-- Add Form -->
    <a href="#x" id="addField" class="overlay"></a>
    <div class="popup">
        <form onsubmit="return false">

            <!-- Copy cai div nay, sua ten de them 1 field moi-->
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" required="true" maxlength="15" id="name" /><!-- nho sua ten id de dung trong ajax-->
            </div>


            <div class="form-group">
                <label for="supplier">Supplier:</label>
                <select id="supplier" style="width: 80px;">
                    <div id="supvalue" runat="server"></div>
                </select>
            </div>


            <div class="form-group">
                <label for="category">Category:</label>
                <select id="category" style="width: 80px;">
                    <div id="categoryvalue" runat="server"></div>
                </select>
            </div>

            <div class="form-group">
                <label for="price">Price:</label>
                <input type="text" class="form-control" required="true" maxlength="15" id="price" /><!-- nho sua ten id de dung trong ajax-->
            </div>

            <div class="form-group">
                <label for="price">Discontinued:</label>
                <input type="checkbox" value="discontinued" id="discontinued" /><!-- nho sua ten id de dung trong ajax-->
            </div>


            <div class="form-group">
                <label for="img">Image:</label>
                <input type="text" class="form-control" maxlength="100" id="img" />

            </div>

            <button type="submit" class="btn btn-primary" onclick="Add()">Add</button>
        </form>
    </div>

    <!-- Edit Form, hien thi full cac thuoc tinh cua row -->
    <a href="#x" id="editField" class="overlay"></a>
    <div class="popup">
        <form onsubmit="return false">

            <!-- Copy cai div nay, sua ten de them 1 field moi-->
            <div class="form-group">
                <label for="id2">ID:</label>
                <input type="text" class="form-control" readonly="readonly" id="id2" /><!-- nho sua ten id de dung trong ajax-->

            </div>


            <div class="form-group">
                <label for="name2">Name:</label>
                <input type="text" class="form-control" required="true" maxlength="15" id="name2" /><!-- nho sua ten id de dung trong ajax-->
            </div>


            <div class="form-group">
                <label for="supplier2">Supplier:</label>
                <select id="supplier2" style="width: 80px;">
                    <div id="supvalue2" runat="server"></div>
                </select>
            </div>


            <div class="form-group">
                <label for="category2">Category:</label>
                <select id="category2" style="width: 80px;">
                    <div id="categoryvalue2" runat="server"></div>
                </select>
            </div>

            <div class="form-group">
                <label for="price2">Price:</label>
                <input type="text" class="form-control" required="true" maxlength="15" id="price2" /><!-- nho sua ten id de dung trong ajax-->
            </div>

            <div class="form-group">
                <label for="discontinued2">Discontinued:</label>
                <input type="checkbox" value="discontinued" id="discontinued2" /><!-- nho sua ten id de dung trong ajax-->
            </div>


            <div class="form-group">
                <label for="img2">Image:</label>
                <input type="text" class="form-control" maxlength="100" id="img2" />

            </div>

            <button type="submit" class="btn btn-success" onclick="Update('edit')" id="saveBtn">Next</button>
        </form>
    </div>

    <!-- Search Form -->
    <a href="#x" id="searchField" class="overlay"></a>
    <div class="popup" style="width: 1100px">
        <table class="table table-bordered table-hover table-responsive" style="table-layout: fixed; word-wrap: break-word; font-size: 16px;">
            <thead>
                <tr role="row">
                    <!-- Thay ten cot vao cho nay, muon doi kich thuoc cot thi thay doi gia tri cua width -->
                    <th style="width: 70px; text-align: center;">Product ID</th>
                    <th style="width: 100px; text-align: center;">Name</th>
                    <th style="width: 100px; text-align: center;">Supplier</th>
                    <th style="width: 100px; text-align: center;">Category</th>
                    <th style="width: 80px; text-align: center;">Unit Price</th>
                    <th style="width: 90px; text-align: center;">Discontinued</th>
                    <th style="width: 180px; text-align: center;">Action</th>
                </tr>
            </thead>
            <tbody id="searchDiv">
            </tbody>
        </table>
    </div>
    <!--/.main-->

    <!-- Code cho o nhap ngay thang -->
    <%--
        <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd/mm/yyyy">
        <input type="text" class="form-control" placeholder="Date" readonly="readonly">
        <div class="input-group-addon">
            <i class="glyphicon glyphicon-calendar"></i>
        </div>
        </div>
    --%>

    <script src="resources/js/jquery-1.11.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-datepicker.js"></script>
    <script>
        $(document).ready(function () {
            $("#productForm").attr("class", "active");
        });

        function Add() {
            //lay gia tri nhap vao cua 1 input dua vao id cua no
            var name = $("#name").val();
            var supplier = $('select[id=supplier] option:selected').val();
            var category = $('select[id=category] option:selected').val();
            var discontinued = $("#discontinued").is(':checked');
            var price = $("#price").val();
            var img = $("#img").val();
            var valid = /^[0-9]+([.][0-9]+)*$/.test(price);

            if (!valid) {
                alert("Price input is only digit allowed! ");
                return;
            }

            if (name === "") {
                
                return;
            } else {
                $.ajax({
                    type: "POST",
                    url: "ProductForm.aspx/Add",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    //data: '{paramBenBackend:"' + bienKhaiBaoBenTren + '",des:"' + des + '"}'
                    data: '{name:"' + name + '",supplier:"' + supplier + '",category:"' + category + '",discontinued:"' + discontinued + '",price:"' + price + '",img:"' + img + '"}',
                    success: function (msg) {
                        alert(msg.d);
                        window.location = "ProductForm.aspx"; //nho doi ten cho nay
                    }
                });
            }
        }

        function Delete(id) {
            $.ajax({
                type: "POST",
                url: "ProductForm.aspx/Delete",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '"}',
                success: function (msg) {
                    alert(msg.d);
                    window.location = "ProductForm.aspx";
                }
            });
        }

        function View(id, choice) {
            $.ajax({
                type: "POST",
                url: "ProductForm.aspx/View",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '"}',
                success: function (response) {
                    var result = response.d;

                    $("#id2").val(result[0]);
                    $("#name2").val(result[1]);
                    $("#supplier2").val(result[2]);
                    $("#category2").val(result[3]);
                    $("#price2").val(result[4]);
                    $('#discontinued2').prop('checked', result[5]==="True");
                    $("#img2").val(result[6]);

                    if (choice === 'show') {
                        $("#name2").attr('readonly', 'true');
                        $("#supplier2").attr('disabled', 'disabled');
                        $("#category2").attr('disabled', 'disabled');
                        $("#price2").attr('readonly', 'true');
                        $("#img2").attr('readonly', 'true');
                        $("#discontinued2").attr('disabled', 'disabled');
                        $("#saveBtn").attr('onclick', 'Update(\'show\')');
                    } else {
                        $("#name2").removeAttr("readonly");
                        $("#supplier2").removeAttr('disabled');
                        $("#category2").removeAttr('disabled');
                        $("#price2").removeAttr('readonly');
                        $("#img2").removeAttr('readonly');
                        $("#discontinued2").removeAttr('disabled');
                        $("#description2").removeAttr("readonly");
                        $("#saveBtn").attr('onclick', 'Update(\'edit\')');;
                    }
                }
            });
        }

        function Update(choice) {
            var id = $("#id2").val();
            var name = $("#name2").val();
            var supplier = $('select[id=supplier2] option:selected').val();
            var category = $('select[id=category2] option:selected').val();
            var discontinued = $("#discontinued2").is(':checked');
            var price = $("#price2").val();
            var img = $("#img2").val();
            var valid = /^[0-9]+([.][0-9]+)*$/.test(price);

            if (!valid) {
                alert("Price input is only digit allowed! ");
                return;
            }

            //Validate
            if (name === "") {
                return;
            } else {
                $.ajax({
                    type: "POST",
                    url: "ProductForm.aspx/Update",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: '{tmpid:"' + id + '",name:"' + name + '",supplier:"' + supplier + '",category:"' + category + '",discontinued:"' + discontinued + '",price:"' + price + '",img:"' + img + '"}', success: function (msg) {
                        if (choice === 'edit') {
                            alert(msg.d);
                        }

                        window.location = "ProductForm.aspx";
                    }
                });
            }
        }


        function Search() {
            var name = $("#searchBox").val();
            $.ajax({
                type: "POST",
                url: "ProductForm.aspx/Search",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{name:"' + name + '"}',
                success: function (msg) {
                    $("#searchDiv").html(msg.d);
                }
            });

        }
    </script>
</asp:Content>
