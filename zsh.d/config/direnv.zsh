# Direnv
eval "$(direnv hook zsh tmux)"
%{ for env in environments ~}
direnv allow /home/${env}
%{ endfor ~}
