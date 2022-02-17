#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_7_q1i7nzt9/project_StreamingFIFO_7/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
