#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_11_9a_txrdb/project_StreamingFIFO_11/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
