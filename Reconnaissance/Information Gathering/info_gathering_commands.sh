# =====================
# INFORMATION GATHERING
# =====================

# SUBDOMAIN ENUMERATION

# Amass is a versatile subdomain enumeration tool that can discover subdomains through passive reconnaissance techniques, DNS brute-forcing, and other methods.
amass enum [-active] [-ip] -d google.com
amass enum -d google.com | grep google.com # To just list subdomains
amass enum -passive -d example.com # Passive enumeration
amass enum -active -d example.com # Active enumeration
amass enum -brute -w wordlist.txt -d example.com # Brute-Force enumeration

# CORS Brute-Force: Find subdomains allowed within the CORS policy
ffuf -w subdomains-top1million-5000.txt -u http://10.10.10.208 -H 'Origin: http://FUZZ.crossfit.htb' -mr "Access-Control-Allow-Origin" -ignore-body

# PUBLIC CLOUD ASSETS

# Scan AWS for bucket names listed in a file, enumerate all objects
s3scanner -bucket-file names.txt -enumerate

# Scan a bucket in GCP, enumerate all objects, and save results to database
s3scanner -provider gcp -db -bucket my-bucket -enumerate

# REVERSE DNS LOOKUP

nslookup <IP_address> # Queries the default DNS server or a specified DNS server to perform a reverse DNS lookup for the given IP address.
host <IP_address> # Reverse DNS Lookup with `host` command
dig -x <IP_address> # Reverse DNS lookup for the specified IP address. The -x flag indicates a reverse lookup.







