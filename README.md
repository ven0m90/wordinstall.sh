Wordlists Installer for Bug Bounty & Pentesting
This project provides a convenient Bash script to automate the download and installation of essential wordlists commonly used in bug bounty hunting and penetration testing. Forget manual downloads and organizing; this script streamlines your setup process, ensuring you have the right tools for effective reconnaissance and brute-forcing.

Purpose & Motivation
Effective bug bounty hunting and penetration testing heavily rely on comprehensive wordlists for tasks like directory brute-forcing, subdomain enumeration, and password cracking. Manually acquiring and managing these wordlists can be time-consuming and inconsistent. This script was created to simplify the setup process, ensuring that security professionals and enthusiasts have immediate access to a curated collection of widely-used and effective wordlists, allowing them to focus more on testing and less on environment setup.

Features
Automated Download: Automatically fetches popular wordlists from various trusted sources.

Organized Installation: Installs wordlists into a standardized, accessible location (e.g., /usr/share/wordlists/).

Permissions Handling: Sets appropriate permissions for downloaded files.

Time-Saving: Drastically reduces the manual effort of setting up your testing environment.

Essential Collection: Focuses on wordlists critical for bug bounty, web application, and network penetration testing.

Technologies Used
Bash Scripting: For automating the download and installation process.

curl: Used for downloading files from URLs.

chmod: For managing file permissions.

Installation
To install the wordlists using this script, open your terminal and run the following command. This command will download the script, make it executable, and then run it.

curl -L https://raw.githubusercontent.com/ven0m90/wordinstall.sh/main/wordinstall.sh -o wordinstall.sh;chmod +x wordinstall.sh;bash wordinstall.sh

Usage
Once installed, your wordlists will typically be located in standard system paths (e.g., /usr/share/wordlists/). You can then use these wordlists with your favorite penetration testing tools, such as:

dirb / dirbuster / ffuf / gobuster: For web directory and file brute-forcing.

subfinder / assetfinder / dnsenum: For subdomain enumeration.

hydra / john / hashcat: For password cracking and brute-forcing authentication.

Example (using with gobuster):

gobuster dir -u http://example.com -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt

Disclaimer
This script downloads publicly available wordlists for legitimate and ethical cybersecurity activities. Always ensure you have proper authorization and adhere to ethical guidelines and legal regulations when conducting any penetration testing or bug bounty activities. The use of these wordlists for unauthorized or malicious purposes is strictly forbidden.
