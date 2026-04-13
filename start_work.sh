#!/bin/bash

# WS 1: Firefox (Cek dulu apa udah jalan)
pgrep -x firefox >/dev/null || hyprctl dispatch exec "[workspace 1] firefox"

# WS 2: Btop
pgrep -x btop >/dev/null || hyprctl dispatch exec "[workspace 2] kitty --class btop_monitor -e btop"

# WS 3: The Command Center
# Terminal Utama (Setengah layar kiri)
hyprctl dispatch exec "[workspace 3] kitty --class kitty_utama"
sleep 0.5

# Matrix (Kanan bawah)
hyprctl dispatch exec "[workspace 3] kitty --config ~/.config/kitty/manhattan_theme.conf --class matrix_bg -e manhattan"
sleep 0.5

# Jam (Kanan atas)
hyprctl dispatch exec "[workspace 3] kitty --config ~/.config/kitty/manhattan_theme.conf --class clock_widget -e tty-clock -c -C 3 -s -b"
