#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_36_t5dc5wd3/project_StreamingFIFO_36/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
