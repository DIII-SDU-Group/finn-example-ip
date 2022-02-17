#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_12_n0vt03pc/project_StreamingFIFO_12/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
