# WezTerm shell integration (semantic zones + cwd + user vars)
if [[ "$TERM_PROGRAM" == "WezTerm" ]]; then
  source ~/.config/wezterm/wezterm.sh
fi

# autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
