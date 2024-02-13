-- Nmap script to enumerate HTTP information

-- Description: This script sends HTTP requests to a web server and retrieves information about the server version, supported methods, and common directories.

-- Usage: nmap -p 80,443 --script http-enumeration <target>

-- Author: Your Name

-- Version: 1.0

-- Script category: Discovery

local http = require("http")

-- Function to handle the HTTP response
local function httpEnumeration(host, port)
  local response = http.get(host, port, "/", nil, {["User-Agent"] = "Nmap HTTP Enumeration Script"})
  
  if response.status == 200 then
    print("HTTP server information for " .. host .. ":" .. port)
    print("Server version: " .. response.headers["Server"])
    print("Supported methods: " .. response.headers["Allow"])
    print("Common directories:")
    
    -- Add more common directories as needed
    local directories = {"/", "/admin", "/login", "/images", "/css"}
    for _, dir in ipairs(directories) do
      local dir_response = http.get(host, port, dir)
      if dir_response.status == 200 then
        print(" - " .. dir)
      end
    end
  else
    print("Failed to retrieve HTTP information from " .. host .. ":" .. port)
  end
end

-- Register the script with Nmap
portrule = function(host, port)
  return port.protocol == "tcp" and (port.number == 80 or port.number == 443)
end

action = function(host, port)
  httpEnumeration(host, port.number)
end

-- To use this script, save the content to a file named http-enumeration.nse. Then, you can run Nmap with the script against your target: nmap -p 80,443 --script http-enumeration -d <target>

 



