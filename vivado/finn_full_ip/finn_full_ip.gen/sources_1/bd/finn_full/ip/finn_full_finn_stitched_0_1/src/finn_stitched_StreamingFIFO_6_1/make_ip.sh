#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_6_jsyade1k/project_StreamingFIFO_6/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn