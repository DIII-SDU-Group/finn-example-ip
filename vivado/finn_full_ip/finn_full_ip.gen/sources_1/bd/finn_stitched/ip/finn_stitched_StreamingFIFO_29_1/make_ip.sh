#!/bin/bash 
cd /tmp/finn_dev_nm/code_gen_ipgen_StreamingFIFO_29_v730529y/project_StreamingFIFO_29/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
