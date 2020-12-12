# Auto-install plugins if they haven't been installed
plugins=(git fzf direnv vi-mode zsh-completions terraform)
if [ -f ${HOME}/.zplug/init.zsh ]; then
    source ${HOME}/.zplug/init.zsh
else
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi
vim +PlugInstall +qall >/dev/null 2>&1
zplug "plugins/direnv",            from:oh-my-zsh
zplug "plugins/fzf",               from:oh-my-zsh
zplug "plugins/git",               from:oh-my-zsh
zplug "plugins/ssh-agent",         from:oh-my-zsh
zplug "plugins/tmux",              from:oh-my-zsh
zplug "plugins/zsh-completions",   from:oh-my-zsh
zplug "plugins/kubectl",           from:oh-my-zsh
zplug "plugins/terraform",         from:oh-my-zsh
zplug "~/.zsh", from:local
if ! zplug check; then
    zplug install || true
fi
zplug load || true
