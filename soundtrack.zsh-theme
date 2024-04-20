# zsh

EMOJI=(👾)
HACKER="Be A Hacker Try Harder"

function home_tilda() {
	home=$(echo $HOME);
	if [ $(pwd) = $home ]; then
		echo "~";
	else
		echo $(pwd);
	fi

}

get_ips=$(ip -4 addr | grep -v "172.17" | grep -v '127.0.0.1'| grep -v 'secondery' | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | sed -z 's/\n/|/g;s/|\$/\n/' | rev | cut -c 2- | rev)

PROMPT='%{$reset_color%}%{$fg[red]%}┌───($get_ips) - $(whoami)%{$reset_color%} ✗ %{$fg[yellow]%}$(hostname) - $HACKER - $EMOJI)%{$reset_color%}
%{$reset_color%}%{$fg[red]%}└─%{$reset_color%}%{$fg[cyan]%}[$(home_tilda)]%{$reset_color%}
'
PROMPT+="%(?:%{$fg_bold[green]%}⋊> :%{$fg_bold[red]%}⋊> )%{$reset_color%}"


# PROMPT="$(random_emoji) -> "
# RPROMPT='%c'

# if you want to show git branch uncomment next lines
# RPROMPT='%{$fg_bold[colour255]%}%c$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

