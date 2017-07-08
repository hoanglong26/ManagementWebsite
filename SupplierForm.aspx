<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SupplierForm.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="SupplierForm" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!--/.sidebar-->
     <style>
        .overlay:target + .popup {
                    top: 50%;
                    opacity: 1;
                    visibility: visible;
                }
    </style>
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header" style="margin-top: 15px">Supplier Form</h2>
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
                            <!-- Thay ten cot vao cho nay, muon doi kich thuoc cot thi thay doi gia tri cua width -->
                            <th style="width: 100px; text-align: center;">Supplier ID</th>
                            <th style="width: 100px; text-align: center;">Company Name</th>
                            <th style="width: 100px; text-align: center;">Contact Name</th>
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
            <a href="CatergoryForm.aspx">
                <div class="panel panel-widget" style="background: #0A3AD8; color: white;">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">
                            <i class='glyphicon glyphicon-bookmark' style="font-size: 50px;"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large" style="font-size: 22px;">Category Form</div>
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
                <label for="company">Company Name:</label>
                <input type="text" class="form-control" required="true" maxlength="40" id="companyname" />

            </div>

            <div class="form-group">
                <label for="contact">Contact Name:</label>
                <input type="text" class="form-control" required="true" maxlength="40" id="contactname" />

            </div>

            <div class="form-group">
                <label for="contacttit">Contact Title:</label>
                <input type="text" class="form-control" required="true" maxlength="40" id="contacttitle" />

            </div>

            <div class="form-group">
                <label for="add">Address:</label>
                <textarea class="form-control" style="resize: none" rows="3" required="true" maxlength="200" id="address"></textarea>
            </div>

            <div class="form-group">
                <label for="city">City:</label>
                <select id="city" style="width: 100px;">
                    <%--<div id="cityvalue" runat="server"></div>--%>
                    <option value="NY">NewYork</option>
                    <option value="PR">Paris</option>
                    <option value="BL">Berlin</option>
                    <option value="SN">Sidney</option>
                    <option value="BC">Barcelona</option>
                    <option value="LD">London</option>
                    <option value="TP">Taipei</option>
                    <option value="HN">Ha Noi</option>
                    <option value="HCM">Ho Chi Minh</option>
                </select>
            </div>

            <div class="form-group">
                <label for="region">Region:</label>
                <select id="region" style="width: 150px;">
                    <%--<div id="Div1" runat="server"></div>--%>
                    <option value="AF">Africa</option>
                    <option value="EA">East Asia</option>
                    <option value="SA">South Asia</option>
                    <option value="EU">Europe</option>
                    <option value="ME">Middle East</option>
                    <option value="NA">North Africa</option>
                    <option value="LA">Latin America</option>
                    <option value="TC">The Caribbean</option>
                </select>
            </div>

            <div class="form-group">
                <label for="code">Postal Code</label>
                <input type="text" class="form-control" required="true" maxlength="15" id="code" />
            </div>

            <div class="form-group">
                <label for="country">Country</label>
                <select id="country" style="width: 100px;">
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

            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" class="form-control" required="true" maxlength="15" id="phone" />
            </div>

            <div class="form-group">
                <label for="fax">Fax</label>
                <input type="text" class="form-control" required="true" maxlength="15" id="fax" />
            </div>

            <button type="submit" class="btn btn-primary" onclick="Add()">Add</button>
        </form>
    </div>

    <!-- Edit Form -->
    <a href="#x" id="editField" class="overlay"></a>
    <div class="popup">
        <form onsubmit="return false">

            <div class="form-group">
                <label for="id">ID:</label>
                <input type="text" class="form-control" id="id2" readonly="readonly" />

            </div>

            <div class="form-group">
                <label for="company">Company Name:</label>
                <input type="text" class="form-control" id="company2" required="true" maxlength="15" />

            </div>

            <div class="form-group">
                <label for="contact">Contact Name:</label>
                <input type="text" class="form-control" id="contact2" required="true" maxlength="15" />

            </div>

            <div class="form-group">
                <label for="contacttit">Contact Title:</label>
                <input type="text" class="form-control" id="contacttit2" required="true" maxlength="15" />

            </div>
            <div class="form-group">
                <label for="add">Address:</label>
                <textarea class="form-control" style="resize: none" rows="3" id="add2" required="true" maxlength="200"></textarea>
            </div>

            <div class="form-group">
                <label for="city">City:</label>
                <select id="city2" style="width: 100px;">
                    <%--<div id="cityvalue" runat="server"></div>--%>
                    <option value="NewYork">NewYork</option>
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
                <label for="region">Region:</label>
                <select id="region2" style="width: 150px;">
                    <%--<div id="Div1" runat="server"></div>--%>
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
                <label for="code">Postal Code</label>
                <input type="text" class="form-control" id="code2" required="true" maxlength="15" />
            </div>

            <div class="form-group">
                <label for="country">Country</label>
                <select id="country2" style="width: 100px;">
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

            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" class="form-control" required="true" maxlength="15" id="phone2" />
            </div>

            <div class="form-group">
                <label for="fax">Fax</label>
                <input type="text" class="form-control" required="true" maxlength="15" id="fax2" />
            </div>


            <button type="submit" class="btn btn-success" onclick="Update('edit')" id="saveBtn">Next</button>
        </form>
    </div>

    <!-- Search Form -->
    <a href="#x" id="searchField" class="overlay"></a>
    <div class="popup" style="width: 1000px">
        <table class="table table-bordered table-hover table-responsive" style="table-layout: fixed; word-wrap: break-word; font-size: 16px;">
            <thead>
                <tr role="row">
                    <!-- Thay ten cot vao cho nay, muon doi kich thuoc cot thi thay doi gia tri cua width -->
                    <th style="width: 100px; text-align: center;">Supplier ID</th>
                    <th style="width: 100px; text-align: center;">Company Name</th>
                    <th style="width: 100px; text-align: center;">Contact Name</th>
                    <th style="width: 100px; text-align: center;">Action</th>
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
            $("#supplierForm").attr("class", "active");
        });
        function Add() {
            var company = $("#companyname").val();
            var contact = $("#contactname").val();
            var contacttit = $("#contacttitle").val();
            var add = $("#address").val();
            var city = $("select[id=city] option:selected").text();
            var region = $("select[id=region] option:selected").text();
            var code = $("#code").val();
            var country = $("select[id=country] option:selected").text();
            var phone = $("#phone").val();
            var fax = $("#fax").val();
            var valid = /^[0-9]{7}$/.test(code);
            var valid2 = /^[0-9]{12}$/.test(phone);
            var valid3 = /^[0-9]{12}$/.test(fax);

            if (!valid) {
                alert("Postal code must be 7 digts! ");
                return;
            }

            if (!valid2) {
                alert("Phone must be 12 digits! ");
                return;
            }

            if (!valid3) {
                alert("Fax must be 12 digits! ");
                return;
            }

            //Validate
            if (company === "" || contact === "" || contacttit === "" || add === "" || code === "" || phone === "" || fax === "") {
                return;
            } else  {
                $.ajax({
                    type: "POST",
                    url: "SupplierForm.aspx/Add",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: '{company:"' + company + '",contact:"' + contact + '",contacttit:"' + contacttit +
                        '",add:"' + add + '",city:"' + city + '",region:"' + region +
                        '",code:"' + code + '",country:"' + country + '",phone:"' + phone +
                        '",fax:"' + fax + '"}',
                    success: function (msg) {
                        alert(msg.d);
                        window.location = "SupplierForm.aspx";
                    }

                });
            }
        }

        function Delete(id) {
            $.ajax({
                type: "POST",
                url: "SupplierForm.aspx/Delete",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '"}',
                success: function (msg) {
                    alert(msg.d);
                    window.location = "SupplierForm.aspx";
                }
            });
        }

        function View(id, choice) {
            $.ajax({
                type: "POST",
                url: "SupplierForm.aspx/View",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{tmpid:"' + id + '"}',
                success: function (response) {
                    var result = response.d;

                    $("#id2").val(result[0]);
                    $("#company2").val(result[1]);
                    $("#contact2").val(result[2]);
                    $("#contacttit2").val(result[3]);
                    $("#add2").val(result[4]);
                    $('#city2').val(result[5]);
                    $('#region2').val(result[6]);
                    $("#code2").val(result[7]);

                    $("#country2").val(result[8]);
                    $("#phone2").val(result[9]);
                    $("#fax2").val(result[10]);

                    if (choice === 'show') {
                        $("#company2").attr('readonly', 'true');
                        $("#contact2").attr('readonly', 'true');
                        $("#contacttit2").attr('readonly', 'true');
                        $("#add2").attr('readonly', 'true');
                        $("#city2").attr('disabled', 'disabled');
                        $("#region2").attr('disabled', 'disabled');
                        $("#code2").attr('readonly', 'true');
                        $("#country2").attr('disabled', 'disabled');
                        $("#phone2").attr('readonly', 'true');
                        $("#fax2").attr('readonly', 'true');
                        $("#saveBtn").attr('onclick', 'Update(\'show\')');
                    } else {
                        $("#company2").removeAttr("readonly");
                        $("#contact2").removeAttr("readonly");
                        $("#contacttit2").removeAttr("readonly");
                        $("#add2").removeAttr("readonly");
                        $("#city2").removeAttr('disabled');
                        $("#region2").removeAttr('disabled');
                        $("#code2").removeAttr("readonly");
                        $("#country2").removeAttr('disabled');
                        $("#phone2").removeAttr("readonly");
                        $("#fax2").removeAttr("readonly");
                        $("#saveBtn").attr('onclick', 'Update(\'edit\')');;
                    }
                }
            });
        }

        function Update(choice) {
            var id = $("#id2").val();
            var company = $("#company2").val();
            var contact = $("#contact2").val();
            var contacttit = $("#contacttit2").val();
            var add = $("#add2").val();
            var city = $("select[id=city2] option:selected").text();
            var region = $("select[id=region2] option:selected").text();
            var code = $("#code2").val();
            var country = $("select[id=country2] option:selected").text();
            var phone = $("#phone2").val();
            var fax = $("#fax2").val();
            var valid = /^[0-9]{7}$/.test(code);
            var valid2 = /^[0-9]{12}$/.test(phone);
            var valid3 = /^[0-9]{12}$/.test(fax);

            if (!valid) {
                alert("Postal code must be 7 digts! ");
                return;
            }

            if (!valid2) {
                alert("Phone must be 12 digits! ");
                return;
            }

            if (!valid3) {
                alert("Fax must be 12 digits! ");
                return;
            }

            //Validate
            if (company === "" || contact === "" || contacttit === "" || add === "" || code === "" || phone === "" || fax === "") {
                return;
            } else 
            {
                $.ajax({
                    type: "POST",
                    url: "SupplierForm.aspx/Update",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: '{tmpid:"' + id + '",company:"' + company + '",contact:"' + contact +
                        '",contacttit:"' + contacttit + '",add:"' + add + '",city:"' + city +
                        '",region:"' + region + '",code:"' + code + '",country:"' + country +
                        '",phone:"' + phone + '",fax:"' + fax + '"}',
                    success: function (msg) {
                        if (choice === 'edit') {
                            alert(msg.d);
                        }

                        window.location = "SupplierForm.aspx";
                    }
                });
            }
        }
        function Search() {
            var comname = $("#searchBox").val();
            $.ajax({
                type: "POST",
                url: "SupplierForm.aspx/Search",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: '{company:"' + comname + '"}',
                success: function (msg) {
                    $("#searchDiv").html(msg.d);
                }
            });

        }
        
    </script>
</asp:Content>
