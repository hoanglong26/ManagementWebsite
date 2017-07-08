<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderForm.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="OrderForm" %>

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
            <h2 class="page-header" style="margin-top: 15px">Order Form</h2>
        </div>
    </div>

    <!--/.row-->
    <div class="row">
        <div class="col-lg-12">
            <div class="table-wrapper input-group">
                <div align="right" style="margin-top: -25px">
                    <a class="btn btn-md" style="margin-bottom: 5px; background: red; color: white" href="#addField" id="yolo" data-test="testing">New
                            <i class="glyphicon icon-plus icon-white"></i>
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
                            <!-- Thay ten cot vao cho nay, muon doi kich thuoc cot thi thay doi gia tri cua width -->
                            <th style="width: 20px; text-align: center;">ID</th>
                            <th style="width: 65px; text-align: center;">Ship name</th>
                            <th style="width: 65px; text-align: center;">Customer</th>
                            <th style="width: 65px; text-align: center;">Shipper</th>
                            <th style="width: 65px; text-align: center;">Order Date</th>
                            <th style="width: 65px; text-align: center;">Required Date</th>
                            <th style="width: 200px; text-align: center;">Action</th>
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
            <a href="CatergoryForm.aspx">
                <div class="panel panel-blue panel-widget ">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">
                            <i class='glyphicon glyphicon-list-alt' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Category Form</div>
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

            <%--<div class="form-group">
                <label for="name">ID:</label>
                <input type="text" class="form-control" id="id" readonly="readonly" />
            </div>--%>

            <div class="form-group">
                <label for="name">Customer:</label>
                <select id="customer">
                    <div id="customerValue" runat="server"></div>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Employee:</label>
                <select id="employee">
                    <div id="employeeValue" runat="server"></div>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Shipper:</label>
                <select id="shipper">
                    <div id="shipperValue" runat="server"></div>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Ship Name:</label>
                <input type="text" class="form-control" required="true" maxlength="15" id="name" />
            </div>

            <div class="form-group">
                <label for="orderDate">Order Date:</label>
                <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd-M-yy">
                    <input type="text" class="form-control" placeholder="Date" readonly="readonly" id="orderDate">
                    <div class="input-group-addon">
                        <i class="glyphicon glyphicon-calendar"></i>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="orderDate">Required Date:</label>
                <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd-M-yy">
                    <input type="text" class="form-control" placeholder="Date" readonly="readonly" id="requiredDate">
                    <div class="input-group-addon">
                        <i class="glyphicon glyphicon-calendar"></i>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="orderDate">Shipped Date:</label>
                <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd-M-yy">
                    <input type="text" class="form-control" placeholder="Date" readonly="readonly" id="shippedDate">
                    <div class="input-group-addon">
                        <i class="glyphicon glyphicon-calendar"></i>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="name">Freight:</label>
                <input type="text" class="form-control" maxlength="15" id="freight" />
            </div>

            <div class="form-group">
                <label for="name">Address:</label>
                <input type="text" class="form-control" maxlength="15" id="address" />
            </div>

            <div class="form-group">
                <label for="name">City:</label>
                <select id="city">
                    <option value="New York">New York</option>
                    <option value="Paris">Paris</option>
                    <option value="Berlin">Berlin</option>
                    <option value="Sidney">Sidney</option>
                    <option value="Barcelona">Barcelona</option>
                    <option value="London">London</option>
                    <option value="Taipei">Taipei</option>
                    <option value="Ha Noi">Ha Noi</option>
                    <option value="Ho Chi Minh">Ho Chi Minh</option>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Region:</label>
                <select id="region">
                    <option value="Africa">Africa</option>
                    <option value="East Asia">East Asia</option>
                    <option value="South Asia">South Asia</option>
                    <option value="Europe">Europe</option>
                    <option value="Middle East">Middle East</option>
                    <option value="North Africa">North Africa</option>
                    <option value="Latin America">Latin America</option>
                    <option value="The Caribbean">The Caribbean</option>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Postalcode:</label>
                <input type="text" class="form-control" maxlength="15" id="postalcode" />
            </div>

            <div class="form-group">
                <label for="name">Country:</label>
                <select id="country">
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
                    <option value="Kenya">Kenya</option>
                    <option value="Kiribati">Kiribati</option>
                    <option value="Korea North">Korea North</option>
                    <option value="Korea Sout">Korea South</option>
                    <option value="Kuwait">Kuwait</option>
                    <option value="Kyrgyzstan">Kyrgyzstan</option>
                    <option value="Laos">Laos</option>
                    <option value="Latvia">Latvia</option>
                    <option value="Lebanon">Lebanon</option>
                    <option value="Lesotho">Lesotho</option>
                    <option value="Liberia">Liberia</option>
                    <option value="Libya">Libya</option>
                    <option value="Liechtenstein">Liechtenstein</option>
                    <option value="Lithuania">Lithuania</option>
                    <option value="Luxembourg">Luxembourg</option>
                    <option value="Macau">Macau</option>
                    <option value="Macedonia">Macedonia</option>
                    <option value="Madagascar">Madagascar</option>
                    <option value="Malaysia">Malaysia</option>
                    <option value="Malawi">Malawi</option>
                    <option value="Maldives">Maldives</option>
                    <option value="Mali">Mali</option>
                    <option value="Malta">Malta</option>
                    <option value="Marshall Islands">Marshall Islands</option>
                    <option value="Martinique">Martinique</option>
                    <option value="Mauritania">Mauritania</option>
                    <option value="Mauritius">Mauritius</option>
                    <option value="Mayotte">Mayotte</option>
                    <option value="Mexico">Mexico</option>
                    <option value="Midway Islands">Midway Islands</option>
                    <option value="Moldova">Moldova</option>
                    <option value="Monaco">Monaco</option>
                    <option value="Mongolia">Mongolia</option>
                    <option value="Montserrat">Montserrat</option>
                    <option value="Morocco">Morocco</option>
                    <option value="Mozambique">Mozambique</option>
                    <option value="Myanmar">Myanmar</option>
                    <option value="Nambia">Nambia</option>
                    <option value="Nauru">Nauru</option>
                    <option value="Nepal">Nepal</option>
                    <option value="Netherland Antilles">Netherland Antilles</option>
                    <option value="Netherlands">Netherlands (Holland, Europe)</option>
                    <option value="Nevis">Nevis</option>
                    <option value="New Caledonia">New Caledonia</option>
                    <option value="New Zealand">New Zealand</option>
                    <option value="Nicaragua">Nicaragua</option>
                    <option value="Niger">Niger</option>
                    <option value="Nigeria">Nigeria</option>
                    <option value="Niue">Niue</option>
                    <option value="Norfolk Island">Norfolk Island</option>
                    <option value="Norway">Norway</option>
                    <option value="Oman">Oman</option>
                    <option value="Pakistan">Pakistan</option>
                    <option value="Palau Island">Palau Island</option>
                    <option value="Palestine">Palestine</option>
                    <option value="Panama">Panama</option>
                    <option value="Papua New Guinea">Papua New Guinea</option>
                    <option value="Paraguay">Paraguay</option>
                    <option value="Peru">Peru</option>
                    <option value="Phillipines">Philippines</option>
                    <option value="Pitcairn Island">Pitcairn Island</option>
                    <option value="Poland">Poland</option>
                    <option value="Portugal">Portugal</option>
                    <option value="Puerto Rico">Puerto Rico</option>
                    <option value="Qatar">Qatar</option>
                    <option value="Republic of Montenegro">Republic of Montenegro</option>
                    <option value="Republic of Serbia">Republic of Serbia</option>
                    <option value="Reunion">Reunion</option>
                    <option value="Romania">Romania</option>
                    <option value="Russia">Russia</option>
                    <option value="Rwanda">Rwanda</option>
                    <option value="St Barthelemy">St Barthelemy</option>
                    <option value="St Eustatius">St Eustatius</option>
                    <option value="St Helena">St Helena</option>
                    <option value="St Kitts-Nevis">St Kitts-Nevis</option>
                    <option value="St Lucia">St Lucia</option>
                    <option value="St Maarten">St Maarten</option>
                    <option value="St Pierre &amp; Miquelon">St Pierre &amp; Miquelon</option>
                    <option value="St Vincent &amp; Grenadines">St Vincent &amp; Grenadines</option>
                    <option value="Saipan">Saipan</option>
                    <option value="Samoa">Samoa</option>
                    <option value="Samoa American">Samoa American</option>
                    <option value="San Marino">San Marino</option>
                    <option value="Sao Tome &amp; Principe">Sao Tome &amp; Principe</option>
                    <option value="Saudi Arabia">Saudi Arabia</option>
                    <option value="Senegal">Senegal</option>
                    <option value="Serbia">Serbia</option>
                    <option value="Seychelles">Seychelles</option>
                    <option value="Sierra Leone">Sierra Leone</option>
                    <option value="Singapore">Singapore</option>
                    <option value="Slovakia">Slovakia</option>
                    <option value="Slovenia">Slovenia</option>
                    <option value="Solomon Islands">Solomon Islands</option>
                    <option value="Somalia">Somalia</option>
                    <option value="South Africa">South Africa</option>
                    <option value="Spain">Spain</option>
                    <option value="Sri Lanka">Sri Lanka</option>
                    <option value="Sudan">Sudan</option>
                    <option value="Suriname">Suriname</option>
                    <option value="Swaziland">Swaziland</option>
                    <option value="Sweden">Sweden</option>
                    <option value="Switzerland">Switzerland</option>
                    <option value="Syria">Syria</option>
                    <option value="Tahiti">Tahiti</option>
                    <option value="Taiwan">Taiwan</option>
                    <option value="Tajikistan">Tajikistan</option>
                    <option value="Tanzania">Tanzania</option>
                    <option value="Thailand">Thailand</option>
                    <option value="Togo">Togo</option>
                    <option value="Tokelau">Tokelau</option>
                    <option value="Tonga">Tonga</option>
                    <option value="Trinidad &amp; Tobago">Trinidad &amp; Tobago</option>
                    <option value="Tunisia">Tunisia</option>
                    <option value="Turkey">Turkey</option>
                    <option value="Turkmenistan">Turkmenistan</option>
                    <option value="Turks &amp; Caicos Is">Turks &amp; Caicos Is</option>
                    <option value="Tuvalu">Tuvalu</option>
                    <option value="Uganda">Uganda</option>
                    <option value="Ukraine">Ukraine</option>
                    <option value="United Arab Erimates">United Arab Emirates</option>
                    <option value="United Kingdom">United Kingdom</option>
                    <option value="United States of America">United States of America</option>
                    <option value="Uraguay">Uruguay</option>
                    <option value="Uzbekistan">Uzbekistan</option>
                    <option value="Vanuatu">Vanuatu</option>
                    <option value="Vatican City State">Vatican City State</option>
                    <option value="Venezuela">Venezuela</option>
                    <option value="Vietnam">Vietnam</option>
                    <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
                    <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
                    <option value="Wake Island">Wake Island</option>
                    <option value="Wallis &amp; Futana Is">Wallis &amp; Futana Is</option>
                    <option value="Yemen">Yemen</option>
                    <option value="Zaire">Zaire</option>
                    <option value="Zambia">Zambia</option>
                    <option value="Zimbabwe">Zimbabwe</option>
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
                <label for="name">ID:</label>
                <input type="text" class="form-control" id="id2" readonly="readonly" />
            </div>

            <div class="form-group">
                <label for="name">Customer:</label>
                <select id="customer2">
                    <div id="customerValue2" runat="server"></div>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Employee:</label>
                <select id="employee2">
                    <div id="employeeValue2" runat="server"></div>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Shipper:</label>
                <select id="shipper2">
                    <div id="shipperValue2" runat="server"></div>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Ship Name:</label>
                <input type="text" class="form-control" maxlength="15" id="name2" />
            </div>

            <div class="form-group">
                <label for="orderDate">Order Date:</label>
                <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd-M-yy">
                    <input type="text" class="form-control" placeholder="Date" readonly="readonly" id="orderDate2">
                    <div class="input-group-addon">
                        <i class="glyphicon glyphicon-calendar"></i>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="orderDate">Required Date:</label>
                <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd-M-yy">
                    <input type="text" class="form-control" placeholder="Date" readonly="readonly" id="requiredDate2">
                    <div class="input-group-addon">
                        <i class="glyphicon glyphicon-calendar"></i>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="orderDate">Shipped Date:</label>
                <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd-M-yy">
                    <input type="text" class="form-control" placeholder="Date" readonly="readonly" id="shippedDate2">
                    <div class="input-group-addon">
                        <i class="glyphicon glyphicon-calendar"></i>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="name">Freight:</label>
                <input type="text" class="form-control" maxlength="15" id="freight2" />
            </div>

            <div class="form-group">
                <label for="name">Address:</label>
                <input type="text" class="form-control" maxlength="15" id="address2" />
            </div>

            <div class="form-group">
                <label for="name">City:</label>
                <select id="city2">
                    <option value="New York">New York</option>
                    <option value="Paris">Paris</option>
                    <option value="Berlin">Berlin</option>
                    <option value="Sidney">Sidney</option>
                    <option value="Barcelona">Barcelona</option>
                    <option value="London">London</option>
                    <option value="Taipei">Taipei</option>
                    <option value="Ha Noi">Ha Noi</option>
                    <option value="Ho Chi Minh">Ho Chi Minh</option>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Region:</label>
                <select id="region2">
                    <option value="Africa">Africa</option>
                    <option value="East Asia">East Asia</option>
                    <option value="South Asia">South Asia</option>
                    <option value="Europe">Europe</option>
                    <option value="Middle East">Middle East</option>
                    <option value="North Africa">North Africa</option>
                    <option value="Latin America">Latin America</option>
                    <option value="The Caribbean">The Caribbean</option>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Postalcode:</label>
                <input type="text" class="form-control" maxlength="15" id="postalcode2" />
            </div>

            <div class="form-group">
                <label for="name">Country:</label>
                <select id="country2">
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
                    <option value="Kenya">Kenya</option>
                    <option value="Kiribati">Kiribati</option>
                    <option value="Korea North">Korea North</option>
                    <option value="Korea Sout">Korea South</option>
                    <option value="Kuwait">Kuwait</option>
                    <option value="Kyrgyzstan">Kyrgyzstan</option>
                    <option value="Laos">Laos</option>
                    <option value="Latvia">Latvia</option>
                    <option value="Lebanon">Lebanon</option>
                    <option value="Lesotho">Lesotho</option>
                    <option value="Liberia">Liberia</option>
                    <option value="Libya">Libya</option>
                    <option value="Liechtenstein">Liechtenstein</option>
                    <option value="Lithuania">Lithuania</option>
                    <option value="Luxembourg">Luxembourg</option>
                    <option value="Macau">Macau</option>
                    <option value="Macedonia">Macedonia</option>
                    <option value="Madagascar">Madagascar</option>
                    <option value="Malaysia">Malaysia</option>
                    <option value="Malawi">Malawi</option>
                    <option value="Maldives">Maldives</option>
                    <option value="Mali">Mali</option>
                    <option value="Malta">Malta</option>
                    <option value="Marshall Islands">Marshall Islands</option>
                    <option value="Martinique">Martinique</option>
                    <option value="Mauritania">Mauritania</option>
                    <option value="Mauritius">Mauritius</option>
                    <option value="Mayotte">Mayotte</option>
                    <option value="Mexico">Mexico</option>
                    <option value="Midway Islands">Midway Islands</option>
                    <option value="Moldova">Moldova</option>
                    <option value="Monaco">Monaco</option>
                    <option value="Mongolia">Mongolia</option>
                    <option value="Montserrat">Montserrat</option>
                    <option value="Morocco">Morocco</option>
                    <option value="Mozambique">Mozambique</option>
                    <option value="Myanmar">Myanmar</option>
                    <option value="Nambia">Nambia</option>
                    <option value="Nauru">Nauru</option>
                    <option value="Nepal">Nepal</option>
                    <option value="Netherland Antilles">Netherland Antilles</option>
                    <option value="Netherlands">Netherlands (Holland, Europe)</option>
                    <option value="Nevis">Nevis</option>
                    <option value="New Caledonia">New Caledonia</option>
                    <option value="New Zealand">New Zealand</option>
                    <option value="Nicaragua">Nicaragua</option>
                    <option value="Niger">Niger</option>
                    <option value="Nigeria">Nigeria</option>
                    <option value="Niue">Niue</option>
                    <option value="Norfolk Island">Norfolk Island</option>
                    <option value="Norway">Norway</option>
                    <option value="Oman">Oman</option>
                    <option value="Pakistan">Pakistan</option>
                    <option value="Palau Island">Palau Island</option>
                    <option value="Palestine">Palestine</option>
                    <option value="Panama">Panama</option>
                    <option value="Papua New Guinea">Papua New Guinea</option>
                    <option value="Paraguay">Paraguay</option>
                    <option value="Peru">Peru</option>
                    <option value="Phillipines">Philippines</option>
                    <option value="Pitcairn Island">Pitcairn Island</option>
                    <option value="Poland">Poland</option>
                    <option value="Portugal">Portugal</option>
                    <option value="Puerto Rico">Puerto Rico</option>
                    <option value="Qatar">Qatar</option>
                    <option value="Republic of Montenegro">Republic of Montenegro</option>
                    <option value="Republic of Serbia">Republic of Serbia</option>
                    <option value="Reunion">Reunion</option>
                    <option value="Romania">Romania</option>
                    <option value="Russia">Russia</option>
                    <option value="Rwanda">Rwanda</option>
                    <option value="St Barthelemy">St Barthelemy</option>
                    <option value="St Eustatius">St Eustatius</option>
                    <option value="St Helena">St Helena</option>
                    <option value="St Kitts-Nevis">St Kitts-Nevis</option>
                    <option value="St Lucia">St Lucia</option>
                    <option value="St Maarten">St Maarten</option>
                    <option value="St Pierre &amp; Miquelon">St Pierre &amp; Miquelon</option>
                    <option value="St Vincent &amp; Grenadines">St Vincent &amp; Grenadines</option>
                    <option value="Saipan">Saipan</option>
                    <option value="Samoa">Samoa</option>
                    <option value="Samoa American">Samoa American</option>
                    <option value="San Marino">San Marino</option>
                    <option value="Sao Tome &amp; Principe">Sao Tome &amp; Principe</option>
                    <option value="Saudi Arabia">Saudi Arabia</option>
                    <option value="Senegal">Senegal</option>
                    <option value="Serbia">Serbia</option>
                    <option value="Seychelles">Seychelles</option>
                    <option value="Sierra Leone">Sierra Leone</option>
                    <option value="Singapore">Singapore</option>
                    <option value="Slovakia">Slovakia</option>
                    <option value="Slovenia">Slovenia</option>
                    <option value="Solomon Islands">Solomon Islands</option>
                    <option value="Somalia">Somalia</option>
                    <option value="South Africa">South Africa</option>
                    <option value="Spain">Spain</option>
                    <option value="Sri Lanka">Sri Lanka</option>
                    <option value="Sudan">Sudan</option>
                    <option value="Suriname">Suriname</option>
                    <option value="Swaziland">Swaziland</option>
                    <option value="Sweden">Sweden</option>
                    <option value="Switzerland">Switzerland</option>
                    <option value="Syria">Syria</option>
                    <option value="Tahiti">Tahiti</option>
                    <option value="Taiwan">Taiwan</option>
                    <option value="Tajikistan">Tajikistan</option>
                    <option value="Tanzania">Tanzania</option>
                    <option value="Thailand">Thailand</option>
                    <option value="Togo">Togo</option>
                    <option value="Tokelau">Tokelau</option>
                    <option value="Tonga">Tonga</option>
                    <option value="Trinidad &amp; Tobago">Trinidad &amp; Tobago</option>
                    <option value="Tunisia">Tunisia</option>
                    <option value="Turkey">Turkey</option>
                    <option value="Turkmenistan">Turkmenistan</option>
                    <option value="Turks &amp; Caicos Is">Turks &amp; Caicos Is</option>
                    <option value="Tuvalu">Tuvalu</option>
                    <option value="Uganda">Uganda</option>
                    <option value="Ukraine">Ukraine</option>
                    <option value="United Arab Erimates">United Arab Emirates</option>
                    <option value="United Kingdom">United Kingdom</option>
                    <option value="United States of America">United States of America</option>
                    <option value="Uraguay">Uruguay</option>
                    <option value="Uzbekistan">Uzbekistan</option>
                    <option value="Vanuatu">Vanuatu</option>
                    <option value="Vatican City State">Vatican City State</option>
                    <option value="Venezuela">Venezuela</option>
                    <option value="Vietnam">Vietnam</option>
                    <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
                    <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
                    <option value="Wake Island">Wake Island</option>
                    <option value="Wallis &amp; Futana Is">Wallis &amp; Futana Is</option>
                    <option value="Yemen">Yemen</option>
                    <option value="Zaire">Zaire</option>
                    <option value="Zambia">Zambia</option>
                    <option value="Zimbabwe">Zimbabwe</option>
                </select>
            </div>

            <button type="submit" class="btn btn-success" onclick="Update('edit')" id="saveBtn">Next</button>
        </form>
    </div>

    <!-- Search Form -->
    <a href="#x" id="searchField" class="overlay"></a>
    <div class="popup" style="width: 1000px">
        <h3>Order Form</h3>
        <table class="table table-bordered table-hover table-responsive" style="table-layout: fixed; word-wrap: break-word; font-size: 16px;">
            <thead>
                <tr role="row">
                    <!-- Thay ten cot vao cho nay, muon doi kich thuoc cot thi thay doi gia tri cua width -->
                    <th style="width: 20px; text-align: center;">ID</th>
                    <th style="width: 65px; text-align: center;">Ship name</th>
                    <th style="width: 65px; text-align: center;">Customer</th>
                    <th style="width: 65px; text-align: center;">Shipper</th>
                    <th style="width: 65px; text-align: center;">Order Date</th>
                    <th style="width: 65px; text-align: center;">Required Date</th>
                    <th style="width: 200px; text-align: center;">Action</th>
                </tr>
            </thead>
            <tbody id="searchDiv">
            </tbody>
        </table>
    </div>
    <!--/.main-->

    <!-- View Order Details Form -->
    <a href="#x" id="viewOrderDetailsField" class="overlay"></a>
    <div class="popup" style="width: 1000px">
        <h3>Order Details Form</h3>
        <a class="btn btn-md" style="margin-bottom: 5px; background: red; color: white" href="#addField2" id="yolo2" data-test="testing">New
                            <i class="glyphicon icon-plus icon-white"></i>
        </a>
        <table class="table table-bordered table-hover table-responsive" style="table-layout: fixed; word-wrap: break-word; font-size: 16px;">
            <thead>
                <tr role="row">
                    <th style="width: 20px; text-align: center;">ID</th>
                    <th style="width: 65px; text-align: center;">Product</th>
                    <th style="width: 65px; text-align: center;">Unit price</th>
                    <th style="width: 65px; text-align: center;">Quantity</th>
                    <th style="width: 65px; text-align: center;">Discount</th>
                    <th style="width: 200px; text-align: center;">Action</th>
                </tr>
            </thead>
            <tbody id="viewDetailsDiv">
            </tbody>
        </table>
        <%--<div id="viewDetailsDiv"></div>--%>
    </div>

    <a href="#x" id="addField2" class="overlay"></a>
    <div class="popup">

        <form onsubmit="return false">

            <div class="form-group">
                <label for="name">Product:</label>
                <select id="product">
                    <div id="productValue" runat="server"></div>
                </select>
            </div>

            <div class="form-group">
                <label for="name">Unit price:</label>
                <input type="text" class="form-control" maxlength="9" required="true" id="unitprice" />
            </div>

            <div class="form-group">
                <label for="name">Quantity:</label>
                <input type="text" class="form-control" maxlength="9" required="true" id="quantity" />
            </div>

            <div class="form-group">
                <label for="name">Discount:</label>
                <input type="text" class="form-control" maxlength="9" required="true" id="discount" />
            </div>
            <button type="submit" class="btn btn-primary" onclick="AddOrderDetails()">Add</button>
        </form>
    </div>

    <a href="#x" id="editField2" class="overlay"></a>
    <div class="popup">

        <form onsubmit="return false">

            <div class="form-group">
                <label for="name">ID:</label>
                <input type="text" class="form-control" id="orderId2" readonly="readonly" />
            </div>

            <div class="form-group">
                <label for="name">Product:</label>
                <input type="text" class="form-control" id="productId2" readonly="readonly" />
                <%--<select id="product2">
                    <div id="productValue2" runat="server"></div>
                </select>--%>
            </div>

            <div class="form-group">
                <label for="name">Unit price:</label>
                <input type="text" class="form-control" maxlength="9" required="true" id="unitprice2" />
            </div>

            <div class="form-group">
                <label for="name">Quantity:</label>
                <input type="text" class="form-control" maxlength="9" required="true" id="quantity2" />
            </div>

            <div class="form-group">
                <label for="name">Discount:</label>
                <input type="text" class="form-control" maxlength="9" required="true" id="discount2" />
            </div>
            <button type="submit" class="btn btn-success" onclick="Edit()" id="saveBtn">Next</button>

        </form>
    </div>

    <!-- Code cho o nhap ngay thang -->

    <%--        <div class="input-group date col-md-12" data-provide="datepicker" data-date-format="dd/mm/yyyy">
        <input type="text" class="form-control" placeholder="Date" readonly="readonly">
        <div class="input-group-addon">
            <i class="glyphicon glyphicon-calendar"></i>
        </div>
        </div>
    --%>

    <script src="resources/js/jquery-1.11.1.min.js"></script>
    <script src="resources/js/jquery.validate.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-datepicker.js"></script>
    <script>
        $(document).ready(function () {
            $("#orderForm").attr("class", "active");
        });
        function Add() {
            var customer = $('select[id=customer] option:selected').val();
            var employee = $('select[id=employee] option:selected').val();
            var shipper = $('select[id=shipper] option:selected').val();
            var orderDate = $("#orderDate").val();
            var requiredDate = $("#requiredDate").val();
            var shippedDate = $("#shippedDate").val();
            var freight = $("#freight").val();
            var name = $("#name").val();
            var address = $("#address").val();
            var city = $('select[id=city] option:selected').text();
            var postalcode = $("#postalcode").val();
            var region = $('select[id=region] option:selected').text();
            var country = $('select[id=country] option:selected').text();

            if (orderDate.length <= 0) {
                alert("Please pick date for order date");
                return;
            }

            if (requiredDate.length <= 0) {
                alert("Please pick date for required date");
                return;
            }

            if (freight.length <= 0) {
                alert("Please input freight");
                return;
            }
            if (name.length <= 0) {
                alert("Please input ship name");
                return;
            }
            if (address.length <= 0) {
                alert("Please input ship address");
                return;
            }

            var validFreight = /^[0-9]+([.][0-9]+)*$/.test(freight);

            if (!validFreight) {
                alert("Price input is only digit allowed! ");
                return;
            }

            if (postalcode.length > 0) {

                var validPostalcode = /^\d{7}?$/.test(postalcode);

                if (!validPostalcode) {
                    alert("Postalcode input is only digit allowed and seven number! ");
                    return;
                }
            }

            //alert(customer);
            //alert(employee);
            //alert(shipper);
            //alert(orderDate);
            //alert(requiredDate);
            //alert(shippedDate);
            //alert(freight);
            //alert(name);
            //alert(address);
            //alert(city);
            //alert(postalcode);
            //alert(region);
            //alert(country);
            //Validate
            //if (customer === "" || employee === "" || shipper === "" ||
            //    orderDate === "" || requiredDate === "" || freight === ""
            //    || name === "" || address === "" || city === "" || country === "") {
            //    return;
            //} else {
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/Add",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{customer:"' + customer + '",employee:"' +
                    employee + '",shipper:"' + shipper + '",orderDate:"' +
                    orderDate + '",requiredDate:"' + requiredDate + '",shippedDate:"' +
                    shippedDate + '",freight:"' + freight + '",name:"' +
                    name + '",address:"' + address + '",city:"' +
                    city + '",postalcode:"' + postalcode + '",region:"' +
                    region + '",country:"' + country + '"}',
                success: function (msg) {
                    alert(msg.d);
                    window.location = "OrderForm.aspx";
                }
            });
        }

        function AddOrderDetails() {

            var id = $("#idOrder").val();
            var product = $("select[id=product] option:selected").val();
            var unitprice = $("#unitprice").val();
            var quantity = $("#quantity").val();
            var discount = $("#discount").val();

            var validUnitPrice = /^[0-9]+([.][0-9]+)*$/.test(unitprice);

            if (!validUnitPrice) {
                alert("Unit price input is only digit allowed! ");
                return;
            }

            var validQuantity = /^[0-9]*$/.test(quantity);
            if (!validQuantity) {
                alert("Quantity input is only digit allowed! ");
                return;
            }

            var validDiscount = /^[0-1]?([.][0-9]+)*$/.test(discount);

            if (!validDiscount) {
                alert("Discount input is only digit allowed and less than equal one! ");
                return;
            }
            //alert(id);
            //alert(unitprice);
            //alert(quantity);
            //alert(discount);
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/AddOrderDetails",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{id:"' + id + '",product:"' + product + '",unitprice:"' +
                    unitprice + '",quantity:"' + quantity + '",discount:"' +
                    discount + '"}',
                success: function (msg) {
                    alert(msg.d);
                    window.location = "OrderForm.aspx";
                }
            });
        }

        function DeleteOrderDetails(orderId, productId) {
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/DeleteOrderDetails",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{orderId:"' + orderId + '"productId:"' + productId + '"}',
                success: function (msg) {
                    alert(msg.d);
                    window.location = "OrderForm.aspx";
                }
            });
        }

        function Edit() {
            var orderId = $("#orderId2").val();
            var productId = $("#productId2").val();
            var unitprice = $("#unitprice2").val();
            var quantity = $("#quantity2").val();
            var discount = $("#discount2").val();
            var validUnitPrice = /^[0-9]+([.][0-9]+)*$/.test(unitprice);

            if (!validUnitPrice) {
                alert("Unit price input is only digit allowed! ");
                return;
            }

            var validQuantity = /^[0-9]*$/.test(quantity);
            if (!validQuantity) {
                alert("Quantity input is only digit allowed! ");
                return;
            }

            var validDiscount = /^[0-1]?([.][0-9]+)*$/.test(discount);

            if (!validDiscount) {
                alert("Discount input is only digit allowed and less than equal one! ");
                return;
            }
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/Edit",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{orderId:"' + orderId + '",productId:"' + productId +
                    '",quantity:"' + quantity + '",unitprice:"' +
                    unitprice + '",discount:"' + discount + '"}',
                success: function (msg) {
                    alert(msg.d);
                    window.location = "OrderForm.aspx";
                }
            });
        }

        function SetField(id, name) {
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/SetFields",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{orderId:"' + id + '",productId:"' + name + '"}',
                success: function (msg) {
                    var result = msg.d;
                    $("#orderId2").val(result[0]);
                    $("#productId2").val(result[1]);
                    $("#unitprice2").val(result[2]);
                    $("#quantity2").val(result[3]);
                    $("#discount2").val(result[4]);
                }
            });
        }

        function Delete(id) {
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/Delete",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '"}',
                success: function (msg) {
                    alert(msg.d);
                    window.location = "OrderForm.aspx";
                }
            });
        }

        function DeleteOrderDetails(id, name) {
            //alert(id);
            //alert(name);
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/DeleteOrderDetails",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{orderId:"' + id + '",productId:"' + name + '"}',
                success: function (msg) {
                    alert(msg.d);
                    window.location = "OrderForm.aspx";
                }
            });
        }

        function View(id, choice) {
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/View",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '"}',
                success: function (response) {
                    var result = response.d;
                    $("#id2").val(result[0]);
                    $("#customer2").val(result[1]);
                    $("#employee2").val(result[2]);
                    $("#shipper2").val(result[3]);
                    $("#orderDate2").val(result[4]);
                    $("#requiredDate2").val(result[5]);
                    $("#shippedDate2").val(result[6]);
                    $("#freight2").val(result[7]);
                    $("#name2").val(result[8]);
                    $("#address2").val(result[9]);
                    $("#city2").val(result[10]);
                    $("#postalcode2").val(result[11]);
                    $("#region2").val(result[12]);
                    $("#country2").val(result[13]);

                    if (choice === 'show') {
                        //$("#id2").attr('readonly', 'true');
                        $("#customer2").attr('disabled', 'disabled');
                        $("#employee2").attr('disabled', 'disabled');
                        $("#shipper2").attr('disabled', 'disabled');
                        //$("#orderDate2").attr('disabled', 'true');
                        //$("#requiredDate2").attr('readonly', 'true');
                        //$("#shippedDate2").attr('readonly', 'true');
                        $("#freight2").attr('readonly', 'true');
                        $("#name2").attr('readonly', 'true');
                        $("#address2").attr('readonly', 'true');
                        $("#city2").attr('disabled', 'disabled');
                        $("#postalcode2").attr('readonly', 'true');
                        $("#region2").attr('disabled', 'disabled');
                        $("#country2").attr('disabled', 'disabled');
                        $("#saveBtn").attr('onclick', 'Update(\'show\')');
                    } else {
                        $("#customer2").removeAttr('disabled');
                        $("#employee2").removeAttr('disabled');
                        $("#shipper2").removeAttr('disabled');
                        //$("#orderDate2").removeAttr('readonly');
                        //$("#requiredDate2").removeAttr('readonly');
                        //$("#shippedDate2").removeAttr('readonly');
                        $("#freight2").removeAttr('readonly');
                        $("#name2").removeAttr('readonly');
                        $("#address2").removeAttr('readonly');
                        $("#city2").removeAttr('disabled');
                        $("#postalcode2").removeAttr('readonly');
                        $("#region2").removeAttr('disabled');
                        $("#country2").removeAttr('disabled');
                        $("#saveBtn").attr('onclick', 'Update(\'edit\')');;
                    }
                }
            });
        }

        function Update(choice) {
            var id = $("#id2").val();
            var customer = $('select[id=customer2] option:selected').val();
            var employee = $('select[id=employee2] option:selected').val();
            var shipper = $('select[id=shipper2] option:selected').val();
            var orderDate = $("#orderDate2").val();
            var requiredDate = $("#requiredDate2").val();
            var shippedDate = $("#shippedDate2").val();
            var freight = $("#freight2").val();
            var name = $("#name2").val();
            var address = $("#address2").val();
            var city = $('select[id=city2] option:selected').text();
            var postalcode = $("#postalcode2").val();
            var region = $('select[id=region2] option:selected').text();
            var country = $('select[id=country2] option:selected').text();

            if (orderDate.length <= 0) {
                alert("Please pick date for order date");
                return;
            }

            if (requiredDate.length <= 0) {
                alert("Please pick date for required date");
                return;
            }

            if (freight.length <= 0) {
                alert("Please input freight");
                return;
            }
            if (name.length <= 0) {
                alert("Please input ship name");
                return;
            }
            if (address.length <= 0) {
                alert("Please input ship address");
                return;
            }

            var validFreight = /^[0-9]+([.][0-9]+)*$/.test(freight);

            if (!validFreight) {
                alert("Price input is only digit allowed! ");
                return;
            }

            if (postalcode.length > 0) {

                var validPostalcode = /^\d{7}?$/.test(postalcode);

                if (!validPostalcode) {
                    alert("Postalcode input is only digit allowed and seven number! ");
                    return;
                }
            }

            //alert(customer);
            //alert(employee);
            //alert(shipper);
            //alert(orderDate);
            //alert(requiredDate);
            //alert(shippedDate);
            //alert(freight);
            //alert(name);
            //alert(address);
            //alert(city);
            //alert(postalcode);
            //alert(region);
            //alert(country);
            //Validate
            //if (customer === "" || employee === "" || shipper === "" ||
            //    orderDate === "" || requiredDate === "" || freight === ""
            //    || name === "" || address === "" || city === "" || country === "") {
            //    return;
            //} else {
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/Update",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '",customer:"' + customer + '",employee:"' +
                    employee + '",shipper:"' + shipper + '",orderDate:"' +
                    orderDate + '",requiredDate:"' + requiredDate + '",shippedDate:"' +
                    shippedDate + '",freight:"' + freight + '",name:"' +
                    name + '",address:"' + address + '",city:"' +
                    city + '",postalcode:"' + postalcode + '",region:"' +
                    region + '",country:"' + country + '"}',
                success: function (msg) {
                    if (choice === 'edit') {
                        alert(msg.d);
                    } else {
                        alert("Sorry you can't edit.It just allow view.");
                    }
                    window.location = "OrderForm.aspx";
                }
            });
        }
        //}


        function Search() {
            var name = $("#searchBox").val();
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/Search",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{name:"' + name + '"}',
                success: function (msg) {
                    $("#searchDiv").html(msg.d);
                }
            });
        }

        function ViewOrderDetails(id) {
            $.ajax({
                type: "POST",
                url: "OrderForm.aspx/ViewOrderDetails",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{idStr:"' + id + '"}',
                success: function (msg) {
                    $("#viewDetailsDiv").html(msg.d);
                }
            });
        }

    </script>
</asp:Content>

