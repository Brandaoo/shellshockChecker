#!/bin/bash

# Shellshock vulnerability checker script
# Author: Gabriel Brandão da Cruz Runa
# Version: 1.0

# Function to display the warning banner
show_banner() {
  echo "**************************************"
  echo "*     CVE-2014-6271 - Shellshock     *"
  echo "**************************************"
}

# Function to check if the site is vulnerable
check_vulnerability() {
  local site=$1

  # Send an HTTP request to the target site
  local response=$(curl -s -H "User-Agent: () { :; }; echo VULNERABLE" "$site")

  # Check if the HTTP response indicates the presence of the vulnerability
  if echo "$response" | grep -q "VULNERABLE"; then
    echo "Site $site is vulnerable to Shellshock"
    return 0
  else
    echo "Site $site is not vulnerable to Shellshock"
    return 1
  fi
}

# Check if the 'curl' utility is installed
if ! which curl > /dev/null; then
  echo "The 'curl' utility is not installed. Please install curl and try again."
  exit 1
fi

# Check if a site was provided as an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 [site]"
  exit 1
fi

# Define the site as a variable
site=$1

# Check if the site is valid
if ! curl -s --head "$site" > /dev/null; then
  echo "Invalid site: $site"
  exit 1
fi

# Execute the vulnerability check and display the warning banner
show_banner
check_vulnerability "$site"
