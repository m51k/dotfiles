if status --is-login
	# commands to run on login
	fish_add_path $HOME/.local/bin
	fish_add_path $HOME/.config/plasma-workspace/env/path.sh
end
if status is-interactive
	# commands to run in interactive session
	set -U fish_greeting ""
	set -gx EDITOR nvim
	set -gx MANPAGER "nvim +Man!"

	set -gx ROCM_PATH /opt/rocm
	set -gx HSA_OVERRIDE_GFX_VERSION 10.3.0
	set -gx HIP_VISIBLE_DEVICES 0
	pyenv init - fish | source
	zoxide init fish | source
end
