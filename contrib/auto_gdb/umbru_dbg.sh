#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.umbrucore/umbrud.pid file instead
umbru_pid=$(<~/.umbrucore/testnet3/umbrud.pid)
sudo gdb -batch -ex "source debug.gdb" umbrud ${umbru_pid}
