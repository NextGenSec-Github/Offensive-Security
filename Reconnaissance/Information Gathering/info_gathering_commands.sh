# SUBDOMAIN ENUMERATION

# Amass is a versatile subdomain enumeration tool that can discover subdomains through passive reconnaissance techniques, DNS brute-forcing, and other methods.
amass enum [-active] [-ip] -d google.com
amass enum -d google.com | grep google.com # To just list subdomains
amass enum -passive -d example.com # Passive enumeration
amass enum -active -d example.com # Active enumeration
amass enum -brute -w wordlist.txt -d example.com # Brute-Force enumeration

# CORS Brute-Force
ffuf -w subdomains-top1million-5000.txt -u http://10.10.10.208 -H 'Origin: http://FUZZ.crossfit.htb' -mr "Access-Control-Allow-Origin" -ignore-body







