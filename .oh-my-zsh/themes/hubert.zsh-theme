PROMPT='%{$fg_bold[cyan]%n%}: %{$reset_color%}%{$fg_bold[green]%}$(get_pwd) $(put_spacing)%{$reset_color%}⌚%{$fg_bold[red]%}%@%{$reset_color%}
%{$fg_bold[red] ➜ %} %{$reset_color%}'

function put_spacing() { 
	local termwidth
	(( termwidth = ${COLUMNS} - ${#$(get_pwd)} - ${#USER} - 11 - 2))

	local spacing=""
	for x in {1..$termwidth}; do
		spacing="${spacing} "
	done
	echo $spacing
}

function get_pwd() {
	echo "${PWD/$HOME/~}"
}
