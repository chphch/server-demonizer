# Put your server-running command here
runserver_command="sleep 100"

# The pid of the running server is saved in $pidfilename
# Using an absolute path is recommanded
pidfilename=pid

case $1 in
  run)
    (eval "$runserver_command &" && echo $! > $pidfilename)
    ;;
  terminate)
    # Kill the server with pid
    kill -9 $(cat pid)
    # Kill all child processes
    pkill -9 -P $(cat pid)
    rm $pidfilename
    ;;
  *)
    echo 'server.sh doesn'\''t support the sub-command '\"$1\"
    echo 'usage: "sh server.sh run" or "sh .server terminate'
esac
