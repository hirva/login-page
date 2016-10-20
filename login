# login-page
agile
Skip to content
This repository
Search
Pull requests
Issues
Gist
 @hirva
 Unwatch 3
  Star 0
  Fork 0 hirva/hello-world
 Code  Issues 0  Pull requests 0  Projects 0  Wiki  Pulse  Graphs  Settings
Branch: master Find file Copy pathhello-world/milestone1.md
33fa455  23 days ago
@hirva hirva Create milestone1.md
1 contributor
RawBlameHistory     
843 lines (643 sloc)  37.3 KB
Application Form

<%-- Document : applicationform Created on : 23 Jul, 2015, 5:21:40 PM Author : Harsh --%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%> <!DOCTYPE html> Home

    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--basic styles-->

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

    <!--[if IE 7]>
      <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
    <![endif]-->

    <!--page specific plugin styles-->

    <!--fonts-->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

    <!--ace styles-->

    <link rel="stylesheet" href="assets/css/ace.min.css" />
    <link rel="stylesheet" href="assets/css/ace-responsive.min.css" />
    <link rel="stylesheet" href="assets/css/ace-skins.min.css" />

    <!--[if lte IE 8]>
      <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
    <![endif]-->

    <!--inline styles related to this page-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>
<%
        String uname=session.getAttribute("uname").toString();
        String uid=null;
        Connection cn;
        Statement st,st1,st2,st3;
        ResultSet rs,rs1,rs2,rs3;
        Class.forName("com.mysql.jdbc.Driver");
   cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
   st=cn.createStatement();
   rs=st.executeQuery("select * from user where UserName='"+uname+"'");
   if(rs.next())
   {
       uid=rs.getString(1);
   }
   st1=cn.createStatement();
   rs1=st1.executeQuery("select * from profile where uid='"+uid+"'");
   st2=cn.createStatement();
   rs2=st2.executeQuery("select * from edudetails where uid='"+uid+"'");
   st3=cn.createStatement();
   rs3=st3.executeQuery("select * from jobexprience where uid='"+uid+"'");
   while(rs1.next())
   {
    %>
<body>

    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a href="#" class="brand">
                    <small>

                                                <div>
                                                    <img src="images/n.png" height="100px" width="100px">
                                                    </div>
                    </small>
                </a><!--/.brand-->

                <ul class="nav ace-nav pull-right">





                    <li class="light-blue">
                        <a data-toggle="dropdown" href="#" class="dropdown-toggle">

                            <span class="user-info">
                                <small>Welcome,</small>

                            </span>

                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">


                            <li>
                                <a href="#">
                                    <i class="icon-user"></i>
                                    Profile
                                </a>
                            </li>

                            <li class="divider"></li>

                            <li>
                                <a href="#">
                                    <i class="icon-off"></i>
                                    Logout
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul><!--/.ace-nav-->
            </div><!--/.container-fluid-->
        </div><!--/.navbar-inner-->
    </div>

    <div class="main-container container-fluid">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>

        <div class="sidebar" id="sidebar">
            <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">

                </div>

                <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                    <span class="btn btn-success"></span>

                    <span class="btn btn-info"></span>

                    <span class="btn btn-warning"></span>

                    <span class="btn btn-danger"></span>
                </div>
            </div><!--#sidebar-shortcuts-->

            <ul class="nav nav-list">
                <li class="active">
                    <a href="index.html">
                        <i class="icon-dashboard"></i>
                        <span class="menu-text"> Home </span>
                    </a>
                </li>

                <li>
                    <a href="#" class="dropdown-toggle">
                        <i class="icon-text-width"></i>
                        <span class="menu-text"> Apply for job </span>

                                                    <ul class="submenu" style="display: none;">
                        <li>
                            <a href="applyjob.jsp">
                                <i class="icon-double-angle-right"></i>
                                Personal Information
                            </a>
                        </li>

                        <li>
                            <a href="eduregistration.jsp">
                                <i class="icon-double-angle-right"></i>
                                Education Information
                            </a>
                        </li>

                        <li>
                            <a href="jobexperience.jsp">
                                <i class="icon-double-angle-right"></i>
                                Job Experience Information
                            </a>
                        </li>

                    </ul>
                    </a>
                </li>

                                    <li>
                    <a href="typography.html">
                        <i class="icon-text-width"></i>
                        <span class="menu-text"> View my application </span>
                    </a>
                </li>


                <li>
                    <a href="#" class="dropdown-toggle">
                        <i class="icon-desktop"></i>
                        <span class="menu-text"> Track My Status </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>


                </li>
                                    <li>
                    <a href="#" class="dropdown-toggle">
                        <i class="icon-desktop"></i>
                        <span class="menu-text">Change Password </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>


                </li>













            </ul><!--/.nav-list-->

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left"></i>
            </div>
        </div>

        <div class="main-content">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home home-icon"></i>
                        <a href="#">Home</a>

                        <span class="divider">
                            <i class="icon-angle-right arrow-icon"></i>
                        </span>
                    </li>
                    <li class="active">Dashboard</li>
                </ul><!--.breadcrumb-->

                <div class="nav-search" id="nav-search">
                    <form class="form-search" />
                        <span class="input-icon">
                            <input type="text" placeholder="Search ..." class="input-small nav-search-input" id="nav-search-input" autocomplete="off" />
                            <i class="icon-search nav-search-icon"></i>
                        </span>
                    </form>
                </div><!--#nav-search-->
            </div>

            <div class="page-content">
                <div class="page-header position-relative">

                </div><!--/.page-header-->

                <div class="row-fluid">
                    <div class="span12">
                        <!--PAGE CONTENT BEGINS-->

                        <form class="form-horizontal">
                                                    <div class="span10 offset1">
                                <div class="widget-box transparent invoice-box">
                                    <div class="widget-header widget-header-large">
                                        <h3 class="grey lighter pull-left position-relative">

                                            Application Form
                                        </h3>




                                    </div>

                                    <div class="widget-body">
                                        <div class="widget-main padding-24">
                                            <div class="row-fluid">
                                                <div class="row-fluid">
                                                    <div class="span6">
                                                        <div class="row-fluid">
                                                            <div class="span12 label label-large label-info arrowed-in arrowed-right">
                                                                <b>Personal Info</b>
                                                            </div>
                                                        </div>

                                                        <div class="row-fluid">
                                                            <ul class="unstyled spaced">
                                                                                                                                <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs1.getString(3)+" "+rs1.getString(4)+" "+rs1.getString(5)); %></b>
                                                                </li>

                                                                <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Birth Date: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs1.getString(6));%></b>
                                                                </li>



                                                                <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Blood Group: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs1.getString(7));%></b>
                                                                </li>



                                                                <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Address1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs1.getString(8));%></b>
                                                                </li>
                                                                                                                                    <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Address2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs1.getString(9));%></b>
                                                                </li>
                                                                                                                                    <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs1.getString(10));%></b>
                                                                </li>
                                                                                                                                    <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs1.getString(11));%></b>
                                                                </li>
                                                                                                                                    <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Nationality: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs1.getString(12));%></b>
                                                                </li>
                                                                                                                                    <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Marital Status: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs1.getString(13));%></b>
                                                                </li>
                                                                                                                                    <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Mobile Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs1.getString(14));}%></b>
                                                                </li>
                                                                                                                                    <br>
                                                                                                                                    <br>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                                                                                                            <%
                                                                                                                                    while(rs2.next())
                                                                                                                                    {
                                                                                                                                       %> 

                                                                                                        <div class="row-fluid">

                                                            <div class="span12 label label-large label-info arrowed-in arrowed-right">
                                                                <b>Education Info</b>
                                                            </div>
                                                        </div><!--/span-->

                                                    <!--/span-->
                                                </div><!--row-->

                                                <div class="space"></div>

                                                <div class="row-fluid">
                                                    <table class="table table-striped table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th class="center">Cource</th>
                                                                <th>Board/University</th>
                                                                <th class="hidden-phone">School/College</th>
                                                                <th class="hidden-480">Percentage/CGPA</th>
                                                                <th>Passing Year</th>
                                                            </tr>
                                                        </thead>

                                                        <tbody>
                                                            <tr>
                                                                                                                                <td class="center">
                                                                                                                                    <b><% out.print("S.S.C"); %></b>
                                                                                                                                </td>

                                                                <td>
                                                                                                                                        <b><% out.print(rs2.getString(3));%></b>
                                                                </td>
                                                                <td class="hidden-phone">
                                                                                                                                        <b><% out.print(rs2.getString(4));%></b>
                                                                </td>
                                                                                                                                    <td class="hidden-480">
                                                                                                                                        <b><% out.print(rs2.getString(5));%></b>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <b><% out.print(rs2.getString(6));%></b>
                                                                                                                                    </td>
                                                            </tr>

                                                            <tr>
                                                                                                                                <td class="center">
                                                                                                                                    <b><% out.print("H.S.C"); %></b>
                                                                                                                                </td>

                                                                <td>
                                                                                                                                        <b><% out.print(rs2.getString(7));%></b>
                                                                </td>
                                                                <td class="hidden-phone">
                                                                                                                                        <b><% out.print(rs2.getString(8));%></b>
                                                                </td>
                                                                <td class="hidden-480"> 
                                                                                                                                        <b><% out.print(rs2.getString(9));%></b>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <b><% out.print(rs2.getString(10));%></b>    
                                                                                                                                    </td>
                                                            </tr>

                                                            <tr>
                                                                                                                                <td class="center">
                                                                                                                                    <b><% out.print(rs2.getString(11)+"("+rs2.getString(14)+")");%> </b>

                                                                                                                                </td>

                                                                                                                                <td>
                                                                                                                                    <b><% out.print(rs2.getString(12));%></b>
                                                                                                                                </td>
                                                                <td class="hidden-phone">
                                                                                                                                        <b><% out.print(rs2.getString(13));%></b>
                                                                </td>
                                                                                                                                    <td class="hidden-480">
                                                                                                                                        <b><% out.print(rs2.getString(15));%></b>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <b><% out.print(rs2.getString(16));%></b>
                                                                                                                                    </td>
                                                            </tr>

                                                            <tr>
                                                                                                                                <td class="center">
                                                                                                                                    <b><% out.print(rs2.getString(17)+"("+rs2.getString(20)+")");%></b>
                                                                                                                                </td>
                                                                                                                                <td>
                                                                                                                                    <b><% out.print(rs2.getString(18));%></b>
                                                                                                                                </td>
                                                                <td class="hidden-phone">
                                                                                                                                        <b><% out.print(rs2.getString(19));%></b>
                                                                </td>
                                                                                                                                    <td class="hidden-480">
                                                                                                                                        <b><% out.print(rs2.getString(21));%></b>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <b><% out.print(rs2.getString(22));}%></b>
                                                                                                                                    </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                                                                    <% 
                                                                                                            while(rs3.next())
                                                                                                            {
                                                                                                           %>     

                                                                                                    <div class="span6">
                                                        <div class="row-fluid">
                                                            <div class="span12 label label-large label-info arrowed-in arrowed-right">
                                                                                                                                <b>Job Experience Details</b>
                                                            </div>
                                                        </div>

                                                        <div class="row-fluid">
                                                            <ul class="unstyled spaced">
                                                                <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Name of Last Company: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs3.getString(3));%></b>
                                                                </li>

                                                                <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Name of Last Post: &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs3.getString(4));%></b>
                                                                </li>

                                                                <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Name of Last Location: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs3.getString(5));%></b>
                                                                </li>


                                                                                                                                    <li>
                                                                    <i class="icon-caret-right blue"></i>
                                                                                                                                            Total Experience: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><% out.print(rs3.getString(8));}%></b>
                                                                </li>

                                                            </ul>
                                                        </div>
                                                    </div>
                                                <div class="hr hr8 hr-double hr-dotted"></div>



                                                <div class="space-6"></div>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>










                                                    </form>





                        <div class="space-6"></div>

                        <div class="row-fluid">


                            <div class="vspace"></div>

                            <!--/span-->
                        </div><!--/row-->







                        <!--/row-->

                        <!--PAGE CONTENT ENDS-->
                    </div><!--/.span-->
                </div><!--/.row-fluid-->
            </div><!--/.page-content-->

            <div class="ace-settings-container" id="ace-settings-container">


                <div class="ace-settings-box" id="ace-settings-box">
                    <div>
                        <div class="pull-left">
                            <select id="skin-colorpicker" class="hide">
                                <option data-class="default" value="#438EB9" />#438EB9
                                <option data-class="skin-1" value="#222A2D" />#222A2D
                                <option data-class="skin-2" value="#C6487E" />#C6487E
                                <option data-class="skin-3" value="#D0D0D0" />#D0D0D0
                            </select>
                        </div>
                        <span>&nbsp; Choose Skin</span>
                    </div>

                    <div>
                        <input type="checkbox" class="ace-checkbox-2" id="ace-settings-header" />
                        <label class="lbl" for="ace-settings-header"> Fixed Header</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace-checkbox-2" id="ace-settings-sidebar" />
                        <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace-checkbox-2" id="ace-settings-breadcrumbs" />
                        <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace-checkbox-2" id="ace-settings-rtl" />
                        <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                    </div>
                </div>
            </div><!--/#ace-settings-container-->
        </div><!--/.main-content-->
    </div><!--/.main-container-->

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-small btn-inverse">
        <i class="icon-double-angle-up icon-only bigger-110"></i>
    </a>

    <!--basic scripts-->

    <!--[if !IE]>-->

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

    <!--<![endif]-->

    <!--[if IE]>
