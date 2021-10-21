# Ubuntu Set

[![Build](https://github.com/lavrenov/ubuntu-set/workflows/Build/badge.svg)](https://github.com/lavrenov/ubuntu-set)
[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/lavrenov/ubuntu-set?label=version)](https://github.com/lavrenov/ubuntu-set)
[![GitHub repo size](https://img.shields.io/github/repo-size/lavrenov/ubuntu-set)](https://github.com/lavrenov/ubuntu-set)
[![GitHub last commit](https://img.shields.io/github/last-commit/lavrenov/ubuntu-set)](https://github.com/lavrenov/ubuntu-set/commits/main)

This script install base applications

## System requirements

The script is tested on **Ubuntu 18.04, 20.04**

## What does this script?

- Remove `snapd`, `seahorse`, `firefox`
- Update all installed packages
- Fix audio by set `options snd_hda_intel power_save=0`
- Install `curl`
- Install applications from `apps` directory:
  - Google Chrome
  - FileZilla
  - Git
  - Inkscape
  - JetBrains Toolbox
  - KeePassXC
  - Krita
  - LibreOffice
  - qBittorrent
  - Sublime Text
  - Telegram
  - Totem
  - Gnome Tweak Tool
  - Yandex Disk
  - Zoom
- Clean

## If I don't want to install any application?

Remove script from `apps` directory (eq: Google Chrome file `apps/chrome.sh`)

## How I can add own application to install?

Add your script to `apps` directory.

## How this is work

1. **Clone repository** `git clone https://github.com/lavrenov/ubuntu-set.git ubuntu-set`
2. **Go to folder** `cd ubuntu-set`
3. **Set permissions for all \*.sh files** `find -name '*.sh' -type f -exec chmod ugo+x {} ';'`
4. **Run** `sudo ./install.sh [username]`
