source ~/src/config/fish/functions-and-alias.fish
source ~/src/config/fish/private.fish

# path
fish_add_path ~/.bun/bin/
fish_add_path ~/src/config/bin
fish_add_path ~/src/config/bin/private
fish_add_path ~/.local/share/solana/install/active_release/bin
fish_add_path ~/.cargo/bin

# node version switcher
fnm env --use-on-cd | source # https://github.com/Schniz/fnm#fish-shell setup

# edgedb
# TODO: don't hard code /nikiv/ (how to do ~/ in fish?)
source "/Users/nikiv/Library/Application Support/edgedb/env"

# go
set -x GOPATH (go env GOPATH)
set -x PATH $PATH (go env GOPATH)/bin

# other
__fish_cursor_xterm line # make cursor into thin line (doesn't make a difference in Warp.dev)
#set fish_cursor_unknown block
direnv hook fish | source # TODO: not sure it works, fish integration for direnv

# https://docs.nativescript.org/setup/macos#setting-up-macos-for-ios
fish_add_path /opt/homebrew/lib/ruby/gems/2.7.0/bin

# testing area below (anything useful is moved up)

# TODO: uncomment if things break, trying to use bun only
# pnpm
set -gx PNPM_HOME /Users/nikiv/Library/pnpm
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end


ulimit -f unlimited
set -Ux NODE_OPTIONS "--max-old-space-size=8096"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# TODO: adds `base` to shell which is annoying
# if test -f /Users/nikiv/miniconda3/bin/conda
#     eval /Users/nikiv/miniconda3/bin/conda "shell.fish" hook $argv | source
# else
#     if test -f "/Users/nikiv/miniconda3/etc/fish/conf.d/conda.fish"
#         . "/Users/nikiv/miniconda3/etc/fish/conf.d/conda.fish"
#     else
#         set -x PATH /Users/nikiv/miniconda3/bin $PATH
#     end
# end
# <<< conda initialize <<<
