# Load system zsh config (NixOS oh-my-zsh initialization)
[ -f /etc/zshrc ] && source /etc/zshrc

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#export ZSH="$HOME/.oh-my-zsh"

# Set-up icons for files/directories in terminal
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

# Starting down here, are set in user.nix

##### Minhas alias #######

alias update="sudo nixos-rebuild boot --flake /home/pc120/Meu-Nix_server#Nix"
alias updatef="nix flake update --flake /home/pc120/Meu-Nix_server"
alias updateall="nix flake update --flake /home/pc120/Meu-Nix_server && sudo nixos-rebuild boot --flake /home/pc120/Meu-Nix_server#Nix"
alias nixpush='git -C ~/Meu-Nix_server add -A && git -C ~/Meu-Nix_server commit -m "nixos update: $(date +%Y-%m-%d)" && git -C ~/Meu-Nix_server push'
alias ff="fastfetch"
alias vnc="vim Meu-Nix/hosts/Nix/config.nix"
alias vnp="vim Meu-Nix/modules/packages.nix"
alias vnf="vim Meu-Nix_server/flake.nix"
alias vzsh="vim ~/.zshrc"
alias ya="yazi"
alias resolv="svim /etc/resolv.conf"
alias svim="sudo vim"
alias cm="cmatrix"
alias sr="reboot"
alias ht="htop"
alias nl="sudo nix-env --list-generations --profile /nix/var/nix/profiles/system"
alias ndn="sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations"
alias nrc="sudo nix-env --profile /nix/var/nix/profiles/system --switch-generation"




