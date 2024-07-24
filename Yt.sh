#!/bin/bash

# Fungsi untuk menampilkan logo ASCII
print_ascii_logo() {
    echo """
     __     ______  _    _   _      ____   _______ 
    \\ \\   / / __ \\| |  | | | |    / __ \\ |__   __|
     \\ \\_/ / |  | | |  | | | |   | |  | |   | |   
      \\   /| |  | | |  | | | |   | |  | |   | |   
       | | | |__| | |__| | | |___| |__| |   | |   
       |_|  \\____/ \\____/  |______\\____/    |_|   
    """
}

# Fungsi untuk mendownload video
download_video() {
    read -p "Masukkan URL YouTube: " url
    yt-dlp $url
    if [ $? -eq 0 ]; then
        echo "Video berhasil didownload!"
    else
        echo "Terjadi kesalahan saat mendownload video."
    fi
}

# Menampilkan logo ASCII dan mendownload video
print_ascii_logo
download_video
