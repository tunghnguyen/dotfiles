if status is-interactive
    thefuck --alias | source
    set fish_greeting
    zoxide init fish | source
    starship init fish | source
end
