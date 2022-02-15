#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_16_o4pf9ycv/project_StreamingFIFO_16/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
