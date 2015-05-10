#!/bin/bash
ssh -i id_rsa_planetlab -vv -o StrictHostKeyChecking=no -o PasswordAuthentication=no -l ustc_netstruct $@
