#!/bin/bash
sleep 5
cd /root/stratum-mining && \
   exec twistd -y launcher.tac > stratum.text
