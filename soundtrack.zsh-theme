# zsh

EMOJI=(💩 🐦 🚀 🐞 🎨 🍕 🐭 👽 ☕️ 🔬 💀 🐷 🐼 🐶 🐸 🐧 🐳 🍔 🍣 🍻 🔮 💰 💎 💾 💜 🍪 🌞 🌍 🐌 🐓 🍄 )

function random_emoji {
  echo -n "$EMOJI[$RANDOM%$#EMOJI+1] "
}

PROMPT='%{$reset_color%}%{$fg[red]%}┌───$(whoami)%{$reset_color%} ✗ %{$fg[yellow]%}$(hostname) - %{$fg[cyan]%}[$(pwd)]%{$reset_color%}$
$(git_prompt_info)'
PROMPT+="%{$reset_color%}%{$fg[red]%}└─> %{$reset_color%}$(random_emoji)%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"

# PROMPT="$(random_emoji) -> "
# RPROMPT='%c'

# if you want to show git branch uncomment next lines
# RPROMPT='%{$fg_bold[colour255]%}%c$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

