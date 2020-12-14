autoload -Uz compinit

for dump in ~/.zcompdump(N.mh+24); do
  compinit
done

compinit -C
# Load config
for config in ~/.zsh.d/config/*; do 
  source $config
done

# Load custom functions
for function in ~/.zsh.d/functions/*; do 
  source $function
done

# Load aliases
for alias in ~/.zsh.d/aliases/*; do 
  source $alias
done

# Load completion
for completion in ~/.zsh.d/completion/*; do 
  source $completion
done

# Fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
