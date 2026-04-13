#!/bin/bash

# --- KONFIGURASI ---
# Ganti path ini sesuai lokasi kamu nyimpen koleksi wallpaper
WALLPAPER_DIR="$HOME/Wallpapers"

# Opsi Rofi (biar kelihatan judulnya)
ROFI_TITLE="🖼️ Pilih Wallpaper"

# Efek Transisi awww (bisa diganti: grow, wave, fade, wipe, none)
TRANSITION="wipe"
TRANSITION_STEP=90
TRANSITION_ANGLE=30

# --- LOGIKA ---

# 1. Cek folder ada atau nggak
if [[ ! -d "$WALLPAPER_DIR" ]]; then
  echo "Folder wallpaper tidak ditemukan di: $WALLPAPER_DIR"
  exit 1
fi

# 2. Ambil list file gambar (jpg, jpeg, png, gif, webp)
# Kita pake 'find' biar aman, lalu 'printf' untuk cuma ambil nama filenya aja
SELECTED=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" -o -iname "*.gif" \) -printf "%f\n" | sort | rofi -dmenu -i -p "$ROFI_TITLE")

# 3. Kalau user milih sesuatu (variabel SELECTED tidak kosong)
if [[ -n "$SELECTED" ]]; then
  # Full path ke gambar
  FULL_PATH="$WALLPAPER_DIR/$SELECTED"

  # Jalankan perintah awww
  awww img "$FULL_PATH" --transition-type "$TRANSITION" --transition-step "$TRANSITION_STEP" --transition-angle "$TRANSITION_ANGLE"

  # (Opsional) Kirim notifikasi biar tau udah ganti
  notify-send "Wallpaper Changed" "Set to $SELECTED" -i "$FULL_PATH"
fi
