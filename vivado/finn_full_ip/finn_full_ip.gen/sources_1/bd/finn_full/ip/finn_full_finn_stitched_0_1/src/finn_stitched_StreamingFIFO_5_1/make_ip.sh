#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_5_9sybejp6/project_StreamingFIFO_5/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
