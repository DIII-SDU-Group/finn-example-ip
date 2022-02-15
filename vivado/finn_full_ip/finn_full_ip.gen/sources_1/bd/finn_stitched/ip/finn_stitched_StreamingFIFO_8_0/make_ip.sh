#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_8_4lqhwwz8/project_StreamingFIFO_8/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
