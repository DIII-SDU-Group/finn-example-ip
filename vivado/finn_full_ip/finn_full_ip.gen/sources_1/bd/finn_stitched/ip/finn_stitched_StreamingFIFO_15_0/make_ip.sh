#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_15_1qlsll8g/project_StreamingFIFO_15/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
