alias gs="git status"
alias gc="git commit"
alias ls="exa --long --header --git"
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias pacrem="sudo pacman -Rns"
alias cpu="cpupower-gui"
alias db="mysql -u cezary -p"
alias show="kak -ro"
alias update-all="echo --- PACMAN --- && sudo pacman -Syyuu && echo \n--- AUR ---  && yay -Syyuu && echo \n--- FLATPAK ---  && flatpak update"

# Devour
alias zathura="devour zathura"
alias sxiv="devour sxiv"
alias pcmanfm="devour pcmanfm"
alias snappy="devour snappy"

source ~/.nvm-fish/nvm.fish