<![endif]-->

    <!--[if !IE]>-->

    <script type="text/javascript">
        window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
    </script>

    <!--<![endif]-->

    <!--[if IE]>
<![endif]-->

    <script type="text/javascript">
        if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
    </script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--page specific plugin scripts-->

    <!--[if lte IE 8]>
      <script src="assets/js/excanvas.min.js"></script>
    <![endif]-->

    <script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="assets/js/jquery.ui.touch-punch.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.easy-pie-chart.min.js"></script>
    <script src="assets/js/jquery.sparkline.min.js"></script>
    <script src="assets/js/flot/jquery.flot.min.js"></script>
    <script src="assets/js/flot/jquery.flot.pie.min.js"></script>
    <script src="assets/js/flot/jquery.flot.resize.min.js"></script>

    <!--ace scripts-->

    <script src="assets/js/ace-elements.min.js"></script>
    <script src="assets/js/ace.min.js"></script>

    <!--inline scripts related to this page-->

    <script type="text/javascript">
        $(function() {
            $('.easy-pie-chart.percentage').each(function(){
                var $box = $(this).closest('.infobox');
                var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
                var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
                var size = parseInt($(this).data('size')) || 50;
                $(this).easyPieChart({
                    barColor: barColor,
                    trackColor: trackColor,
                    scaleColor: false,
                    lineCap: 'butt',
                    lineWidth: parseInt(size/10),
                    animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
                    size: size
                });
            })

            $('.sparkline').each(function(){
                var $box = $(this).closest('.infobox');
                var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
                $(this).sparkline('html', {tagValuesAttribute:'data-values', type: 'bar', barColor: barColor , chartRangeMin:$(this).data('min') || 0} );
            });




          var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
          var data = [
            { label: "social networks",  data: 38.7, color: "#68BC31"},
            { label: "search engines",  data: 24.5, color: "#2091CF"},
            { label: "ad campaings",  data: 8.2, color: "#AF4E96"},
            { label: "direct traffic",  data: 18.6, color: "#DA5430"},
            { label: "other",  data: 10, color: "#FEE074"}
          ]
          function drawPieChart(placeholder, data, position) {
              $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        tilt:0.8,
                        highlight: {
                            opacity: 0.25
                        },
                        stroke: {
                            color: '#fff',
                            width: 2
                        },
                        startAngle: 2
                    }
                },
                legend: {
                    show: true,
                    position: position || "ne", 
                    labelBoxBorderColor: null,
                    margin:[-30,15]
                }
                ,
                grid: {
                    hoverable: true,
                    clickable: true
                }
             })
         }
         drawPieChart(placeholder, data);

         /**
         we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
         so that's not needed actually.
         */
         placeholder.data('chart', data);
         placeholder.data('draw', drawPieChart);



          var $tooltip = $("<div class='tooltip top in hide'><div class='tooltip-inner'></div></div>").appendTo('body');
          var previousPoint = null;

          placeholder.on('plothover', function (event, pos, item) {
            if(item) {
                if (previousPoint != item.seriesIndex) {
                    previousPoint = item.seriesIndex;
                    var tip = item.series['label'] + " : " + item.series['percent']+'%';
                    $tooltip.show().children(0).text(tip);
                }
                $tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
            } else {
                $tooltip.hide();
                previousPoint = null;
            }

         });






            var d1 = [];
            for (var i = 0; i < Math.PI * 2; i += 0.5) {
                d1.push([i, Math.sin(i)]);
            }

            var d2 = [];
            for (var i = 0; i < Math.PI * 2; i += 0.5) {
                d2.push([i, Math.cos(i)]);
            }

            var d3 = [];
            for (var i = 0; i < Math.PI * 2; i += 0.2) {
                d3.push([i, Math.tan(i)]);
            }


            var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
            $.plot("#sales-charts", [
                { label: "Domains", data: d1 },
                { label: "Hosting", data: d2 },
                { label: "Services", data: d3 }
            ], {
                hoverable: true,
                shadowSize: 0,
                series: {
                    lines: { show: true },
                    points: { show: true }
                },
                xaxis: {
                    tickLength: 0
                },
                yaxis: {
                    ticks: 10,
                    min: -2,
                    max: 2,
                    tickDecimals: 3
                },
                grid: {
                    backgroundColor: { colors: [ "#fff", "#fff" ] },
                    borderWidth: 1,
                    borderColor:'#555'
                }
            });


            $('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
            function tooltip_placement(context, source) {
                var $source = $(source);
                var $parent = $source.closest('.tab-content')
                var off1 = $parent.offset();
                var w1 = $parent.width();

                var off2 = $source.offset();
                var w2 = $source.width();

                if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
                return 'left';
            }


            $('.dialogs,.comments').slimScroll({
                height: '300px'
            });


            //Android's default browser somehow is confused when tapping on label which will lead to dragging the task
            //so disable dragging when clicking on label
            var agent = navigator.userAgent.toLowerCase();
            if("ontouchstart" in document && /applewebkit/.test(agent) && /android/.test(agent))
              $('#tasks').on('touchstart', function(e){
                var li = $(e.target).closest('#tasks li');
                if(li.length == 0)return;
                var label = li.find('label.inline').get(0);
                if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
            });

            $('#tasks').sortable({
                opacity:0.8,
                revert:true,
                forceHelperSize:true,
                placeholder: 'draggable-placeholder',
                forcePlaceholderSize:true,
                tolerance:'pointer',
                stop: function( event, ui ) {//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
                    $(ui.item).css('z-index', 'auto');
                }
                }
            );
            $('#tasks').disableSelection();
            $('#tasks input:checkbox').removeAttr('checked').on('click', function(){
                if(this.checked) $(this).closest('li').addClass('selected');
                else $(this).closest('li').removeClass('selected');
            });


        })
    </script>
</body>
Contact GitHub API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Status Help
