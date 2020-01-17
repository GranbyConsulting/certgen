
openssl genrsa -out server.key 2048

openssl req -new -key server.key -out server.csr -config server.conf

openssl x509 -req -in server.csr -extfile server.conf -extensions req_ext -CA root.crt -CAkey root.key -passin file:pass.txt -out server.crt -days 3650 -sha256

