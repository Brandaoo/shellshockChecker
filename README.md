Shellshock Vulnerability Checker

This script checks if a website is vulnerable to the Shellshock vulnerability (CVE-2014-6271).

Summary:

The Shellshock vulnerability, also known as Bashdoor, is a security flaw that was discovered in September 2014 in the Unix Bash shell. The vulnerability allows attackers to execute arbitrary code or commands on a system by exploiting a flaw in the way Bash handles environment variables. This can potentially give attackers complete control over a vulnerable system.

Usage:

To use the script, simply run it with the domain or URL of the site you wish to check as the only argument:

./shellshock.sh example.com

If the site is vulnerable to Shellshock, the script will output:

Site example.com is vulnerable to Shellshock

If the site is not vulnerable to Shellshock, the script will output:

Site example.com is not vulnerable to Shellshock



Installation:

    Clone or download the repository:
    git clone https://github.com/Brandaoo/shellshockChecker.git

    Make the script executable:
    chmod +x shellshock.sh

Contributing:

Contributions are welcome! Feel free to submit a pull request or open an issue if you have any suggestions or improvements.
