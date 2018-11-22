#db1
#if you need to change the listner port, remember to change also the nc port on appserver1.sh script
iptables -F
pkill tmux
echo y | yum install tmux
echo y | yum install socat
tmux new-session -s listner -d "socat - TCP-LISTEN:1433,fork"
