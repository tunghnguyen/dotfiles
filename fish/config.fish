if status is-interactive
    thefuck --alias | source
    set fish_greeting
    starship init fish | source
end
