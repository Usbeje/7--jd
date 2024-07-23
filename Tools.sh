#!/bin/bash

# Logo ASCII
echo -e "
█████████╗ ██████╗  ██████╗ ██╗     ███████╗
╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
   ██║   ██║   ██║██║   ██║██║     ███████╗
   ██║   ██║   ██║██║   ██║██║     ╚════██║
   ██║   ╚██████╔╝╚██████╔╝███████╗███████║
   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝

by Hilal (Hexon_xploitz×Gabutc_exploitz)"

# Menu
echo "Pilih opsi:"
echo "1. Putar Musik"
echo "2. Download YouTube"
echo "3. chatgpt"

read -p "Masukkan pilihan (1/2/3): " pilihan

case $pilihan in
  1)
    # Menjalankan berkas musik.sh
    if [ -f "musik.sh" ]; then
      bash musik.sh
    else
      echo "Berkas musik.sh tidak ditemukan!"
    fi
    ;;
  2)
    # Menjalankan berkas yt.sh
    if [ -f "yt.sh" ]; then
      bash yt.sh
    else
      echo "Berkas yt.sh tidak ditemukan!"
    fi
    ;;
  3)
    # Menjalankan berkas chatgpt.py
    if [ -f "chatgpt.py" ]; then
      # Menggunakan ssh untuk menampilkan hasil di Termux dari Gitpod
      echo "Menjalankan chatgpt.py di Gitpod..."
      ssh 'usbeje-7jd-a25ek69bscb#zh_8CgYgvXvK3uJutp-3JXavYX_Z1569@usbeje-7jd-a25ek69bscb.ssh.ws-us115.gitpod.io' 'python3 /workspace/7--jd/chatgpt.py'
    else
      echo "Berkas chatgpt.py tidak ditemukan!"
    fi
    ;;
  *)
    echo "Pilihan tidak valid!"
    ;;
esac
