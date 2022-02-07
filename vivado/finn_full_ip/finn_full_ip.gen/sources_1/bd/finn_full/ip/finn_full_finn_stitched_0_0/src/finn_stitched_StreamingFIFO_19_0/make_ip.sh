#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_19_om7r1lg4/project_StreamingFIFO_19/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
