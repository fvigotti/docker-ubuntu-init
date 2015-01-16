#!/bin/bash

# capture signals
trap : SIGTERM SIGINT

echo $$


for init in /config/init*; do
    echo 'executing: '$init
    chmod +x $init ;
	bash "$init" &
    COMMAND_PID=$!
    wait $COMMAND_PID
    if [[ $? -gt 128 ]]
    then
        ps auxf
        echo 'process group killing > '${COMMAND_PID}
        kill -- ${COMMAND_PID}
        ps auxf
        exit 0
    fi
done
