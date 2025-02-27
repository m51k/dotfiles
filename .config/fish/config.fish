if status --is-login
	# commands to run on login
	fish_add_path $HOME/.local/bin
	fish_add_path $HOME/.config/plasma-workspace/env/path.sh
end
if status is-interactive
	# commands to run in interactive session
	set -U fish_greeting ""
	abbr -a dotfiles 'git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
	set -gx EDITOR nvim
	set -gx MANPAGER "nvim +Man!"
	zoxide init fish | source
	alias cd z
end
