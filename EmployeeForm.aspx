<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeForm.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="EmployeeForm" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!--/.sidebar-->
    <style>
        .overlay:target + .popup {
            top: 60%;
            opacity: 1;
            visibility: visible;
        }
    </style>
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header" style="margin-top: 15px">Employee Form</h2>
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
                        <input type="text" class="customBorder" placeholder="Search by name" style="height: 35px;" id="searchBox" maxlength="200" />
                        <span>
                            <a class="btn btn-default customBorder2" style="height: 35px;" href="#searchField" onclick="Search()"><i class="glyphicon glyphicon-search"></i></a>
                        </span>
                    </span>
                </div>
                <!-- Khong dung vao cho nay -->


                <table class="table table-bordered table-hover table-responsive" style="table-layout: fixed; word-wrap: break-word; font-size: 16px;">
                    <thead>
                        <tr role="row">
                            <!-- Thay ten cot vao cho nay, muon doi kich thuoc cot thi thay doi gia tri cua width -->
                            <th style="width: 50px; text-align: center;">Employee ID</th>
                            <th style="width: 80px; text-align: center;">Last Name</th>
                            <th style="width: 80px; text-align: center;">Firt Name</th>
                            <th style="width: 100px; text-align: center;">Address</th>
                            <th style="width: 100px; text-align: center;">Phone</th>
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
            <a href="CatergoryForm.aspx">
                <div class="panel panel-widget" style="background: #E0E714; color: white;">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">
                            <i class='glyphicon glyphicon-briefcase' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Category Form</div>
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

            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" class="form-control" id="LastName" required="true" maxlength="20" />

            </div>

            <div class="form-group">
                <label for="firstame">First Name:</label>
                <input type="text" class="form-control" id="FirstName" required="true" maxlength="10" />
            </div>

            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" id="Title" required="true" maxlength="30" />
            </div>

            <div class="form-group">
                <label for="TitleOfCourtesy">Title Of Courtesy:</label>
                <input type="text" class="form-control" id="TitleOfCourtesy" required="true" maxlength="25" />
            </div>



            <label for="Birthday">Birthday:</label>
            <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd-M-yy">

                <input type="text" class="form-control" placeholder="Date" id="Birthday">
                <div class="input-group-addon">
                    <i class="glyphicon glyphicon-calendar"></i>
                </div>
            </div>

            <label for="hireday">Hireday:</label>
            <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd-M-yy">

                <input type="text" class="form-control" id="Hireday" placeholder="Date">
                <div class="input-group-addon">
                    <i class="glyphicon glyphicon-calendar"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="Address" required="true" maxlength="30" />
            </div>

            <div class="form-group">
                <label for="city">City:</label>
                <select id="City" name="vCity" style="width: 80px;">
                    <option value="New York" runat="server">New York</option>
                    <option value="Paris" runat="server">Paris</option>
                    <option value="Berlin" runat="server">Berlin</option>
                    <option value="Sydney" runat="server">Sydney</option>
                    <option value="Barcelona" runat="server">Barcelona</option>
                    <option value="London" runat="server">London</option>
                    <option value="Taipei" runat="server">Taipei</option>
                    <option value="Ha Noi" runat="server">Ha Noi</option>
                    <option value="Ho Chi Minh" runat="server">Ho Chi Minh</option>
                </select>
            </div>

            <div class="form-group">
                <label for="region">Region:</label>
                <select id="Region" name="vRegion" style="width: 80px;">
                    <option value="Africa" runat="server">Africa</option>
                    <option value="East Asia" runat="server">East Asia</option>
                    <option value="South Asia" runat="server">South Asia</option>
                    <option value="Europe" runat="server">Europe</option>
                    <option value="Middle East and North Africa" runat="server">Middle East and North Africa</option>
                    <option value="Latin America and the Caribbean" runat="server">Latin America and the Caribbean</option>
                </select>
            </div>

            <div class="form-group">
                <label for="postalcode">Postalcode:</label>
                <input type="text" class="form-control" required="true" maxlength="10" id="Postalcode" />
            </div>

            <div class="form-group">
                <label for="country">Country:</label>
                <select id="Country" name="vCountry" style="width: 80px;">
                    <option value="Afghanistan">Afghanistan</option>
                    <option value="Albania">Albania</option>
                    <option value="Algeria">Algeria</option>
                    <option value="American Samoa">American Samoa</option>
                    <option value="Andorra">Andorra</option>
                    <option value="Angola">Angola</option>
                    <option value="Anguilla">Anguilla</option>
                    <option value="Antigua &amp; Barbuda">Antigua &amp; Barbuda</option>
                    <option value="Argentina">Argentina</option>
                    <option value="Armenia">Armenia</option>
                    <option value="Aruba">Aruba</option>
                    <option value="Australia">Australia</option>
                    <option value="Austria">Austria</option>
                    <option value="Azerbaijan">Azerbaijan</option>
                    <option value="Bahamas">Bahamas</option>
                    <option value="Bahrain">Bahrain</option>
                    <option value="Bangladesh">Bangladesh</option>
                    <option value="Barbados">Barbados</option>
                    <option value="Belarus">Belarus</option>
                    <option value="Belgium">Belgium</option>
                    <option value="Belize">Belize</option>
                    <option value="Benin">Benin</option>
                    <option value="Bermuda">Bermuda</option>
                    <option value="Bhutan">Bhutan</option>
                    <option value="Bolivia">Bolivia</option>
                    <option value="Bonaire">Bonaire</option>
                    <option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</option>
                    <option value="Botswana">Botswana</option>
                    <option value="Brazil">Brazil</option>
                    <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
                    <option value="Brunei">Brunei</option>
                    <option value="Bulgaria">Bulgaria</option>
                    <option value="Burkina Faso">Burkina Faso</option>
                    <option value="Burundi">Burundi</option>
                    <option value="Cambodia">Cambodia</option>
                    <option value="Cameroon">Cameroon</option>
                    <option value="Canada">Canada</option>
                    <option value="Canary Islands">Canary Islands</option>
                    <option value="Cape Verde">Cape Verde</option>
                    <option value="Cayman Islands">Cayman Islands</option>
                    <option value="Central African Republic">Central African Republic</option>
                    <option value="Chad">Chad</option>
                    <option value="Channel Islands">Channel Islands</option>
                    <option value="Chile">Chile</option>
                    <option value="China">China</option>
                    <option value="Christmas Island">Christmas Island</option>
                    <option value="Cocos Island">Cocos Island</option>
                    <option value="Colombia">Colombia</option>
                    <option value="Comoros">Comoros</option>
                    <option value="Congo">Congo</option>
                    <option value="Cook Islands">Cook Islands</option>
                    <option value="Costa Rica">Costa Rica</option>
                    <option value="Cote DIvoire">Cote D'Ivoire</option>
                    <option value="Croatia">Croatia</option>
                    <option value="Cuba">Cuba</option>
                    <option value="Curaco">Curacao</option>
                    <option value="Cyprus">Cyprus</option>
                    <option value="Czech Republic">Czech Republic</option>
                    <option value="Denmark">Denmark</option>
                    <option value="Djibouti">Djibouti</option>
                    <option value="Dominica">Dominica</option>
                    <option value="Dominican Republic">Dominican Republic</option>
                    <option value="East Timor">East Timor</option>
                    <option value="Ecuador">Ecuador</option>
                    <option value="Egypt">Egypt</option>
                    <option value="El Salvador">El Salvador</option>
                    <option value="Equatorial Guinea">Equatorial Guinea</option>
                    <option value="Eritrea">Eritrea</option>
                    <option value="Estonia">Estonia</option>
                    <option value="Ethiopia">Ethiopia</option>
                    <option value="Falkland Islands">Falkland Islands</option>
                    <option value="Faroe Islands">Faroe Islands</option>
                    <option value="Fiji">Fiji</option>
                    <option value="Finland">Finland</option>
                    <option value="France">France</option>
                    <option value="French Guiana">French Guiana</option>
                    <option value="French Polynesia">French Polynesia</option>
                    <option value="French Southern Ter">French Southern Ter</option>
                    <option value="Gabon">Gabon</option>
                    <option value="Gambia">Gambia</option>
                    <option value="Georgia">Georgia</option>
                    <option value="Germany">Germany</option>
                    <option value="Ghana">Ghana</option>
                    <option value="Gibraltar">Gibraltar</option>
                    <option value="Great Britain">Great Britain</option>
                    <option value="Greece">Greece</option>
                    <option value="Greenland">Greenland</option>
                    <option value="Grenada">Grenada</option>
                    <option value="Guadeloupe">Guadeloupe</option>
                    <option value="Guam">Guam</option>
                    <option value="Guatemala">Guatemala</option>
                    <option value="Guinea">Guinea</option>
                    <option value="Guyana">Guyana</option>
                    <option value="Haiti">Haiti</option>
                    <option value="Hawaii">Hawaii</option>
                    <option value="Honduras">Honduras</option>
                    <option value="Hong Kong">Hong Kong</option>
                    <option value="Hungary">Hungary</option>
                    <option value="Iceland">Iceland</option>
                    <option value="India">India</option>
                    <option value="Indonesia">Indonesia</option>
                    <option value="Iran">Iran</option>
                    <option value="Iraq">Iraq</option>
                    <option value="Ireland">Ireland</option>
                    <option value="Isle of Man">Isle of Man</option>
                    <option value="Israel">Israel</option>
                    <option value="Italy">Italy</option>
                    <option value="Jamaica">Jamaica</option>
                    <option value="Japan">Japan</option>
                    <option value="Jordan">Jordan</option>
                    <option value="Kazakhstan">Kazakhstan</option>
                </select>
            </div>

            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" class="form-control" required="true" maxlength="24" id="Phone" />
            </div>

            <div class="form-group">
                <label for="Manager">Manager:</label>
                <select id="Manager" style="width: 80px;">
                    <div id="managervalue" runat="server"></div>
                </select>
            </div>


            <button type="submit" class="btn btn-primary" onclick="Add()">Add</button>
        </form>
    </div>

    <!-- Edit Form -->
    <a href="#x" id="editField" class="overlay"></a>
    <div class="popup">
        <form onsubmit="return false">

            <div class="form-group">
                <label for="empID">Employee ID:</label>
                <input type="text" class="form-control" id="vEmpID" readonly="readonly" />

            </div>

            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" class="form-control" id="vLastName" required="true" maxlength="20" />

            </div>

            <div class="form-group">
                <label for="firstame">First Name:</label>
                <input type="text" class="form-control" id="vFirstName" required="true" maxlength="10" />
            </div>

            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" id="vTitle" required="true" maxlength="30" />
            </div>

            <div class="form-group">
                <label for="titleOfCourtesy">Title Of Courtesy:</label>
                <input type="text" class="form-control" id="vTitleOfCourtesy" required="true" maxlength="25" />
            </div>

            <label for="birthday">Birthday:</label>
            <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd-M-yy">

                <input type="text" class="form-control" placeholder="Date" readonly="readonly" id="vBirthday">
                <div class="input-group-addon">
                    <i class="glyphicon glyphicon-calendar"></i>
                </div>
            </div>

            <label for="hireday">Hireday:</label>
            <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd-M-yy">

                <input type="text" class="form-control" id="vHireday" placeholder="Date" readonly="readonly">
                <div class="input-group-addon">
                    <i class="glyphicon glyphicon-calendar"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="vAddress">Address:</label>
                <input type="text" class="form-control" id="vAddress" required="true" maxlength="30" />
            </div>

            <div class="form-group">
                <label for="city">City:</label>
                <select id="vCity" name="vCity" style="width: 80px;">
                     <option value="New York" runat="server">New York</option>
                    <option value="Paris" runat="server">Paris</option>
                    <option value="Berlin" runat="server">Berlin</option>
                    <option value="Sydney" runat="server">Sydney</option>
                    <option value="Barcelona" runat="server">Barcelona</option>
                    <option value="London" runat="server">London</option>
                    <option value="Taipei" runat="server">Taipei</option>
                    <option value="Ha Noi" runat="server">Ha Noi</option>
                    <option value="Ho Chi Minh" runat="server">Ho Chi Minh</option>
                </select>
            </div>

            <div class="form-group">
                <label for="region">Region:</label>
                <select id="vRegion" name="vRegion" style="width: 80px;">
                   <option value="Africa" runat="server">Africa</option>
                    <option value="East Asia" runat="server">East Asia</option>
                    <option value="South Asia" runat="server">South Asia</option>
                    <option value="Europe" runat="server">Europe</option>
                    <option value="Middle East and North Africa" runat="server">Middle East and North Africa</option>
                    <option value="Latin America and the Caribbean" runat="server">Latin America and the Caribbean</option>
                </select>
            </div>

            <div class="form-group">
                <label for="postalcode">Postalcode:</label>
                <input type="text" class="form-control" required="true" maxlength="10" id="vPostalcode" />
            </div>

            <div class="form-group">
                <label for="country">Country:</label>
                <select id="vCountry" name="vCountry" style="width: 80px;">
                    <option value="Afganistan">Afghanistan</option>
                    <option value="Albania">Albania</option>
                    <option value="Algeria">Algeria</option>
                    <option value="American Samoa">American Samoa</option>
                    <option value="Andorra">Andorra</option>
                    <option value="Angola">Angola</option>
                    <option value="Anguilla">Anguilla</option>
                    <option value="Antigua &amp; Barbuda">Antigua &amp; Barbuda</option>
                    <option value="Argentina">Argentina</option>
                    <option value="Armenia">Armenia</option>
                    <option value="Aruba">Aruba</option>
                    <option value="Australia">Australia</option>
                    <option value="Austria">Austria</option>
                    <option value="Azerbaijan">Azerbaijan</option>
                    <option value="Bahamas">Bahamas</option>
                    <option value="Bahrain">Bahrain</option>
                    <option value="Bangladesh">Bangladesh</option>
                    <option value="Barbados">Barbados</option>
                    <option value="Belarus">Belarus</option>
                    <option value="Belgium">Belgium</option>
                    <option value="Belize">Belize</option>
                    <option value="Benin">Benin</option>
                    <option value="Bermuda">Bermuda</option>
                    <option value="Bhutan">Bhutan</option>
                    <option value="Bolivia">Bolivia</option>
                    <option value="Bonaire">Bonaire</option>
                    <option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</option>
                    <option value="Botswana">Botswana</option>
                    <option value="Brazil">Brazil</option>
                    <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
                    <option value="Brunei">Brunei</option>
                    <option value="Bulgaria">Bulgaria</option>
                    <option value="Burkina Faso">Burkina Faso</option>
                    <option value="Burundi">Burundi</option>
                    <option value="Cambodia">Cambodia</option>
                    <option value="Cameroon">Cameroon</option>
                    <option value="Canada">Canada</option>
                    <option value="Canary Islands">Canary Islands</option>
                    <option value="Cape Verde">Cape Verde</option>
                    <option value="Cayman Islands">Cayman Islands</option>
                    <option value="Central African Republic">Central African Republic</option>
                    <option value="Chad">Chad</option>
                    <option value="Channel Islands">Channel Islands</option>
                    <option value="Chile">Chile</option>
                    <option value="China">China</option>
                    <option value="Christmas Island">Christmas Island</option>
                    <option value="Cocos Island">Cocos Island</option>
                    <option value="Colombia">Colombia</option>
                    <option value="Comoros">Comoros</option>
                    <option value="Congo">Congo</option>
                    <option value="Cook Islands">Cook Islands</option>
                    <option value="Costa Rica">Costa Rica</option>
                    <option value="Cote DIvoire">Cote D'Ivoire</option>
                    <option value="Croatia">Croatia</option>
                    <option value="Cuba">Cuba</option>
                    <option value="Curaco">Curacao</option>
                    <option value="Cyprus">Cyprus</option>
                    <option value="Czech Republic">Czech Republic</option>
                    <option value="Denmark">Denmark</option>
                    <option value="Djibouti">Djibouti</option>
                    <option value="Dominica">Dominica</option>
                    <option value="Dominican Republic">Dominican Republic</option>
                    <option value="East Timor">East Timor</option>
                    <option value="Ecuador">Ecuador</option>
                    <option value="Egypt">Egypt</option>
                    <option value="El Salvador">El Salvador</option>
                    <option value="Equatorial Guinea">Equatorial Guinea</option>
                    <option value="Eritrea">Eritrea</option>
                    <option value="Estonia">Estonia</option>
                    <option value="Ethiopia">Ethiopia</option>
                    <option value="Falkland Islands">Falkland Islands</option>
                    <option value="Faroe Islands">Faroe Islands</option>
                    <option value="Fiji">Fiji</option>
                    <option value="Finland">Finland</option>
                    <option value="France">France</option>
                    <option value="French Guiana">French Guiana</option>
                    <option value="French Polynesia">French Polynesia</option>
                    <option value="French Southern Ter">French Southern Ter</option>
                    <option value="Gabon">Gabon</option>
                    <option value="Gambia">Gambia</option>
                    <option value="Georgia">Georgia</option>
                    <option value="Germany">Germany</option>
                    <option value="Ghana">Ghana</option>
                    <option value="Gibraltar">Gibraltar</option>
                    <option value="Great Britain">Great Britain</option>
                    <option value="Greece">Greece</option>
                    <option value="Greenland">Greenland</option>
                    <option value="Grenada">Grenada</option>
                    <option value="Guadeloupe">Guadeloupe</option>
                    <option value="Guam">Guam</option>
                    <option value="Guatemala">Guatemala</option>
                    <option value="Guinea">Guinea</option>
                    <option value="Guyana">Guyana</option>
                    <option value="Haiti">Haiti</option>
                    <option value="Hawaii">Hawaii</option>
                    <option value="Honduras">Honduras</option>
                    <option value="Hong Kong">Hong Kong</option>
                    <option value="Hungary">Hungary</option>
                    <option value="Iceland">Iceland</option>
                    <option value="India">India</option>
                    <option value="Indonesia">Indonesia</option>
                    <option value="Iran">Iran</option>
                    <option value="Iraq">Iraq</option>
                    <option value="Ireland">Ireland</option>
                    <option value="Isle of Man">Isle of Man</option>
                    <option value="Israel">Israel</option>
                    <option value="Italy">Italy</option>
                    <option value="Jamaica">Jamaica</option>
                    <option value="Japan">Japan</option>
                    <option value="Jordan">Jordan</option>
                    <option value="Kazakhstan">Kazakhstan</option>
                </select>
            </div>

            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" class="form-control" required="true" maxlength="24" id="vPhone" />
            </div>

            <div class="form-group">
                <label for="vManager">Manager:</label>
                <select id="vManager" name="vManager" style="width: 80px;">
                    <div id="managervalue2" runat="server"></div>
                </select>
            </div>

            <button type="submit" class="btn btn-success" onclick="Update('edit')" id="saveBtn">OK</button>
        </form>
    </div>

    <!-- Search Form -->
    <a href="#x" id="searchField" class="overlay"></a>
    <div class="popup" style="width: 1000px">
        <table class="table table-bordered table-hover table-responsive" style="table-layout: fixed; word-wrap: break-word; font-size: 16px;">
            <thead>
                <tr role="row">
                    <!-- Thay ten cot vao cho nay, muon doi kich thuoc cot thi thay doi gia tri cua width -->
                    <th style="width: 60px; text-align: center;">Employee ID</th>
                    <th style="width: 80px; text-align: center;">Last Name</th>
                    <th style="width: 80px; text-align: center;">Firt Name</th>
                    <th style="width: 100px; text-align: center;">Address</th>
                    <th style="width: 100px; text-align: center;">Phone</th>
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
            $("#employeeForm").attr("class", "active");
        });
        function Add() {
            var lastname = $("#LastName").val();
            var firstname = $("#FirstName").val();
            var title = $("#Title").val();
            var titleOfCourtesy = $("#TitleOfCourtesy").val();
            var birthday = $("#Birthday").val();
            var hireday = $("#Hireday").val();
            var address = $("#Address").val();
            var city = $('select[id=City] option:selected').val();
            var region = $('select[id=Region] option:selected').val();
            var postalcode = $("#Postalcode").val();
            var country = $('select[id=Country] option:selected').val();
            var phone = $("#Phone").val();
            var manager = $('select[id=Manager] option:selected').val();

            var valid = /^[0-9]{7}$/.test(postalcode);
            var valid2 = /^[0-9]{12}$/.test(phone);

            alert(manager);

            if (!valid) {
                alert("Postal code must be 7 digts! ");
                return;
            }

            if (!valid2) {
                alert("Phone must be 12 digits! ");
                return;
            }

            if (lastname === "" || firstname === "" || title === "" || titleOfCourtesy === "" || address === "") {
                return;
            } else {
                $.ajax({
                    type: "POST",
                    url: "EmployeeForm.aspx/Add",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: '{lastname:"' + lastname + '",firstname:"' + firstname + '",title:"' + title + '",titleOfCourtesy:"' + titleOfCourtesy + '",birthdate:"' + birthday + '",hiredate:"' + hireday + '",address:"' + address + '",city:"' + city + '",region:"' + region + '",postalcode:"' + postalcode + '",country:"' + country + '",phone:"' + phone + '",manager:"' + manager + '"}',
                    success: function (msg) {
                        alert(msg.d);
                        window.location = "EmployeeForm.aspx";
                    }
                });
            }
        }

        function Delete(id) {
            $.ajax({
                type: "POST",
                url: "EmployeeForm.aspx/Delete",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '"}',
                success: function (msg) {
                    alert(msg.d);
                    window.location = "EmployeeForm.aspx";
                }
            });
        }

        function View(id, choice) {
            $.ajax({
                type: "POST",
                url: "EmployeeForm.aspx/View",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '"}',
                success: function (response) {
                    var result = response.d;
                    $("#vEmpID").val(result[0]);
                    $("#vLastName").val(result[1]);
                    $("#vFirstName").val(result[2]);
                    $("#vTitle").val(result[3]);
                    $("#vTitleOfCourtesy").val(result[4]);
                    $("#vBirthday").val(result[5]);
                    $("#vHireday").val(result[6]);
                    $("#vAddress").val(result[7]);
                    $("#vCity").val(result[8]);
                    $("#vRegion").val(result[9]);
                    $("#vPostalcode").val(result[10]);
                    $("#vCountry").val(result[11]);
                    $("#vPhone").val(result[12]);
                    $("#vManager").val(result[13]);

                    if (choice === 'show') {
                        $("#vLastName").attr('readonly', 'true');
                        $("#vFirstName").attr('readonly', 'true');
                        $("#vTitle").attr('readonly', 'true');
                        $("#vTitleOfCourtesy").attr('readonly', 'true');
                        $("#vBirthday").attr('disabled', 'disabled');
                        $("#vHireday").attr('disabled', 'disabled');
                        $("#vAddress").attr('readonly', 'true');
                        $("#vCity").attr('disabled', 'disabled');
                        $("#vRegion").attr('disabled', 'disabled');
                        $("#vPostalcode").attr('readonly', 'true');
                        $("#vCountry").attr('disabled', 'disabled');
                        $("#vPhone").attr('readonly', 'true');
                        $("#vManager").attr('disabled', 'disabled');
                        $("#saveBtn").attr('onclick', 'Update(\'show\')');
                    } else {
                        $("#vLastName").removeAttr("readonly");
                        $("#vFirstName").removeAttr("readonly");
                        $("#vTitle").removeAttr("readonly");
                        $("#vTitleOfCourtesy").removeAttr("readonly");
                        $("#vBirthday").removeAttr('disabled');
                        $("#vHireday").removeAttr('disabled');
                        $("#vAddress").removeAttr("readonly");
                        $("#vCity").removeAttr('disabled');
                        $("#vRegion").removeAttr('disabled', 'disabled');
                        $("#vPostalcode").removeAttr("readonly");
                        $("#vCountry").removeAttr('disabled', 'disabled');
                        $("#vPhone").removeAttr("readonly");
                        $("#vManager").removeAttr('disabled', 'disabled');
                        $("#saveBtn").attr('onclick', 'Update(\'edit\')');;
                    }
                }
            });
        }

        function Update(choice) {
            var id = $("#vEmpID").val();
            var lastname = $("#vLastName").val();
            var firstname = $("#vFirstName").val();
            var title = $("#vTitle").val();
            var titleOfCourtesy = $("#vTitleOfCourtesy").val();
            var birthday = $("#vBirthday").val();
            var hireday = $("#vHireday").val();
            var address = $("#vAddress").val();
            var city = $('select[id=vCity] option:selected').val();
            var region = $('select[id=vRegion] option:selected').val();
            var postalcode = $("#vPostalcode").val();
            var country = $('select[id=vCountry] option:selected').val();
            var phone = $("#vPhone").val();
            var manager = $('select[id=vManager] option:selected').val();

            var valid = /^[0-9]{7}$/.test(postalcode);
            var valid2 = /^[0-9]{12}$/.test(phone);

            //alert(id);
            //alert(lastname);
            //alert(firstname);
            //alert(title);
            //alert(titleOfCourtesy);
            //alert(birthday);
            //alert(hireday);
            //alert(address);
            //alert(city);
            //alert(region);
            //alert(postalcode);
            //alert(country);
            //alert(phone);
            //alert(manager);
            

            if (!valid) {
                alert("Postal code must be 7 digts! ");
                return;
            }

            if (!valid2) {
                alert("Phone must be 12 digits! ");
                return;
            }

            if (lastname === "" || firstname === "" || title === "" || titleOfCourtesy === "" || address === "") {
                return;
            } else {
                $.ajax({
                    type: "POST",
                    url: "EmployeeForm.aspx/Update",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: '{empid:"' + id + '",lastname:"' + lastname + '",firstname:"' + firstname + '",title:"' + title + '",titleOfCourtesy:"' + titleOfCourtesy + '",birthdate:"' + birthday + '",hiredate:"' + hireday + '",address:"' + address + '",city:"' + city + '",region:"' + region + '",postalcode:"' + postalcode + '",country:"' + country + '",phone:"' + phone + '",manager:"' + manager + '"}',
                    success: function (msg) {
                        if (choice === 'edit') {
                            alert(msg.d);
                        }

                        window.location = "EmployeeForm.aspx";
                    }
                });
            }
        }


        function Search() {
            var name = $("#searchBox").val();
            $.ajax({
                type: "POST",
                url: "EmployeeForm.aspx/Search",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{name:"' + name + '"}',
                success: function (msg) {

                    $("#searchDiv").html(msg.d);
                },
                error: function () {
                    alert("hahaha");
                }

            });
        }
    </script>
</asp:Content>
