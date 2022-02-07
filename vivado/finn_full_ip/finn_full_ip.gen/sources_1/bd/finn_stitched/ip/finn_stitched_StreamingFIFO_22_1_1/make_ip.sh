#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_22_u4iz481v/project_StreamingFIFO_22/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
