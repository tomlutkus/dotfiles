# ~/env/bashrc – Modular User Shell Configuration
# ─────────────────────────────────────────────

# Exit early if not interactive
[[ $- != *i* ]] && return

# ───── Environment Setup ─────────────────────
export TERM="xterm-256color"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export SSH_ASKPASS="/usr/bin/ksshaskpass"

# ───── Prompt (Starship or Fallback) ─────────
if command -v starship >/dev/null 2>&1; then
    eval "$(starship init bash)"
else
    DARK_BLUE="\[\e[0;34m\]"
    LIGHT_BLUE="\[\e[1;34m\]"
    DIM="\[\e[2m\]"
    RESET="\[\e[0m\]"
    PS1="${LIGHT_BLUE}\u${DIM}@${DARK_BLUE}\h ${LIGHT_BLUE}\w${RESET}\$ "
fi

# ───── Modular Includes ──────────────────────
ENV_DIR="$HOME/env"

[[ -f "$ENV_DIR/aliases.sh"    ]] && source "$ENV_DIR/aliases.sh"
[[ -f "$ENV_DIR/functions.sh"  ]] && source "$ENV_DIR/functions.sh"
[[ -f "$ENV_DIR/machine/$(hostname).sh" ]] && source "$ENV_DIR/machine/$(hostname).sh"

# ───── Completions ───────────────────────────
[[ -x /usr/bin/terraform ]] && complete -C /usr/bin/terraform terraform

