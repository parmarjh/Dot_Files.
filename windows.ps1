# Usage:
# iwr -useb https://raw.githubusercontent.com/AlJohri/dotfiles/master/windows.ps1 | iex

Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop bucket add extra
scoop bucket add personal https://github.com/AlJohri/scoop-personal.git

scoop install sudo
scoop install wget
scoop install curl
scoop install windows-terminal
scoop install sublime-text
scoop install vscode
scoop install teamviewer
scoop install whatsapp
scoop install skype
scoop install vlc

scoop install personal/spotify
scoop install personal/1password
scoop install personal/docker

sudo Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# Within WSL, run:
# git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-wincred.exe"
