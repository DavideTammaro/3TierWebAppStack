#db1
#if you need to change the listener port, remember to change also the nc port on appserver1.sh script
iptables -F
pkill tmux
echo y | yum -y install tmux
echo y | yum -y install socat
tmux new-session -s listener -d "socat - TCP-LISTEN:1433,fork"
