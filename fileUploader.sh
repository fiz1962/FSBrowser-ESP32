#!/bin/bash

user={edit username}
pw={edit password}
host={edit like "http://192.168.1.100:8000/edit"}
root={edit root like "data"}

for d in $(find $root -type d -printf %P\\n); do
    echo "curl -X PUT --user $user:$pw -d path=/$d/ $host"
    curl -X PUT --user $user:$pw -d path=/$d/ $host
done

for f in $(find $root -type f -printf %P\\n); do
    echo "curl --user $user:$pw -F \"file=@$root/$f;filename=/$f\" $host"
    curl --user $user:$pw -F "file=@$root/$f;filename=/$f" $host
done