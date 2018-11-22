#webserver1.sh
pkill tmux
iptables -F
echo y | yum install tmux
echo y | yum install socat
#tmux new-session -s listener -d "socat - TCP-LISTEN:443,fork"
tmux new-session -s connect-to-app01 -d "/usr/bin/nc appserver1 8080" #####change the port if the listener in appserver1 has changed####
tmux new-session -s send-data-to-target-appserver1 -d "/usr/bin/watch /usr/bin/tmux send-keys -t connect-to-app01 data-from-web01 ^M"
