#!/bin/bash

# Direktori tempat lagu-lagu disimpan
MUSIC_DIR="/storage/emulated/0/Musik_sh"

# Daftar lagu dalam array
songs=(
  "cintainispeedup.mp3"
  "henrymoodie.mp3"
  "aurora.mp3"
  "kembalipulang.mp3"
  "penjagahati.mp3"
  "yangtelahmerelakanmu.mp3"
  "mengejarmimpi.mp3"
  "cintaluarbiasa.mp3"
  "malailatjugatahu.mp3"
  "sial-mahalini.mp3"
  "tolong-budidoremi.mp3"
  "Habibi-Ya-Muhammad.mp3"
  "shallallahu ala muhammad.mp3"
  "jagahatimuspeedup.mp3"
  "sampaijumpa-endak.mp3"
  "years7ago.mp3"
)

# Fungsi untuk memutar lagu berdasarkan pilihan
play_music() {
  selected_song=${songs[$1-1]}
  mpv "$MUSIC_DIR/$selected_song" --loop-file=no --no-terminal
}

# Fungsi untuk memutar semua lagu dalam playlist
play_all_music() {
  for song in "${songs[@]}"; do
    mpv "$MUSIC_DIR/$song" --loop-file=no --no-terminal
  done
}

# Fungsi untuk menghentikan semua instance mpv
stop_music() {
  pkill mpv
}

# Menu
show_menu() {
  cat << "EOF"

███╗   ███╗██╗   ██╗███████╗██╗██╗  ██╗
████╗ ████║██║   ██║██╔════╝██║██║ ██╔╝
██╔████╔██║██║   ██║███████╗██║█████╔╝ 
██║╚██╔╝██║██║   ██║╚════██║██║██╔═██╗ 
██║ ╚═╝ ██║╚██████╔╝███████║██║██║  ██╗
╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═╝
                                       
by Hilal (Xenon_xploitz & Gabutc_exploitz)

Pilih menu musik:
1. cinta ini membunuhku speed up (1)
2. henry moodie (2)
3. aurora (3)
4. kembali pulang (4)
5. jiwa bersedih (5)
6. penjaga hati (6)
7. yang telah merelakanmu (7)
8. mengejar mimpi (8)
9. cinta luar biasa (9)
10. malaikat juga tahu (10)
11. sial-mahalini (11)
12. tolong-budidoremi (12)
13. habibi-Ya-Muhammad (13)
14. Shollallahu ala muhammad (14)
15. yangtelahmerelakanmu(speed up) (15)
16. sampai jumpa-endak (16)
17. 7 years ago (17)
18. Play all songs
?. Stop musik (ketik stop)

EOF
}

# Main loop
while true; do
  show_menu
  read -p "pilih ngab : " choice

  if [[ "$choice" == "stop" ]]; then
    stop_music
    echo "Musik berhenti cok."
    continue
  elif [[ "$choice" == "18" ]]; then
    play_all_music
  else
    play_music $choice
  fi
done
