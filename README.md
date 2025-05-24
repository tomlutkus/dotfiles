# 🛠 Tom Lutkus – Dotfiles

My personal Linux dotfiles, optimized for terminal-heavy workflows, clean shell environments, and minimal distractions. Managed under `~/env`, symlinked to `$HOME`.

## 🔧 Features

- Bash-based shell config
- Kitty terminal with theme loader
- Neovim config (Lua)
- Modular aliases, functions, and environment variables
- Safe secrets structure (excluded from Git)
 
## 📁 Directory Structure

```bash
~/env/
├── bashrc
├── bash_profile
├── aliases.sh
├── config/
│ ├── kitty/
│ │ ├── kitty.conf
│ │ └── themes/
│ └── nvim/
├── link.sh
├── gitconfig
└── secrets/ # (excluded from Git)
```

## 🚀 Usage

1. Clone the repo:
   ```bash
   git clone git@github.com:tomlutkus/dotfiles.git ~/env
   ```
2. Link everthing:
   ```bash
   cd ~/code/shell
   ./link-shell.sh
   ```
3. Customize `secrets/`, `aliases.sh`, or host-specific logic under `machine/`

## 🔒 Secrets

`~/env/secrets/` is excluded via .gitignore and contains:

- `*.env` files
- API keys
- Machine-specific tokens
- Do not commit this folder.

Feel free to fork or steal whatever helps.
