# =======
# OpenSSL
# =======
openssl genrsa -out example.key [bits] # Generate an RSA key
openssl rsa -in example.key -pubout # Print public key or modulus only
openssl rsa -in example.key -noout -modulus # Print public key or modulus only
openssl rsa -in example.key -text -noout # Print textual representation of RSA key













