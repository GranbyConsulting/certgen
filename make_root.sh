rm -f root.key
rm -f root.crt
rm -f root.csr
rm -f root.srl

openssl genrsa -aes128 -passout file:pass.txt -out root.key 2048

openssl req -config root.conf -passin file:pass.txt -key root.key -new -x509 -days 7300 -sha256 -extensions ext -out root.crt

openssl x509 -noout -serial -in root.crt | cut -f2 -d= > root.srl

