bind "[101;9u" edit_command_buffer

op completion fish | source

set -gx GOPATH $HOME/go
set -gx EDITOR nvim
set -gx GIT_EDITOR nvim
set -gx DOTFILES $HOME/dotfiles
set -gx fish_autosuggestion_enabled 1 

set -gx XDG_CONFIG_HOME $HOME/.config

fish_add_path $HOME/.local/bin
fish_add_path $GOPATH/bin
fish_add_path $GOROOT/bin
fish_add_path /usr/local/bin


#if status is-interactive
  starship init fish | source
#end

function fish_greeting
    # Do nothing
end

