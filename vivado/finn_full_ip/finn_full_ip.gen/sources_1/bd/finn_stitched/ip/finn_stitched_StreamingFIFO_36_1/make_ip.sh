#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_36_ek2inkbm/project_StreamingFIFO_36/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
