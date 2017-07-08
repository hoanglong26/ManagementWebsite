<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShipperForm.aspx.cs"  MasterPageFile="~/MasterPage.master" Inherits="SupplierForm" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!--/.sidebar-->
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header" style="margin-top: 15px">Shipper Form</h2>
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
                            <th style="width: 100px; text-align: center;">Shipper ID</th>
                            <th style="width: 100px; text-align: center;">Company Name</th>
                            <th style="width: 100px; text-align: center;">Company Phone</th>
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
            <a href="CatergoryForm.aspx">
                <div class="panel panel-widget" style="background: #17A510; color: white;">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">

                            <i class='glyphicon glyphicon-bookmark' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Category Form</div>
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
            <a href="ProductForm.aspx">
                <div class="panel panel-red panel-widget">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">

                            <i class='glyphicon glyphicon-tags' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Product Form</div>
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
                <label for="companyName">Company Name:</label>
                <input type="text" class="form-control" required="true" maxlength="40" id="companyName" /><!-- nho sua ten id de dung trong ajax-->

            </div>


            <div class="form-group">
                <label for="CompanyPhone">Company Phone:</label>
                <input type="text" class="form-control" required="true" maxlength="24" id="companyPhone" />
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
                <label for="companyID">ID:</label>
                <input type="text" class="form-control" readonly="readonly" id="vComID" /><!-- nho sua ten id de dung trong ajax-->

            </div>
            

            <div class="form-group">
                <label for="companyName">Company Name:</label>
                <input type="text" class="form-control" required="true" maxlength="40" id="vComName" />

            </div>

            <div class="form-group">
                <label for="companyPhone">Phone:</label>
                <input type="text" class="form-control" required="true" maxlength="24" id="vComPhone" />
            </div>

            <button type="submit" class="btn btn-success" onclick="Update('edit')" id="saveBtn">Ok</button>
        </form>
    </div>

    <!-- Search Form -->
    <a href="#x" id="searchField" class="overlay"></a>
    <div class="popup" style="width: 1000px">
        <table class="table table-bordered table-hover table-responsive" style="table-layout: fixed; word-wrap: break-word; font-size: 16px;">
            <thead>
                <tr role="row">
                    <!-- Thay ten cot vao cho nay, muon doi kich thuoc cot thi thay doi gia tri cua width -->
                    <th style="width: 100px; text-align: center;">Shipper ID</th>
                    <th style="width: 100px; text-align: center;">Company Name</th>
                    <th style="width: 100px; text-align: center;">Company Phone</th>
                    <th style="width: 150px; text-align: center;">Action</th>
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
            $("#shipperForm").attr("class", "active");
        });

        function Add() {
            //lay gia tri nhap vao cua 1 input dua vao id cua no
            var name = $("#companyName").val();
            var phone = $("#companyPhone").val();

            var valid2 = /^[0-9]{12}$/.test(phone);

            if (!valid2) {
                alert("Phone must be 12 digits! ");
                return;
            }

            //Validate
            if (name === "" || phone === "") {
                return;
            } else {
                $.ajax({
                    type: "POST",
                    url: "ShipperForm.aspx/Add",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    //data: '{paramBenBackend:"' + bienKhaiBaoBenTren + '",des:"' + des + '"}'
                    data: '{name:"' + name + '",phone:"' + phone + '"}',
                    success: function (msg) {
                        alert(msg.d);
                        window.location = "ShipperForm.aspx"; //nho doi ten cho nay
                    }
                });
            }
        }

        function Delete(id) {
            $.ajax({
                type: "POST",
                url: "ShipperForm.aspx/Delete",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '"}',
                success: function (msg) {
                    alert(msg.d);
                    window.location = "ShipperForm.aspx";
                }
            });
        }

        function View(id, choice) {
            $.ajax({
                type: "POST",
                url: "ShipperForm.aspx/View",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '"}',
                success: function (response) {
                    var result = response.d;

                    $("#vComID").val(result[0]);
                    $("#vComName").val(result[1]);
                    $("#vComPhone").val(result[2]);

                    if (choice === 'show') {
                        $("#vComName").attr('readonly', 'true');
                        $("#vComPhone").attr('readonly', 'true');
                        $("#saveBtn").attr('onclick', 'Update(\'show\')');
                    } else {
                        $("#vComName").removeAttr("readonly");
                        $("#vComPhone").removeAttr("readonly");
                        $("#saveBtn").attr('onclick', 'Update(\'edit\')');;
                    }
                }
            });
        }

        function Update(choice) {
            var id = $("#vComID").val();
            var name = $("#vComName").val();
            var phone = $("#vComPhone").val();

            //Validate
            if (name === "" || phone === "") {
                return;
            } else {
                $.ajax({
                    type: "POST",
                    url: "ShipperForm.aspx/Update",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: '{tmpid:"' + id + '",name:"' + name + '",phone:"' + phone + '"}',
                    success: function (msg) {
                        if (choice === 'edit') {
                            alert(msg.d);
                        }

                        window.location = "ShipperForm.aspx";
                    }
                });
            }
        }


        function Search() {
            var name = $("#searchBox").val();
            $.ajax({
                type: "POST",
                url: "ShipperForm.aspx/Search",
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
