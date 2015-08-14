
# tmuxで複数サーバの同時オペレーション
# http://tech.naviplus.co.jp/2014/01/09/tmux%E3%81%A7%E8%A4%87%E6%95%B0%E3%82%B5%E3%83%BC%E3%83%90%E3%81%AE%E5%90%8C%E6%99%82%E3%82%AA%E3%83%9A%E3%83%AC%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3/
function multi-ssh() {
    if [ -n "$SESSION_NAME" ];then
      session=$SESSION_NAME
    else
      session=multi-ssh-`date +%s`
    fi
    window=multi-ssh

    ### tmuxのセッションを作成
    tmux new-session -d -n $window -s $session
     
    ### 各ホストにsshログイン
    # 最初の1台はsshするだけ
    tmux send-keys "ssh $1" C-m
    shift

    # 残りはpaneを作成してからssh
    for i in $*;do
      tmux split-window
      tmux select-layout tiled
      tmux send-keys "ssh $i" C-m
    done

    ### 最初のpaneを選択状態にする
    tmux select-pane -t 0

    ### セッションにアタッチ
    tmux attach-session -t $session
}

