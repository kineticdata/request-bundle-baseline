<%@include file="../../../core/framework/includes/bundleInitialization.jspf"
%><!-- META -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- FAVICON -->
<link rel="shortcut icon" href="<%=bundle.bundlePath()%>common/resources/images/favicon.ico" type="image/x-icon"/>

<!-- CSS -->
<link href="<%=bundle.bundlePath()%>libraries/bootstrap/css/bootstrap.css" media="all" rel="stylesheet"/>
<link href="<%=bundle.bundlePath()%>libraries/bootstrap/css/bootstrap-theme.css" media="all" rel="stylesheet"/>
<link href="<%=bundle.bundlePath()%>libraries/font-awesome/css/font-awesome.css" media="all" rel="stylesheet"/>
<link href="<%=bundle.bundlePath()%>libraries/google-fonts/fonts.css" media="all" rel="stylesheet"/>
<link href="<%=bundle.bundlePath()%>common/resources/css/baseline.css" media="all" rel="stylesheet"/>

<% if (request.getParameter("debug") != null) { %>
<!-- JAVASCRIPT -->
<script src="<%=bundle.bundlePath()%>libraries/jquery/jquery.js"></script>
<script src="<%=bundle.bundlePath()%>libraries/bootstrap/js/bootstrap.js"></script>
<script src="<%=bundle.bundlePath()%>libraries/jquery-datatables/jquery.dataTables.js"></script>
<script src="<%=bundle.bundlePath()%>libraries/momentjs/moment.js"></script>
<script src="<%=bundle.bundlePath()%>libraries/underscorejs/underscore.js"></script>
<% } else { %>
<!-- JAVASCRIPT -->
<script src="<%=bundle.bundlePath()%>libraries/jquery/jquery.min.js"></script>
<script src="<%=bundle.bundlePath()%>libraries/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=bundle.bundlePath()%>libraries/jquery-datatables/jquery.dataTables.min.js"></script>
<script src="<%=bundle.bundlePath()%>libraries/momentjs/moment.min.js"></script>
<script src="<%=bundle.bundlePath()%>libraries/underscorejs/underscore.min.js"></script>
<% } %>
<script src="<%=bundle.bundlePath()%>common/resources/js/baseline.js"></script>


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="<%=bundle.bundlePath()%>app/thirdparty/html5shiv/html5shiv.js"></script>
  <script src="<%=bundle.bundlePath()%>app/thirdparty/respondjs/respond.min.js"></script>
<![endif]-->