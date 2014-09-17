<%
    // Set the response type
    response.setContentType("text/plain");
%>
== Problems  
* Bad Queries
  * Returning too many records
  * Not using indexes on large data sets
  * Zero length fields in queries
* Unnecessary queries

== Improvements
* Reducing queries
  * Combining queries
  * Caching results
* Executing queries in parallel
* Deferred loading (waiting until human interaction to minimize the initial performance impact)