# =======
# OpenSSL
# =======
openssl genrsa -out example.key [bits] # Generate an RSA key
openssl rsa -in example.key -pubout # Print public key or modulus only
openssl rsa -in example.key -noout -modulus # Print public key or modulus only
openssl rsa -in example.key -text -noout # Print textual representation of RSA key

# DH
openssl dhparam -out dhparams.pem 2048 # Generate DH Parameters
openssl genpkey -paramfile dhparams.pem -out myprivate_key.pem # Generate Private Key
openssl pkey -in myprivate_key.pem -pubout -out mypublic_key.pem # Generate Public Key
openssl pkeyutl -derive -inkey myprivate_key.pem -peerkey friendspublic_key.pem -out shared_secret.bin # Derive the Shared Secret Key
openssl enc -aes-256-cbc -pass file:shared_secret.bin -in recipe.txt -out encrypted_recipe.enc # Encryption Using the Shared Secret Key
openssl aes-256-cbc -d -in encrypted_recipe.enc -pass file:shared_secret.bin -out recipe.txt # Decryption Using the Shared Secret Key

# ======
# Hashes
# ======
shasum -a 512 <filename> # Computes the SHA-512 hash value for the file specified
shasum -a 1 <filename> # Computes the SHA-1 hash value of the file
shasum -a 256 <filename> # Computes the SHA-256 hash value of the file
shasum -a 384 <filename> # Computes the SHA-384 hash value of the file
shasum -c <hash_file> # Verify a Hash Value
shasum -a <algorithm> <file1> <file2> # Multiple Files Hashing
shasum -a <algorithm> -b <filename> # Output Only the Hash Value

(Get-FileHa3p4sh -Algorithm SHA512 ’<filename>’).hash | clip # Powershell: This command generates and copies the hash directly to your clipboard.
