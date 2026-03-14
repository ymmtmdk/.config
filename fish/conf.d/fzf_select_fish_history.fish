function fzf_select_fish_history
    # history save
    history merge
    history --show-time='%y-%m-%d %H:%M> ' | fzf -i --bind 'enter:accept' --bind 'ctrl-c:print-query+abort' --no-sort -q (commandline) | sed -E 's/^[0-9]{2}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}> //' | read cmd

    if [ $cmd ]
        commandline $cmd
    end
end

bind ctrl-r fzf_select_fish_history
