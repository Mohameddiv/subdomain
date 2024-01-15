#!/bin/bash

# AlienVault OTX API key
api_key="a70cde795be80ab10244bd5bfc65dc79b60101bf7d302600bb5d48d033aa191b"

# Domain to search for subdomains
#domain="google.com"

# OTX API endpoint for subdomains
endpoint="https://otx.alienvault.com/api/v1/indicators/domain/$1/passive_dns"

# Headers for the API request
headers="X-OTX-API-KEY: $api_key"

# Make the API request
response=$(curl -s -H "$headers" "$endpoint")

# Parse the JSON response
subdomains=$(echo "$response" | jq -r '.passive_dns[].hostname' | sort -u)

# Save the subdomains to a file
echo "$subdomains" 
