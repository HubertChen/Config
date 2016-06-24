PROMPT='%{$fg_bold[blue]%}# %{$reset_color%}%{$fg[cyan]%n%}: %{$reset_color%}%{$fg[green]%}$(get_pwd) $(put_spacing)%{$reset_color%}%{$fg_bold[yellow]%}%@%{$reset_color%}
%{$fg_bold[yellow] ➜ %} %{$reset_color%}'

function put_spacing() { 
	local termwidth
	(( termwidth = ${COLUMNS} - ${#$(get_pwd)} - ${#USER} - 10 - 2 - ${#$(git_prompt_info)} ))

	local spacing=""
	for x in {1..$termwidth}; do
		spacing="${spacing} "
	done
	echo $spacing
}

function get_pwd() {
	echo "${PWD/$HOME/~}"
}
