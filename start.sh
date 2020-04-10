#!/bin/bash
__run_node() {
  echo $1
  if [ -n "$1" ];then
  echo -e "$1\n$1" | (passwd)
  /usr/sbin/sshd
  fi
  cd /var/www
  npm run prod
}

# Call all functions
__run_node $1