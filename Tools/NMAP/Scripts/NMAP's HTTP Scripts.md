# HTTP Nmap Scripts

Nmap offers a variety of scripts tailored for enumerating information and vulnerabilities related to HTTP services. Here are some commonly used HTTP scripts:

## http-enum

- **Description:** Enumerates directories and files on web servers by making HTTP requests.
- **Usage:** `nmap -p 80,443 --script http-enum <target>`

## http-vuln

- **Description:** Detects known vulnerabilities in HTTP services based on service banners and responses.
- **Usage:** `nmap -p 80,443 --script http-vuln <target>`

## http-default-accounts

- **Description:** Checks for default accounts and common passwords on web services.
- **Usage:** `nmap -p 80,443 --script http-default-accounts <target>`

## http-methods

- **Description:** Lists supported HTTP methods (GET, POST, etc.) on web servers.
- **Usage:** `nmap -p 80,443 --script http-methods <target>`

## http-shellshock

- **Description:** Checks for the Shellshock vulnerability in web servers.
- **Usage:** `nmap -p 80,443 --script http-shellshock <target>`

## http-sql-injection

- **Description:** Detects SQL injection vulnerabilities in web applications.
- **Usage:** `nmap -p 80,443 --script http-sql-injection <target>`

## http-robots.txt

- **Description:** Retrieves and parses the robots.txt file from web servers to identify restricted content.
- **Usage:** `nmap -p 80,443 --script http-robots.txt <target>`

## http-unsafe-output-escaping

- **Description:** Checks for unsafe output escaping in web applications, which can lead to cross-site scripting (XSS) vulnerabilities.
- **Usage:** `nmap -p 80,443 --script http-unsafe-output-escaping <target>`

## http-backup-finder

- **Description:** Searches for backup files and directories on web servers.
- **Usage:** `nmap -p 80,443 --script http-backup-finder <target>`

## http-headers

- **Description:** Retrieves HTTP headers from web servers, providing information about the server and its configuration.
- **Usage:** `nmap -p 80,443 --script http-headers <target>`

## More HTTP Nmap Scripts

### http-php-version

- **Description:** Attempts to determine the version of PHP running on the web server by analyzing HTTP response headers.
- **Usage:** `nmap -p 80,443 --script http-php-version <target>`

### http-wordpress-enum

- **Description:** Enumerates information about WordPress installations, including version numbers, plugins, and themes.
- **Usage:** `nmap -p 80,443 --script http-wordpress-enum <target>`

### http-wordpress-brute

- **Description:** Performs brute-force password attacks against WordPress login pages.
- **Usage:** `nmap -p 80,443 --script http-wordpress-brute <target>`

### http-vhosts

- **Description:** Enumerates virtual hosts on web servers, revealing multiple domains hosted on the same IP address.
- **Usage:** `nmap -p 80,443 --script http-vhosts <target>`

### http-iis-short-name-brute

- **Description:** Exploits the IIS tilde vulnerability to brute-force short file and directory names on IIS servers.
- **Usage:** `nmap -p 80,443 --script http-iis-short-name-brute <target>`

### http-iis-webdav-vuln

- **Description:** Checks for vulnerabilities related to WebDAV functionality in IIS servers.
- **Usage:** `nmap -p 80,443 --script http-iis-webdav-vuln <target>`

### http-userdir-enum

- **Description:** Enumerates user directories (~/public_html) on web servers, revealing potentially sensitive user-specific content.
- **Usage:** `nmap -p 80,443 --script http-userdir-enum <target>`

### http-waf-detect

- **Description:** Attempts to detect the presence of a Web Application Firewall (WAF) protecting the web server.
- **Usage:** `nmap -p 80,443 --script http-waf-detect <target>`

### http-frontpage-login

- **Description:** Checks for unauthenticated access to Microsoft FrontPage administration features.
- **Usage:** `nmap -p 80,443 --script http-frontpage-login <target>`

## http-wordpress-plugins

- **Description:** Lists installed plugins on WordPress sites, including version numbers.
- **Usage:** `nmap -p 80,443 --script http-wordpress-plugins <target>`

## http-wordpress-themes

- **Description:** Enumerates installed themes on WordPress sites.
- **Usage:** `nmap -p 80,443 --script http-wordpress-themes <target>`

## http-git

- **Description:** Identifies Git repositories exposed via HTTP and retrieves repository information.
- **Usage:** `nmap -p 80,443 --script http-git <target>`

## http-git-repository-info

- **Description:** Extracts information from exposed Git repositories, such as commit history and file listings.
- **Usage:** `nmap -p 80,443 --script http-git-repository-info <target>`

## http-gitweb-projects-enum

- **Description:** Enumerates projects hosted on Gitweb installations.
- **Usage:** `nmap -p 80,443 --script http-gitweb-projects-enum <target>`

## http-phpmyadmin-dir-traversal

- **Description:** Checks for directory traversal vulnerabilities in phpMyAdmin installations.
- **Usage:** `nmap -p 80,443 --script http-phpmyadmin-dir-traversal <target>`

## http-drupal-enum

- **Description:** Enumerates Drupal installations and gathers information such as version numbers and installed modules.
- **Usage:** `nmap -p 80,443 --script http-drupal-enum <target>`
