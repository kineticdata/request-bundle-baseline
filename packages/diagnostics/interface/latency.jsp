== Web Server Latency (Client <-> Web Server)
Calculated by having the Javascript make repeated requests for an empty static file.

== Remedy Server Latency (Web Server <-> Remedy Server)
Calculated by making ARApi calls that do not require database interaction.

== Remedy Server Latency (Remedy Server <-> Database Server)
Calculated by making an ARApi call to retrieve a record by id.