status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

alias rm "rm -ir"
alias srm "sudo rm -ir"
alias ls "exa -la"
alias lsl "exa --long --tree"
alias svim "sudoedit"

function vim
	VTE_VERSION=100 command nvim $argv
end

function vi
	VTE_VERSION=100 command nvim $argv
end

#set fish_function_path $fish_function_path "/usr/lib/python3.6/site-packages/powerline/bindings/fish"
#powerline-setup
fish_vi_key_bindings

function fish_mode_prompt --description 'Displays current mode'
	if test "$fish_key_bindings" = "fish_vi_key_bindings"
		switch $fish_bind_mode
			case default
				set_color --bold red
				echo "N "
			case insert
				set_color --bold green
				echo "I "
			case replace
				set_color --bold green
				echo "R "
			case visual
				set_color --bold brmagenta
				echo "V "
		end
		set_color normal
		printf " "
	end
end

set -x fish_cursor_default block
set -x fish_cursor_visual block
set -x fish_cursor_insert line blink
set -x fish_cursor_replace_one underscore

set -gx EDITOR nvim
set -gx PATH '/home/x86kernel/.pyenv/shims' $PATH
set -gx PATH '/home/x86kernel/.yarn/bin' $PATH
set -gx PATH '/home/x86kernel/.local/bin' $PATH
set -gx PYENV_SHELL fish

set -gx GOPATH '/home/x86kernel/Work/go'
set -gx PATH $GOPATH/bin $PATH
set -gx PATH $PATH /opt/android-sdk/platform-tools

set -gx BAT_THEME 'TwoDark'

function sv
	sudo nvim $argv
end

#source /usr/share/autoenv_fish/activate.fish

#stty -ixon
#fortune | ponysay

eval (keychain --eval --quiet ~/.ssh/id_rsa)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

