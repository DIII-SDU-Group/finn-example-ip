#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_30_x1fedh7y/project_StreamingFIFO_30/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
