#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_14_vsv3tbf3/project_StreamingFIFO_14/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
