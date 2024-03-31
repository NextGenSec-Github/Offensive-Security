# Fuzz usernames in a POST request to a signup page, checking for a response indicating that the username already exists.
ffuf -w /path/to/your/username_list -X POST -d "username=FUZZ&email=x&password=x&cpassword=x" -H "Content-Type: application/x-www-form-urlencoded" -u http://target-ip/signup -mr "username already exists"
