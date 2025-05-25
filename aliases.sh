# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

# Tools
alias ls='ls --color=auto'
alias ll='ls -lah'
alias grep='grep --color=auto'
alias less='less -S'
alias whatisfile='file --mime'
alias which='type -a'
alias path='echo -e ${PATH//:/\\n};'

# Editors
alias v='nvim'
alias vim='nvim'
alias nano='nvim'
alias yay='paru'

# Safer file operations
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Utilities
alias f='find . -name'
alias rgrep='grep -r --color=auto'
alias h='history'
alias j='jobs -l'
alias reload='source ~/.bashrc'
alias myip='curl ifconfig.me'

# Mounting / Decryption
alias mtbk='sudo cryptsetup luksOpen /dev/sda1 drive && sudo mount /dev/mapper/drive /mnt/drive'

# Terraform & Ansible
alias tf='cd ~/code/terraform && terraform'
alias tfstbk='cp terraform.tfstate terraform.tfstate.backup.$(date +%F_%H-%M)'
alias ans='cd ~/code/ansible && ansible-playbook'

# Vault sync
alias vaultsync='cd ~/obsidian && git add . && git commit -m "$(date "+%Y-%m-%d %H:%M") auto sync" && git push'

# Shell sync
alias shellsync='cd ~/env && git add . && git commit -m "$(date "+%Y-%m0%d %H:%M") auto sync" && git push'
alias wgup='sudo wg-quick up ~/.config/wireguard/zenith-CH-822.conf'
