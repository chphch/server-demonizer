# server-demonizer

* <i>server-demonizer</i> is a script for demonizing a server.
* The pid of the server is saved in <i>pidfilename</i> to reference when terminating the server.
* <i>server-demonizer</i> kill all child process of the server when stop the server.

# Usage

1. Set <i>runserver_command</i> and <i>pidfilename</i> in "server.sh".
2. Put ```sh server.sh run``` in terminal to run the server demonized.
3. Put ```sh server.sh stop``` in terminal to terminate the running server server.
