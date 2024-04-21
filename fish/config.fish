if status is-interactive
    # Commands to run in interactive sessions can go here
end  

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/leandrobordon/miniconda3/bin/conda
    eval /Users/leandrobordon/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/Users/leandrobordon/miniconda3/etc/fish/conf.d/conda.fish"
        . "/Users/leandrobordon/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/Users/leandrobordon/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<


# pnpm
set -gx PNPM_HOME "/Users/leandrobordon/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end