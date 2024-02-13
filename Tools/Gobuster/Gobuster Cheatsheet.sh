# ===========================
# Gobuster Command Cheatsheet
# ===========================
# Enumerate directories and files on a web server
gobuster dir -u <URL> -w <wordlist> -t <threads>

# Filter results by HTTP status code
gobuster dir -u <URL> -w <wordlist> -t <threads> -s <status_code>

# Enable recursive mode to explore nested directories
gobuster dir -u <URL> -w <wordlist> -t <threads> -r

# Specify a custom User-Agent header
gobuster dir -u <URL> -w <wordlist> -t <threads> -a "<User-Agent>"

# Proxy requests through HTTP or SOCKS proxy
gobuster dir -u <URL> -w <wordlist> -t <threads> -x <proxy_url>

# Specify a custom extension for file enumeration
gobuster dir -u <URL> -w <wordlist> -t <threads> -x <extension>

# Include responses in the output
gobuster dir -u <URL> -w <wordlist> -t <threads> -o <output_file>

# Suppress the progress output
gobuster dir -u <URL> -w <wordlist> -t <threads> -q

# Increase verbosity level for debugging
gobuster dir -u <URL> -w <wordlist> -t <threads> -v

