#!/bin/bash

# ┌──────────────────────────────────┐
# │       Auto Nmap Recon Script     │
# │        By: Red team Radar        │
# └──────────────────────────────────┘

timestamp=$(date +%Y%m%d_%H%M%S)

# 🎯 Greeting
echo "────────────────────────────────────────────"
echo "🧠 Auto Nmap Recon Tool - By Red Team Radar"
echo "🕒 Started at: $timestamp"
echo "────────────────────────────────────────────"

# 📥 Target Input
read -p "📌 Enter target IP or domain: " target
if [[ -z "$target" ]]; then
  echo "❌ No target entered. Exiting."
  exit 1
fi

# 📁 Create output directory
output_dir="recon_${target}_${timestamp}"
mkdir -p "$output_dir"

# 🧩 Define Functions

fast_scan() {
  echo "🔎 Running Fast Scan..."
  nmap -T4 -F "$target" -oN "$output_dir/fast_scan.txt"
}

full_scan() {
  echo "🔎 Running Full Port Scan..."
  nmap -p- "$target" -oN "$output_dir/full_scan.txt"
}

version_scan() {
  echo "🔍 Running Service Version Detection..."
  nmap -sV "$target" -oN "$output_dir/version_scan.txt"
}

os_scan() {
  echo "💻 Running OS Detection..."
  sudo nmap -O "$target" -oN "$output_dir/os_detection.txt"
}

vuln_scan() {
  echo "🚨 Running Vulnerability Scripts..."
  nmap --script vuln "$target" -oN "$output_dir/vuln_scan.txt"
}

aggressive_scan() {
  echo "⚔️ Running Aggressive Scan..."
  nmap -A "$target" -oN "$output_dir/aggressive_scan.txt"
}

# 🧾 Menu Display
echo ""
echo "🛠️  Select scan types (separate by commas):"
echo "1) Fast Scan"
echo "2) Full Port Scan"
echo "3) Service Version Detection"
echo "4) OS Detection"
echo "5) Vulnerability Scan"
echo "6) Aggressive Scan"
echo ""

read -p "Your choices (e.g., 1,3,5): " choices

# 🔁 Loop through choices
IFS=',' read -ra selected <<< "$choices"
for choice in "${selected[@]}"; do
  case "$choice" in
    1) fast_scan ;;
    2) full_scan ;;
    3) version_scan ;;
    4) os_scan ;;
    5) vuln_scan ;;
    6) aggressive_scan ;;
    *) echo "❌ Invalid option: $choice" ;;
  esac
done

echo ""
echo "✅ All selected scans completed."
echo "📁 Check results in: $output_dir"
