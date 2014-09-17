<%@include file="core/framework/includes/bundleInitialization.jspf"
%><%
    // If the request is for another page
    if (request.getParameter("page") != null) {
        // Determinet the path to the JSP
        String path;
        // If the page does not include a forward slash, indicating it is pointing to the index page
        if (request.getParameter("page").contains("/")) {
            path = "/"+bundle.relativeBundlePath()+"packages/"+request.getParameter("page")+".jsp";
        }
        else {
            path = "/"+bundle.relativeBundlePath()+"packages/"+request.getParameter("page")+"/index.jsp";
        }
        // Render the JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher(path);
        dispatcher.forward(request, response);
        // Return to ensure none of the index page content below is processed
        return;
    }
%><!DOCTYPE html>
<html>
    <head>
        <title>Kinetic Baseline</title>
        <jsp:include page="common/interface/fragments/headContent.jsp"/>
    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<%=route.toHome()%>">Kinetic Baseline</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="http://help.kineticdata.com/request/bundles/baseline" target="_blank">Help</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="jumbotron">
            <div class="container">
                <h1>Welcome to Kinetic Baseline!</h1>
                <p>
                    This Kinetic Request bundle includes common diagnostic tools a well as examples
                    techniques that are useful when establishing a performance baseline or improving
                    existing performance of a Kinetic Request bundle.  To get started, generate a
                    environment baseline report by clicking the button below.
                </p>
                <p>
                    <a class="btn btn-primary btn-lg" href="<%=route.to("diagnostics/report")%>" role="button">
                        One-click performance report &raquo;
                    </a>
                </p>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-xs-12">
                    <h2>Baseline Diagnostics</h2>
                    <p>
                        The Diagnostic Console can be used to run utilities useful in diagnosing and
                        troubleshoot performance related issues with Kinetic Request bundles.
                    </p>
                    <a class="btn btn-default" href="<%=route.to("diagnostics")%>" role="button">
                        Diagnostic Console &raquo;
                    </a>
                </div>
                <div class="col-md-4 col-xs-12">
                    <h2>Common Improvements</h2>
                    <p>
                        The Common Improvements page describes techniques commonly used to improve
                        performance, as well as frequently encountered causes of performance issues
                        and the strategies used to resolve them.
                    </p>
                    <a class="btn btn-default" href="<%=route.to("improvements")%>" role="button">
                        Common Improvements &raquo;
                    </a>
                </div>
                <div class="col-md-4 col-xs-12">
                    <h2>Instrumentation</h2>
                    <p>
                        The Instrumentation Documentation includes multiple examples of minor 
                        changes that can be added to a bundle in order to expose and identify 
                        performance bottlenecks.
                    </p>
                    <a class="btn btn-default" href="<%=route.to("instrumentation")%>" role="button">
                        Instrumentation Documentation &raquo;
                    </a>
                </div>
            </div>
        </div>
                
        <footer>
            <div class='container'>
                <p>
                    <span>&copy; 2010-<%= new java.text.SimpleDateFormat("yyyy").format(new java.util.Date()) %> Kinetic Data, All Rights Reserved.</span>
                    <span class="pull-right">Kinetic Baseline v<%=VERSION%></span>
                </p>
            </div>
        </footer>
    </body>
</html>