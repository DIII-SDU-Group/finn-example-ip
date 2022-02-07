#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_37_mv229uu1/project_StreamingFIFO_37/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
