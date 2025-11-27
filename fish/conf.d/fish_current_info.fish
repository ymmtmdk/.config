function current_info
    if test -z (commandline) 2>/dev/null
        ls -la
        if test (git rev-parse --is-inside-work-tree 2> /dev/null || echo false) = true
            git status -sb
        end
        echo
        echo
    else
        # 何か入力されているなら現在の入力を実行する
        # eval (commandline) だとヒストリーに残らない
        commandline -f execute
    end
    # 入力をクリアする
    commandline -f repaint
end

bind enter current_info
