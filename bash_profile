# ~/env/bash_profile – Login Shell Entrypoint
# ────────────────────────────────────────

# Load interactive shell config
[[ -f ~/.bashrc ]] && source ~/.bashrc

# Re-export essentials in login context
export TERM="xterm-256color"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Auto-load SSH key if available
ssh-add ~/.ssh/zenith_ed25519 2>/dev/null
ssh-add ~/.ssh/ms-dev-012_ed25519 2>/dev/null

# Created by `pipx` on 2025-05-25 16:40:32
export PATH="$PATH:/home/tom/.local/bin"
