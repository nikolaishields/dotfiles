# Prompt
setopt PROMPT_SUBST
show_virtual_env() {
  if [[ -n "$DIRENV_DIR" ]]; then
    echo "[$(basename $TF_VAR_subdomain)] "
  fi
}
PS1='$(show_virtual_env)'$PS1

