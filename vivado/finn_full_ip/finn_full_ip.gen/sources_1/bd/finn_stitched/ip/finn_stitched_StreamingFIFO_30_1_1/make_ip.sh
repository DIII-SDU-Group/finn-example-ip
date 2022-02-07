#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_30_7_3k580z/project_StreamingFIFO_30/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
