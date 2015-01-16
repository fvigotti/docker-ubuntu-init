#!/bin/bash
for init in /config/init*; do
    echo 'executing: '$init
    chmod +x $init ;
	bash "$init"
done
