This repo contains scripts and configuration files for using OpenSSL to create a Certification Authority certificate, and then using that to create individual server certificates. The configuration files define the organization details, and in the case of the server, the DNS names and IP addresses to be included in the DN and in the SAN extension. The root certificate is constrained to only allow a path length of one. If you want to add name constraints to the root certificate, edit the ext section to contain something like...

nameConstraints = permitted;DNS:.local,permitted;IP:192.168.0.0/255.255.0.0

...according to the names that you will allow the root to be used for.

The pass.txt file should be edited to keep your keys secure.
