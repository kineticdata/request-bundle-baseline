<%@include file="framework/packageInitialization.jspf"
%><%
    // Set the response type
    response.setContentType("text/plain");
    
    // LATENCY
    out.println("================================================================================");
    out.println("Latency: Web Server <-> AR Server");
    out.println("================================================================================");
    for (Map.Entry<String,String> entry : ArsServerHelper.getLatencyInformation(user, 10).entrySet()) {
        out.println(entry.getKey());
        out.println("  "+entry.getValue());
    }
    out.println();
    
    // LATENCY
    out.println("================================================================================");
    out.println("Latency: Web Server <-> AR Server <-> DB Server");
    out.println("================================================================================");
    for (Map.Entry<String,String> entry : ArsServerHelper.getLatencyToDatabaseInformation(user, 10).entrySet()) {
        out.println(entry.getKey());
        out.println("  "+entry.getValue());
    }
    out.println();
    
    // STATISTICS
    out.println("================================================================================");
    out.println("Statistics");
    out.println("================================================================================");
    out.println("Average Read Time: TODO");
    out.println("Average Write Time: TODO");
    out.println("Total Template Records: TODO");
    out.println("Total Submission Records: TODO");
    out.println("Total Answer Records: TODO");
    out.println();
    
    // AR SERVER INFORMATION
    out.println("================================================================================");
    out.println("AR Server Information");
    out.println("================================================================================");
    for (Map.Entry<String,String> entry : ArsServerHelper.getInformation(user).entrySet()) {
        out.println(entry.getKey());
        out.println("  "+entry.getValue());
    }
    out.println();
    
    // WEB SERVER INFORMATION
    out.println("================================================================================");
    out.println("Web Server Information");
    out.println("================================================================================");
    for (Map.Entry<String,String> entry : WebServerHelper.getInformation(pageContext.getServletContext()).entrySet()) {
        out.println(entry.getKey());
        out.println("  "+entry.getValue());
    }
%>