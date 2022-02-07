#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_27_oi_202_1/project_StreamingFIFO_27/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
