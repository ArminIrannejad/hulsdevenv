#!/usr/bin/env bash

command -v conda >/dev/null 2>&1 && exit 0

anaconda_installer="Anaconda3-2024.10-1-Linux-x86_64.sh"
installer_url="https://repo.anaconda.com/archive/${anaconda_installer}"

curl -s -O "${installer_url}"
bash "${anaconda_installer}" -b
rm "${anaconda_installer}"

