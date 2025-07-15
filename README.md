# ⚡ Bash Projects for Hackers

> A collection of powerful yet beginner-friendly Bash scripting projects made for ethical hackers, bug bounty hunters, and cybersecurity learners. Automate boring tasks and level up your recon like a Net Ninja. 🧠💻

![GitHub repo size](https://img.shields.io/github/repo-size/cozzybuddy/bash-projects)
![GitHub stars](https://img.shields.io/github/stars/cozzybuddy/bash-projects?style=social)
![License](https://img.shields.io/github/license/cozzybuddy/bash-projects)

---

## 🚀 What's Inside?

| Project                     | Description                                       |
|----------------------------|---------------------------------------------------|
| 🔍 **Auto Nmap Recon**     | Menu-driven Nmap scanner with multiple modes      |
| 🌐 **Subdomain Finder**    | Finds and resolves subdomains via wordlist        |
| 🛠️ **Port Knocker**        | Sends stealthy knock sequences automatically       |
| 📸 **URL Screenshotter**   | Captures website screenshots via curl/wkhtmltoimage|
| 📡 **LocalNet Scanner**    | Detects live hosts and open ports on your LAN     |
| 🔐 **Payload Injector**    | Lightweight XSS/SQLi payload test automation       |

> More tools coming soon... Stay tuned!

---

## ⚡ Requirements

- Bash (Linux/macOS/Kali/WSL)
- `nmap`, `curl`, `whois`, `dig`, `netcat` (install via `apt`)
- Optional tools: `xdotool`, `wkhtmltoimage`, `jq` (used in some scripts)

---

## 🧠 Why Bash?

Not every hacker wants to write Python. Bash is already in your terminal, fast, and great for automating recon tasks with minimal setup. These scripts help you **learn by building**, **save time**, and **boost your hacking workflow**.

---

## 🧪 Try It Out

```bash
git clone https://github.com/cozzybuddy/bash-projects.git
cd bash-projects
chmod +x *.sh
./auto-nmap.sh
