#appserver1.sh
#if you need to change the listner port, remember to change also the nc port on webserver1.sh script
#if the listner port on db1 has changed, remember to change also the nc port 

pkill tmux
iptables -F
echo y | yum install tmux
echo y | yum install socat
tmux new-session -s listner -d "socat - TCP-LISTEN:8080,fork"
tmux new-session -s connect-to-db -d "/usr/bin/nc db1 1433" #####change the port if the listner in db1 has changed####
tmux new-session -s send-data-to-target-db1 -d "/usr/bin/watch /usr/bin/tmux send-keys -t connect-to-db data-from-app01 ^M"
