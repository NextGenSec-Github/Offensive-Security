import requests

def check_security_headers(url):
    headers = [
        'Strict-Transport-Security',
        'Content-Security-Policy',
        'X-Content-Type-Options',
        'X-Frame-Options',
        'X-XSS-Protection',
        'Referrer-Policy',
        'Permissions-Policy',
        'Expect-CT',
        'Cache-Control',
        'Access-Control-Allow-Origin'
    ]

    response = requests.get(url)
    missing_headers = [header for header in headers if header not in response.headers]

    if missing_headers:
        print(f'The following security headers are missing from {url}:')
        for header in missing_headers:
            print(f'- {header}')
    else:
        print(f'All security headers are present in {url}')

# Example Usage
urls = ['https://mywebsite']
for url in urls:
    check_security_headers(url)
