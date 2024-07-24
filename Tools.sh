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
    if [ -f "chatgpt.py" ]; then
      python chatgpt.py
    else
      echo "Berkas chatgpt.py tidak ditemukan!"
    fi
    ;;
  *)
    echo "Pilihan tidak valid!"
    ;;
esac
