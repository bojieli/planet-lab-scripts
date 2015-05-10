#!/bin/bash
parallel-ssh -p 500 -t 0 -x '-i id_rsa_planetlab' -O StrictHostKeyChecking=no -l ustc_netstruct -h $(dirname $0)/boot $@
