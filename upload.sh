#!/bin/bash
parallel-scp -p 500 -x '-i id_rsa_planetlab' -O StrictHostKeyChecking=no -l ustc_netstruct -h $(dirname $0)/boot $@
