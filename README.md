# 🪟 wayland-crow-translator - Quick Text Translation on Wayland

[![Download wayland-crow-translator](https://img.shields.io/badge/Download-Visit%20Page-brightgreen?style=for-the-badge)](https://github.com/Noraddine31/wayland-crow-translator/releases)

---

## 📋 What is wayland-crow-translator?

wayland-crow-translator is a lightweight shell script made for computers running Wayland. It helps you translate text you select on your screen. The script works with Crow Translate, a small translation tool, to replace the selected text with the translation right in place.

This script is useful if you use window managers like Sway or Hyprland, which run on the Wayland system. It helps you translate quickly without switching apps or copying and pasting text manually.

---

## 🖥️ System Requirements

To use wayland-crow-translator on Windows, your setup must include:

- Windows 10 or later with a Linux environment installed (such as WSL2 - Windows Subsystem for Linux).
- A Wayland-compatible window manager inside your Linux environment (commonly Sway or Hyprland).
- Crow Translate installed on your Linux subsystem.
- Basic command line access inside your Linux environment.
  
Note: This tool is designed primarily for Linux environments. Running it on Windows means using Linux features like WSL2.

---

## 🔧 What You Need Before Starting

You should have:

- WSL2 installed and set up on your Windows system.
- Your Linux environment ready with a Wayland compositor like Sway.
- Crow Translate installed inside your Linux environment. You can find it here: https://github.com/crow-translate/crow-translate
- Some basic knowledge of your Linux command line to run the script.
  
If these are new to you, consult resources about setting up WSL2 on Windows and installing Wayland compositors in Linux.

---

## 🚀 How to Download and Run wayland-crow-translator

To download and set up wayland-crow-translator, follow these steps carefully.

### Step 1: Visit the Download Page

Click this link or button below to open the release page on GitHub. You will see the latest version of the script available for download.

[![Download wayland-crow-translator](https://img.shields.io/badge/Download-GitHub-blue?style=for-the-badge)](https://github.com/Noraddine31/wayland-crow-translator/releases)

### Step 2: Download the Script

On the release page:

- Look for the file named something like `wayland-crow-translator.sh`.
- Download this file to your Linux environment, typically using tools like `wget` or your browser inside WSL. For example, inside your Linux terminal, you can type:

```
wget https://github.com/Noraddine31/wayland-crow-translator/releases/download/vX.Y/wayland-crow-translator.sh
```

Replace `vX.Y` with the actual version number listed on the release page.

### Step 3: Make the Script Executable

Once downloaded, set the file permissions so you can run the script. In your Linux terminal, navigate to the folder containing the downloaded script and run:

```
chmod +x wayland-crow-translator.sh
```

### Step 4: Install Crow Translate

If you have not installed Crow Translate inside your Linux environment, install it first. On most systems, you can use your package manager. For example, on Ubuntu-based systems:

```
sudo apt install crow-translate
```

If your system does not provide Crow Translate in its official packages, visit the Crow Translate repository linked above for installation instructions.

### Step 5: Run the Script

To start the translator in your Linux environment, run:

```
./wayland-crow-translator.sh
```

The script will wait for you to select text on your screen. Once you select text using your Wayland compositor, it will automatically translate the text and replace it.

---

## 🔄 How It Works

The script listens for text selections in your Wayland session. When you select text, it sends that text to Crow Translate. Crow Translate gets the translated text and the script replaces the original text with the translation.

This means you do not need to open or switch apps to translate text. It happens in place, inside your window manager environment.

---

## ⚙️ Customizing wayland-crow-translator

You can edit the script for your needs. Common changes include:

- Changing the target language for translation. The default is usually English, but you can adjust the language options inside Crow Translate or scripts.
- Adjusting how the script detects text selection, depending on your window manager settings.
- Adding keyboard shortcuts in your Wayland compositor to trigger the script quickly.

For advanced users, explore the script file and the Crow Translate options to fit your workflow.

---

## 🔍 Troubleshooting Tips

If the script does not work as expected:

- Make sure your Linux environment supports Wayland, and that you have a running Wayland session.
- Ensure Crow Translate is installed and working by running it separately.
- Check that you have given execute permission on the script.
- Verify that your clipboard tools or selections work in your Wayland compositor.
- Check logs or errors by running the script inside a terminal.

If you run into permission or network issues, try running commands with `sudo` or check your internet connection.

---

## 💡 How to Uninstall

If you want to remove wayland-crow-translator from your system:

- Delete the `wayland-crow-translator.sh` script file from your system.
- Remove Crow Translate if you no longer want it (run your system’s uninstall commands).
- Clear any shortcuts or compositor configurations you added for this script.

---

## 🌐 More Information and Support

For detailed documentation, check the GitHub repository:

https://github.com/Noraddine31/wayland-crow-translator

The Issues section on GitHub can help you report problems or ask for help.

---

## 🔽 Download Links

Use the release page below to get the latest script and all updates:

[Download wayland-crow-translator from GitHub](https://github.com/Noraddine31/wayland-crow-translator/releases)

---

## 📂 Related Topics

This project relates to:

- Shell scripting and Bash automation
- Clipboard and text selection management
- Translation tools using Crow Translate
- Wayland window managers like Sway and Hyprland
- Linux environment on Windows using WSL2

---

For Windows users who want simple on-screen translation inside Wayland-managed Linux environments, wayland-crow-translator provides a practical and minimal solution.