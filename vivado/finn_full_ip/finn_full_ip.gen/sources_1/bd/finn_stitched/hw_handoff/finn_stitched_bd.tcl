
################################################################
# This is a generated script based on design: finn_stitched
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source finn_stitched_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu3eg-sbva484-1-i
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name finn_stitched

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: StreamingFIFO_47
proc create_hier_cell_StreamingFIFO_47 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_47() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {16384} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_45
proc create_hier_cell_StreamingFIFO_45 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_45() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {8192} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_44
proc create_hier_cell_StreamingFIFO_44 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_44() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {1024} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_40
proc create_hier_cell_StreamingFIFO_40 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_40() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {8192} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {3} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_38
proc create_hier_cell_StreamingFIFO_38 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_38() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {8192} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_37
proc create_hier_cell_StreamingFIFO_37 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_37() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {1024} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_33
proc create_hier_cell_StreamingFIFO_33 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_33() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {4096} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {6} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_31
proc create_hier_cell_StreamingFIFO_31 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_31() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {8192} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_30
proc create_hier_cell_StreamingFIFO_30 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_30() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {512} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_26
proc create_hier_cell_StreamingFIFO_26 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_26() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {2048} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {12} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_24
proc create_hier_cell_StreamingFIFO_24 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_24() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {16384} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_23
proc create_hier_cell_StreamingFIFO_23 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_23() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {512} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_19
proc create_hier_cell_StreamingFIFO_19 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_19() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {512} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {24} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_17
proc create_hier_cell_StreamingFIFO_17 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_17() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {16384} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_12
proc create_hier_cell_StreamingFIFO_12 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_12() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {1024} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {48} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_10
proc create_hier_cell_StreamingFIFO_10 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_10() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {8192} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFIFO_2
proc create_hier_cell_StreamingFIFO_2 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFIFO_2() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: fifo, and set properties
  set fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {2048} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.TDATA_NUM_BYTES {1} \
 ] $fifo

  # Create interface connections
  connect_bd_intf_net -intf_net fifo_M_AXIS [get_bd_intf_pins out_V] [get_bd_intf_pins fifo/M_AXIS]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins fifo/S_AXIS]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins fifo/s_axis_aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins fifo/s_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFCLayer_Batch_9
proc create_hier_cell_StreamingFCLayer_Batch_9 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFCLayer_Batch_9() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingFCLayer_Batch_9, and set properties
  set StreamingFCLayer_Batch_9 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_9:1.0 StreamingFCLayer_Batch_9 ]

  # Create instance: StreamingFCLayer_Batch_9_wstrm, and set properties
  set StreamingFCLayer_Batch_9_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingFCLayer_Batch_9_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {64} \
   CONFIG.MEM_INIT {/home/nm/FINN/hls_2020_2/finn/notebooks/end2end_example/cnv_w1a2_30FPS_single_output/source_IPs/src_ips/code_gen_ipgen_StreamingFCLayer_Batch_9_mdxkc4ik/} \
   CONFIG.MEM_WIDTH {16} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {distributed} \
   CONFIG.STRM0_DEPTH {64} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {16} \
 ] $StreamingFCLayer_Batch_9_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_9_out_V [get_bd_intf_pins out_V] [get_bd_intf_pins StreamingFCLayer_Batch_9/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_9_wstrm_m_axis_0 [get_bd_intf_pins StreamingFCLayer_Batch_9/weights_V] [get_bd_intf_pins StreamingFCLayer_Batch_9_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_9/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingFCLayer_Batch_9/ap_clk] [get_bd_pins StreamingFCLayer_Batch_9_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_9/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_9_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFCLayer_Batch_8
proc create_hier_cell_StreamingFCLayer_Batch_8 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFCLayer_Batch_8() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingFCLayer_Batch_8, and set properties
  set StreamingFCLayer_Batch_8 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_8:1.0 StreamingFCLayer_Batch_8 ]

  # Create instance: StreamingFCLayer_Batch_8_wstrm, and set properties
  set StreamingFCLayer_Batch_8_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingFCLayer_Batch_8_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {65536} \
   CONFIG.MEM_INIT {/home/nm/FINN/hls_2020_2/finn/notebooks/end2end_example/cnv_w1a2_30FPS_single_output/source_IPs/src_ips/code_gen_ipgen_StreamingFCLayer_Batch_8_7hh0wmho/} \
   CONFIG.MEM_WIDTH {8} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {65536} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {8} \
 ] $StreamingFCLayer_Batch_8_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_8_out_V [get_bd_intf_pins out_V] [get_bd_intf_pins StreamingFCLayer_Batch_8/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_8_wstrm_m_axis_0 [get_bd_intf_pins StreamingFCLayer_Batch_8/weights_V] [get_bd_intf_pins StreamingFCLayer_Batch_8_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_8/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingFCLayer_Batch_8/ap_clk] [get_bd_pins StreamingFCLayer_Batch_8_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_8/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_8_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFCLayer_Batch_7
proc create_hier_cell_StreamingFCLayer_Batch_7 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFCLayer_Batch_7() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingFCLayer_Batch_7, and set properties
  set StreamingFCLayer_Batch_7 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_7:1.0 StreamingFCLayer_Batch_7 ]

  # Create instance: StreamingFCLayer_Batch_7_wstrm, and set properties
  set StreamingFCLayer_Batch_7_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingFCLayer_Batch_7_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {262144} \
   CONFIG.MEM_INIT {/home/nm/FINN/hls_2020_2/finn/notebooks/end2end_example/cnv_w1a2_30FPS_single_output/source_IPs/src_ips/code_gen_ipgen_StreamingFCLayer_Batch_7_krjwq3kd/} \
   CONFIG.MEM_WIDTH {8} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {262144} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {8} \
 ] $StreamingFCLayer_Batch_7_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_7_out_V [get_bd_intf_pins out_V] [get_bd_intf_pins StreamingFCLayer_Batch_7/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_7_wstrm_m_axis_0 [get_bd_intf_pins StreamingFCLayer_Batch_7/weights_V] [get_bd_intf_pins StreamingFCLayer_Batch_7_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_7/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingFCLayer_Batch_7/ap_clk] [get_bd_pins StreamingFCLayer_Batch_7_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_7/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_7_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFCLayer_Batch_6
proc create_hier_cell_StreamingFCLayer_Batch_6 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFCLayer_Batch_6() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingFCLayer_Batch_6, and set properties
  set StreamingFCLayer_Batch_6 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_6:1.0 StreamingFCLayer_Batch_6 ]

  # Create instance: StreamingFCLayer_Batch_6_wstrm, and set properties
  set StreamingFCLayer_Batch_6_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingFCLayer_Batch_6_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {196608} \
   CONFIG.MEM_INIT {/home/nm/FINN/hls_2020_2/finn/notebooks/end2end_example/cnv_w1a2_30FPS_single_output/source_IPs/src_ips/code_gen_ipgen_StreamingFCLayer_Batch_6_93z2oe9p/} \
   CONFIG.MEM_WIDTH {8} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {196608} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {8} \
 ] $StreamingFCLayer_Batch_6_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_6_out_V [get_bd_intf_pins out_V] [get_bd_intf_pins StreamingFCLayer_Batch_6/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_6_wstrm_m_axis_0 [get_bd_intf_pins StreamingFCLayer_Batch_6/weights_V] [get_bd_intf_pins StreamingFCLayer_Batch_6_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_6/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingFCLayer_Batch_6/ap_clk] [get_bd_pins StreamingFCLayer_Batch_6_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_6/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_6_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFCLayer_Batch_5
proc create_hier_cell_StreamingFCLayer_Batch_5 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFCLayer_Batch_5() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingFCLayer_Batch_5, and set properties
  set StreamingFCLayer_Batch_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_5:1.0 StreamingFCLayer_Batch_5 ]

  # Create instance: StreamingFCLayer_Batch_5_wstrm, and set properties
  set StreamingFCLayer_Batch_5_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingFCLayer_Batch_5_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {49152} \
   CONFIG.MEM_INIT {/home/nm/FINN/hls_2020_2/finn/notebooks/end2end_example/cnv_w1a2_30FPS_single_output/source_IPs/src_ips/code_gen_ipgen_StreamingFCLayer_Batch_5_m8dxwovd/} \
   CONFIG.MEM_WIDTH {16} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {49152} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {16} \
 ] $StreamingFCLayer_Batch_5_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_5_out_V [get_bd_intf_pins out_V] [get_bd_intf_pins StreamingFCLayer_Batch_5/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_5_wstrm_m_axis_0 [get_bd_intf_pins StreamingFCLayer_Batch_5/weights_V] [get_bd_intf_pins StreamingFCLayer_Batch_5_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_5/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingFCLayer_Batch_5/ap_clk] [get_bd_pins StreamingFCLayer_Batch_5_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_5/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_5_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFCLayer_Batch_4
proc create_hier_cell_StreamingFCLayer_Batch_4 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFCLayer_Batch_4() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingFCLayer_Batch_4, and set properties
  set StreamingFCLayer_Batch_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_4:1.0 StreamingFCLayer_Batch_4 ]

  # Create instance: StreamingFCLayer_Batch_4_wstrm, and set properties
  set StreamingFCLayer_Batch_4_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingFCLayer_Batch_4_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {12288} \
   CONFIG.MEM_INIT {/home/nm/FINN/hls_2020_2/finn/notebooks/end2end_example/cnv_w1a2_30FPS_single_output/source_IPs/src_ips/code_gen_ipgen_StreamingFCLayer_Batch_4_xbqw3vzp/} \
   CONFIG.MEM_WIDTH {24} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {12288} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {24} \
 ] $StreamingFCLayer_Batch_4_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_4_out_V [get_bd_intf_pins out_V] [get_bd_intf_pins StreamingFCLayer_Batch_4/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_4_wstrm_m_axis_0 [get_bd_intf_pins StreamingFCLayer_Batch_4/weights_V] [get_bd_intf_pins StreamingFCLayer_Batch_4_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_4/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingFCLayer_Batch_4/ap_clk] [get_bd_pins StreamingFCLayer_Batch_4_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_4/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_4_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFCLayer_Batch_3
proc create_hier_cell_StreamingFCLayer_Batch_3 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFCLayer_Batch_3() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingFCLayer_Batch_3, and set properties
  set StreamingFCLayer_Batch_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_3:1.0 StreamingFCLayer_Batch_3 ]

  # Create instance: StreamingFCLayer_Batch_3_wstrm, and set properties
  set StreamingFCLayer_Batch_3_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingFCLayer_Batch_3_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {3072} \
   CONFIG.MEM_INIT {/home/nm/FINN/hls_2020_2/finn/notebooks/end2end_example/cnv_w1a2_30FPS_single_output/source_IPs/src_ips/code_gen_ipgen_StreamingFCLayer_Batch_3__0srt0fi/} \
   CONFIG.MEM_WIDTH {48} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {3072} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {48} \
 ] $StreamingFCLayer_Batch_3_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_3_out_V [get_bd_intf_pins out_V] [get_bd_intf_pins StreamingFCLayer_Batch_3/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_3_wstrm_m_axis_0 [get_bd_intf_pins StreamingFCLayer_Batch_3/weights_V] [get_bd_intf_pins StreamingFCLayer_Batch_3_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_3/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingFCLayer_Batch_3/ap_clk] [get_bd_pins StreamingFCLayer_Batch_3_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_3/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_3_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFCLayer_Batch_2
proc create_hier_cell_StreamingFCLayer_Batch_2 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFCLayer_Batch_2() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingFCLayer_Batch_2, and set properties
  set StreamingFCLayer_Batch_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_2:1.0 StreamingFCLayer_Batch_2 ]

  # Create instance: StreamingFCLayer_Batch_2_wstrm, and set properties
  set StreamingFCLayer_Batch_2_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingFCLayer_Batch_2_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {768} \
   CONFIG.MEM_INIT {/home/nm/FINN/hls_2020_2/finn/notebooks/end2end_example/cnv_w1a2_30FPS_single_output/source_IPs/src_ips/code_gen_ipgen_StreamingFCLayer_Batch_2_pnhtmc4i/} \
   CONFIG.MEM_WIDTH {96} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {768} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {96} \
 ] $StreamingFCLayer_Batch_2_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_2_out_V [get_bd_intf_pins out_V] [get_bd_intf_pins StreamingFCLayer_Batch_2/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_2_wstrm_m_axis_0 [get_bd_intf_pins StreamingFCLayer_Batch_2/weights_V] [get_bd_intf_pins StreamingFCLayer_Batch_2_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_2/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingFCLayer_Batch_2/ap_clk] [get_bd_pins StreamingFCLayer_Batch_2_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_2/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_2_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFCLayer_Batch_1
proc create_hier_cell_StreamingFCLayer_Batch_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFCLayer_Batch_1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingFCLayer_Batch_1, and set properties
  set StreamingFCLayer_Batch_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_1:1.0 StreamingFCLayer_Batch_1 ]

  # Create instance: StreamingFCLayer_Batch_1_wstrm, and set properties
  set StreamingFCLayer_Batch_1_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingFCLayer_Batch_1_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {192} \
   CONFIG.MEM_INIT {/home/nm/FINN/hls_2020_2/finn/notebooks/end2end_example/cnv_w1a2_30FPS_single_output/source_IPs/src_ips/code_gen_ipgen_StreamingFCLayer_Batch_1_walzr8jx/} \
   CONFIG.MEM_WIDTH {192} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {192} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {192} \
 ] $StreamingFCLayer_Batch_1_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_1_out_V [get_bd_intf_pins out_V] [get_bd_intf_pins StreamingFCLayer_Batch_1/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_1_wstrm_m_axis_0 [get_bd_intf_pins StreamingFCLayer_Batch_1/weights_V] [get_bd_intf_pins StreamingFCLayer_Batch_1_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_1/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingFCLayer_Batch_1/ap_clk] [get_bd_pins StreamingFCLayer_Batch_1_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_1/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_1_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingFCLayer_Batch_0
proc create_hier_cell_StreamingFCLayer_Batch_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingFCLayer_Batch_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingFCLayer_Batch_0, and set properties
  set StreamingFCLayer_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_0:1.0 StreamingFCLayer_Batch_0 ]

  # Create instance: StreamingFCLayer_Batch_0_wstrm, and set properties
  set StreamingFCLayer_Batch_0_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingFCLayer_Batch_0_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {32} \
   CONFIG.MEM_INIT {/home/nm/FINN/hls_2020_2/finn/notebooks/end2end_example/cnv_w1a2_30FPS_single_output/source_IPs/src_ips/code_gen_ipgen_StreamingFCLayer_Batch_0_nyvaezz1/} \
   CONFIG.MEM_WIDTH {56} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {32} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {56} \
 ] $StreamingFCLayer_Batch_0_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_0_out_V [get_bd_intf_pins out_V] [get_bd_intf_pins StreamingFCLayer_Batch_0/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_0_wstrm_m_axis_0 [get_bd_intf_pins StreamingFCLayer_Batch_0/weights_V] [get_bd_intf_pins StreamingFCLayer_Batch_0_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_1 [get_bd_intf_pins in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_0/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingFCLayer_Batch_0/ap_clk] [get_bd_pins StreamingFCLayer_Batch_0_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_0/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_0_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: finn_ip
proc create_hier_cell_finn_ip { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_finn_ip() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_0

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_0


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: ConvolutionInputGenerator_0, and set properties
  set ConvolutionInputGenerator_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_0:1.0 ConvolutionInputGenerator_0 ]

  # Create instance: ConvolutionInputGenerator_1, and set properties
  set ConvolutionInputGenerator_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_1:1.0 ConvolutionInputGenerator_1 ]

  # Create instance: ConvolutionInputGenerator_2, and set properties
  set ConvolutionInputGenerator_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_2:1.0 ConvolutionInputGenerator_2 ]

  # Create instance: ConvolutionInputGenerator_3, and set properties
  set ConvolutionInputGenerator_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_3:1.0 ConvolutionInputGenerator_3 ]

  # Create instance: ConvolutionInputGenerator_4, and set properties
  set ConvolutionInputGenerator_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_4:1.0 ConvolutionInputGenerator_4 ]

  # Create instance: ConvolutionInputGenerator_5, and set properties
  set ConvolutionInputGenerator_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_5:1.0 ConvolutionInputGenerator_5 ]

  # Create instance: ConvolutionInputGenerator_6, and set properties
  set ConvolutionInputGenerator_6 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_6:1.0 ConvolutionInputGenerator_6 ]

  # Create instance: FMPadding_Batch_0, and set properties
  set FMPadding_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_0:1.0 FMPadding_Batch_0 ]

  # Create instance: FMPadding_Batch_1, and set properties
  set FMPadding_Batch_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_1:1.0 FMPadding_Batch_1 ]

  # Create instance: FMPadding_Batch_2, and set properties
  set FMPadding_Batch_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_2:1.0 FMPadding_Batch_2 ]

  # Create instance: FMPadding_Batch_3, and set properties
  set FMPadding_Batch_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_3:1.0 FMPadding_Batch_3 ]

  # Create instance: FMPadding_Batch_4, and set properties
  set FMPadding_Batch_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_4:1.0 FMPadding_Batch_4 ]

  # Create instance: FMPadding_Batch_5, and set properties
  set FMPadding_Batch_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_5:1.0 FMPadding_Batch_5 ]

  # Create instance: FMPadding_Batch_6, and set properties
  set FMPadding_Batch_6 [ create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_6:1.0 FMPadding_Batch_6 ]

  # Create instance: StreamingDataWidthConverter_Batch_0, and set properties
  set StreamingDataWidthConverter_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_0:1.0 StreamingDataWidthConverter_Batch_0 ]

  # Create instance: StreamingDataWidthConverter_Batch_1, and set properties
  set StreamingDataWidthConverter_Batch_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_1:1.0 StreamingDataWidthConverter_Batch_1 ]

  # Create instance: StreamingDataWidthConverter_Batch_2, and set properties
  set StreamingDataWidthConverter_Batch_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_2:1.0 StreamingDataWidthConverter_Batch_2 ]

  # Create instance: StreamingDataWidthConverter_Batch_3, and set properties
  set StreamingDataWidthConverter_Batch_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_3:1.0 StreamingDataWidthConverter_Batch_3 ]

  # Create instance: StreamingDataWidthConverter_Batch_4, and set properties
  set StreamingDataWidthConverter_Batch_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_4:1.0 StreamingDataWidthConverter_Batch_4 ]

  # Create instance: StreamingDataWidthConverter_Batch_5, and set properties
  set StreamingDataWidthConverter_Batch_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_5:1.0 StreamingDataWidthConverter_Batch_5 ]

  # Create instance: StreamingDataWidthConverter_Batch_6, and set properties
  set StreamingDataWidthConverter_Batch_6 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_6:1.0 StreamingDataWidthConverter_Batch_6 ]

  # Create instance: StreamingDataWidthConverter_Batch_7, and set properties
  set StreamingDataWidthConverter_Batch_7 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_7:1.0 StreamingDataWidthConverter_Batch_7 ]

  # Create instance: StreamingDataWidthConverter_Batch_8, and set properties
  set StreamingDataWidthConverter_Batch_8 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_8:1.0 StreamingDataWidthConverter_Batch_8 ]

  # Create instance: StreamingDataWidthConverter_Batch_9, and set properties
  set StreamingDataWidthConverter_Batch_9 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_9:1.0 StreamingDataWidthConverter_Batch_9 ]

  # Create instance: StreamingDataWidthConverter_Batch_10, and set properties
  set StreamingDataWidthConverter_Batch_10 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_10:1.0 StreamingDataWidthConverter_Batch_10 ]

  # Create instance: StreamingDataWidthConverter_Batch_11, and set properties
  set StreamingDataWidthConverter_Batch_11 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_11:1.0 StreamingDataWidthConverter_Batch_11 ]

  # Create instance: StreamingDataWidthConverter_Batch_12, and set properties
  set StreamingDataWidthConverter_Batch_12 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_12:1.0 StreamingDataWidthConverter_Batch_12 ]

  # Create instance: StreamingDataWidthConverter_Batch_13, and set properties
  set StreamingDataWidthConverter_Batch_13 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_13:1.0 StreamingDataWidthConverter_Batch_13 ]

  # Create instance: StreamingDataWidthConverter_Batch_14, and set properties
  set StreamingDataWidthConverter_Batch_14 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_14:1.0 StreamingDataWidthConverter_Batch_14 ]

  # Create instance: StreamingDataWidthConverter_Batch_15, and set properties
  set StreamingDataWidthConverter_Batch_15 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_15:1.0 StreamingDataWidthConverter_Batch_15 ]

  # Create instance: StreamingDataWidthConverter_Batch_16, and set properties
  set StreamingDataWidthConverter_Batch_16 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_16:1.0 StreamingDataWidthConverter_Batch_16 ]

  # Create instance: StreamingDataWidthConverter_Batch_17, and set properties
  set StreamingDataWidthConverter_Batch_17 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_17:1.0 StreamingDataWidthConverter_Batch_17 ]

  # Create instance: StreamingDataWidthConverter_Batch_18, and set properties
  set StreamingDataWidthConverter_Batch_18 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_18:1.0 StreamingDataWidthConverter_Batch_18 ]

  # Create instance: StreamingDataWidthConverter_Batch_19, and set properties
  set StreamingDataWidthConverter_Batch_19 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_19:1.0 StreamingDataWidthConverter_Batch_19 ]

  # Create instance: StreamingDataWidthConverter_Batch_20, and set properties
  set StreamingDataWidthConverter_Batch_20 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_20:1.0 StreamingDataWidthConverter_Batch_20 ]

  # Create instance: StreamingDataWidthConverter_Batch_21, and set properties
  set StreamingDataWidthConverter_Batch_21 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_21:1.0 StreamingDataWidthConverter_Batch_21 ]

  # Create instance: StreamingDataWidthConverter_Batch_22, and set properties
  set StreamingDataWidthConverter_Batch_22 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_22:1.0 StreamingDataWidthConverter_Batch_22 ]

  # Create instance: StreamingFCLayer_Batch_0
  create_hier_cell_StreamingFCLayer_Batch_0 $hier_obj StreamingFCLayer_Batch_0

  # Create instance: StreamingFCLayer_Batch_1
  create_hier_cell_StreamingFCLayer_Batch_1 $hier_obj StreamingFCLayer_Batch_1

  # Create instance: StreamingFCLayer_Batch_2
  create_hier_cell_StreamingFCLayer_Batch_2 $hier_obj StreamingFCLayer_Batch_2

  # Create instance: StreamingFCLayer_Batch_3
  create_hier_cell_StreamingFCLayer_Batch_3 $hier_obj StreamingFCLayer_Batch_3

  # Create instance: StreamingFCLayer_Batch_4
  create_hier_cell_StreamingFCLayer_Batch_4 $hier_obj StreamingFCLayer_Batch_4

  # Create instance: StreamingFCLayer_Batch_5
  create_hier_cell_StreamingFCLayer_Batch_5 $hier_obj StreamingFCLayer_Batch_5

  # Create instance: StreamingFCLayer_Batch_6
  create_hier_cell_StreamingFCLayer_Batch_6 $hier_obj StreamingFCLayer_Batch_6

  # Create instance: StreamingFCLayer_Batch_7
  create_hier_cell_StreamingFCLayer_Batch_7 $hier_obj StreamingFCLayer_Batch_7

  # Create instance: StreamingFCLayer_Batch_8
  create_hier_cell_StreamingFCLayer_Batch_8 $hier_obj StreamingFCLayer_Batch_8

  # Create instance: StreamingFCLayer_Batch_9
  create_hier_cell_StreamingFCLayer_Batch_9 $hier_obj StreamingFCLayer_Batch_9

  # Create instance: StreamingFIFO_0, and set properties
  set StreamingFIFO_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_0:1.0 StreamingFIFO_0 ]

  # Create instance: StreamingFIFO_1, and set properties
  set StreamingFIFO_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_1:1.0 StreamingFIFO_1 ]

  # Create instance: StreamingFIFO_2
  create_hier_cell_StreamingFIFO_2 $hier_obj StreamingFIFO_2

  # Create instance: StreamingFIFO_4, and set properties
  set StreamingFIFO_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_4:1.0 StreamingFIFO_4 ]

  # Create instance: StreamingFIFO_7, and set properties
  set StreamingFIFO_7 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_7:1.0 StreamingFIFO_7 ]

  # Create instance: StreamingFIFO_8, and set properties
  set StreamingFIFO_8 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_8:1.0 StreamingFIFO_8 ]

  # Create instance: StreamingFIFO_10
  create_hier_cell_StreamingFIFO_10 $hier_obj StreamingFIFO_10

  # Create instance: StreamingFIFO_12
  create_hier_cell_StreamingFIFO_12 $hier_obj StreamingFIFO_12

  # Create instance: StreamingFIFO_15, and set properties
  set StreamingFIFO_15 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_15:1.0 StreamingFIFO_15 ]

  # Create instance: StreamingFIFO_16, and set properties
  set StreamingFIFO_16 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_16:1.0 StreamingFIFO_16 ]

  # Create instance: StreamingFIFO_17
  create_hier_cell_StreamingFIFO_17 $hier_obj StreamingFIFO_17

  # Create instance: StreamingFIFO_19
  create_hier_cell_StreamingFIFO_19 $hier_obj StreamingFIFO_19

  # Create instance: StreamingFIFO_22, and set properties
  set StreamingFIFO_22 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_22:1.0 StreamingFIFO_22 ]

  # Create instance: StreamingFIFO_23
  create_hier_cell_StreamingFIFO_23 $hier_obj StreamingFIFO_23

  # Create instance: StreamingFIFO_24
  create_hier_cell_StreamingFIFO_24 $hier_obj StreamingFIFO_24

  # Create instance: StreamingFIFO_26
  create_hier_cell_StreamingFIFO_26 $hier_obj StreamingFIFO_26

  # Create instance: StreamingFIFO_29, and set properties
  set StreamingFIFO_29 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_29:1.0 StreamingFIFO_29 ]

  # Create instance: StreamingFIFO_30
  create_hier_cell_StreamingFIFO_30 $hier_obj StreamingFIFO_30

  # Create instance: StreamingFIFO_31
  create_hier_cell_StreamingFIFO_31 $hier_obj StreamingFIFO_31

  # Create instance: StreamingFIFO_33
  create_hier_cell_StreamingFIFO_33 $hier_obj StreamingFIFO_33

  # Create instance: StreamingFIFO_36, and set properties
  set StreamingFIFO_36 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_36:1.0 StreamingFIFO_36 ]

  # Create instance: StreamingFIFO_37
  create_hier_cell_StreamingFIFO_37 $hier_obj StreamingFIFO_37

  # Create instance: StreamingFIFO_38
  create_hier_cell_StreamingFIFO_38 $hier_obj StreamingFIFO_38

  # Create instance: StreamingFIFO_40
  create_hier_cell_StreamingFIFO_40 $hier_obj StreamingFIFO_40

  # Create instance: StreamingFIFO_44
  create_hier_cell_StreamingFIFO_44 $hier_obj StreamingFIFO_44

  # Create instance: StreamingFIFO_45
  create_hier_cell_StreamingFIFO_45 $hier_obj StreamingFIFO_45

  # Create instance: StreamingFIFO_47
  create_hier_cell_StreamingFIFO_47 $hier_obj StreamingFIFO_47

  # Create instance: StreamingMaxPool_Batch_0, and set properties
  set StreamingMaxPool_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_0:1.0 StreamingMaxPool_Batch_0 ]

  # Create instance: StreamingMaxPool_Batch_1, and set properties
  set StreamingMaxPool_Batch_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_1:1.0 StreamingMaxPool_Batch_1 ]

  # Create instance: StreamingMaxPool_Batch_2, and set properties
  set StreamingMaxPool_Batch_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_2:1.0 StreamingMaxPool_Batch_2 ]

  # Create instance: StreamingMaxPool_Batch_3, and set properties
  set StreamingMaxPool_Batch_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_3:1.0 StreamingMaxPool_Batch_3 ]

  # Create instance: StreamingMaxPool_Batch_4, and set properties
  set StreamingMaxPool_Batch_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_4:1.0 StreamingMaxPool_Batch_4 ]

  # Create instance: StreamingMaxPool_Batch_5, and set properties
  set StreamingMaxPool_Batch_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_5:1.0 StreamingMaxPool_Batch_5 ]

  # Create instance: StreamingMaxPool_Batch_6, and set properties
  set StreamingMaxPool_Batch_6 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_6:1.0 StreamingMaxPool_Batch_6 ]

  # Create instance: Thresholding_Batch_0, and set properties
  set Thresholding_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:Thresholding_Batch_0:1.0 Thresholding_Batch_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net ConvolutionInputGenerator_0_out_V [get_bd_intf_pins ConvolutionInputGenerator_0/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_0/in0_V]
  connect_bd_intf_net -intf_net ConvolutionInputGenerator_1_out_V [get_bd_intf_pins ConvolutionInputGenerator_1/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_4/in0_V]
  connect_bd_intf_net -intf_net ConvolutionInputGenerator_2_out_V [get_bd_intf_pins ConvolutionInputGenerator_2/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_7/in0_V]
  connect_bd_intf_net -intf_net ConvolutionInputGenerator_3_out_V [get_bd_intf_pins ConvolutionInputGenerator_3/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_10/in0_V]
  connect_bd_intf_net -intf_net ConvolutionInputGenerator_4_out_V [get_bd_intf_pins ConvolutionInputGenerator_4/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_13/in0_V]
  connect_bd_intf_net -intf_net ConvolutionInputGenerator_5_out_V [get_bd_intf_pins ConvolutionInputGenerator_5/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_16/in0_V]
  connect_bd_intf_net -intf_net ConvolutionInputGenerator_6_out_V [get_bd_intf_pins ConvolutionInputGenerator_6/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_19/in0_V]
  connect_bd_intf_net -intf_net FMPadding_Batch_0_out_V [get_bd_intf_pins FMPadding_Batch_0/out_V] [get_bd_intf_pins StreamingFIFO_2/in0_V]
  connect_bd_intf_net -intf_net FMPadding_Batch_1_out_V [get_bd_intf_pins FMPadding_Batch_1/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_3/in0_V]
  connect_bd_intf_net -intf_net FMPadding_Batch_2_out_V [get_bd_intf_pins FMPadding_Batch_2/out_V] [get_bd_intf_pins StreamingFIFO_17/in0_V]
  connect_bd_intf_net -intf_net FMPadding_Batch_3_out_V [get_bd_intf_pins FMPadding_Batch_3/out_V] [get_bd_intf_pins StreamingFIFO_24/in0_V]
  connect_bd_intf_net -intf_net FMPadding_Batch_4_out_V [get_bd_intf_pins FMPadding_Batch_4/out_V] [get_bd_intf_pins StreamingFIFO_31/in0_V]
  connect_bd_intf_net -intf_net FMPadding_Batch_5_out_V [get_bd_intf_pins FMPadding_Batch_5/out_V] [get_bd_intf_pins StreamingFIFO_38/in0_V]
  connect_bd_intf_net -intf_net FMPadding_Batch_6_out_V [get_bd_intf_pins FMPadding_Batch_6/out_V] [get_bd_intf_pins StreamingFIFO_45/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_0_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_0/out_V] [get_bd_intf_pins StreamingFIFO_4/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_10_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_10/out_V] [get_bd_intf_pins StreamingFIFO_26/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_11_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_11/out_V] [get_bd_intf_pins StreamingMaxPool_Batch_3/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_12_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_12/out_V] [get_bd_intf_pins StreamingFIFO_30/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_13_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_13/out_V] [get_bd_intf_pins StreamingFIFO_33/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_14_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_14/out_V] [get_bd_intf_pins StreamingMaxPool_Batch_4/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_15_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_15/out_V] [get_bd_intf_pins StreamingFIFO_37/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_16_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_16/out_V] [get_bd_intf_pins StreamingFIFO_40/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_17_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_17/out_V] [get_bd_intf_pins StreamingMaxPool_Batch_5/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_18_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_18/out_V] [get_bd_intf_pins StreamingFIFO_44/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_19_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_19/out_V] [get_bd_intf_pins StreamingFIFO_47/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_1_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_1/out_V] [get_bd_intf_pins StreamingMaxPool_Batch_0/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_20_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_20/out_V] [get_bd_intf_pins StreamingMaxPool_Batch_6/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_21_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_21/out_V] [get_bd_intf_pins StreamingFCLayer_Batch_7/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_22_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_22/out_V] [get_bd_intf_pins StreamingFCLayer_Batch_9/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_2_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_2/out_V] [get_bd_intf_pins StreamingFIFO_8/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_3_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_3/out_V] [get_bd_intf_pins StreamingFIFO_10/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_4_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_4/out_V] [get_bd_intf_pins StreamingFIFO_12/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_5_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_5/out_V] [get_bd_intf_pins StreamingMaxPool_Batch_1/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_6_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_6/out_V] [get_bd_intf_pins StreamingFIFO_16/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_7_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_7/out_V] [get_bd_intf_pins StreamingFIFO_19/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_8_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_8/out_V] [get_bd_intf_pins StreamingMaxPool_Batch_2/in0_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_9_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_9/out_V] [get_bd_intf_pins StreamingFIFO_23/in0_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_0_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_1/in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_0/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_1_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_5/in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_1/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_2_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_8/in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_2/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_3_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_11/in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_3/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_4_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_14/in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_4/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_5_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_17/in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_5/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_6_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_20/in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_6/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_7_out_V [get_bd_intf_pins StreamingFCLayer_Batch_7/out_V] [get_bd_intf_pins StreamingFCLayer_Batch_8/in0_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_8_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_22/in0_V] [get_bd_intf_pins StreamingFCLayer_Batch_8/out_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_9_out_V [get_bd_intf_pins m_axis_0] [get_bd_intf_pins StreamingFCLayer_Batch_9/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_0_out_V [get_bd_intf_pins StreamingFIFO_0/out_V] [get_bd_intf_pins Thresholding_Batch_0/in0_V]
  connect_bd_intf_net -intf_net StreamingFIFO_10_out_V [get_bd_intf_pins ConvolutionInputGenerator_1/in0_V] [get_bd_intf_pins StreamingFIFO_10/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_12_out_V [get_bd_intf_pins StreamingFCLayer_Batch_1/in0_V] [get_bd_intf_pins StreamingFIFO_12/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_15_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_6/in0_V] [get_bd_intf_pins StreamingFIFO_15/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_16_out_V [get_bd_intf_pins FMPadding_Batch_2/in0_V] [get_bd_intf_pins StreamingFIFO_16/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_17_out_V [get_bd_intf_pins ConvolutionInputGenerator_2/in0_V] [get_bd_intf_pins StreamingFIFO_17/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_19_out_V [get_bd_intf_pins StreamingFCLayer_Batch_2/in0_V] [get_bd_intf_pins StreamingFIFO_19/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_1_out_V [get_bd_intf_pins FMPadding_Batch_0/in0_V] [get_bd_intf_pins StreamingFIFO_1/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_22_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_9/in0_V] [get_bd_intf_pins StreamingFIFO_22/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_23_out_V [get_bd_intf_pins FMPadding_Batch_3/in0_V] [get_bd_intf_pins StreamingFIFO_23/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_24_out_V [get_bd_intf_pins ConvolutionInputGenerator_3/in0_V] [get_bd_intf_pins StreamingFIFO_24/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_26_out_V [get_bd_intf_pins StreamingFCLayer_Batch_3/in0_V] [get_bd_intf_pins StreamingFIFO_26/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_29_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_12/in0_V] [get_bd_intf_pins StreamingFIFO_29/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_2_out_V [get_bd_intf_pins ConvolutionInputGenerator_0/in0_V] [get_bd_intf_pins StreamingFIFO_2/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_30_out_V [get_bd_intf_pins FMPadding_Batch_4/in0_V] [get_bd_intf_pins StreamingFIFO_30/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_31_out_V [get_bd_intf_pins ConvolutionInputGenerator_4/in0_V] [get_bd_intf_pins StreamingFIFO_31/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_33_out_V [get_bd_intf_pins StreamingFCLayer_Batch_4/in0_V] [get_bd_intf_pins StreamingFIFO_33/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_36_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_15/in0_V] [get_bd_intf_pins StreamingFIFO_36/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_37_out_V [get_bd_intf_pins FMPadding_Batch_5/in0_V] [get_bd_intf_pins StreamingFIFO_37/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_38_out_V [get_bd_intf_pins ConvolutionInputGenerator_5/in0_V] [get_bd_intf_pins StreamingFIFO_38/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_40_out_V [get_bd_intf_pins StreamingFCLayer_Batch_5/in0_V] [get_bd_intf_pins StreamingFIFO_40/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_44_out_V [get_bd_intf_pins FMPadding_Batch_6/in0_V] [get_bd_intf_pins StreamingFIFO_44/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_45_out_V [get_bd_intf_pins ConvolutionInputGenerator_6/in0_V] [get_bd_intf_pins StreamingFIFO_45/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_47_out_V [get_bd_intf_pins StreamingFCLayer_Batch_6/in0_V] [get_bd_intf_pins StreamingFIFO_47/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_4_out_V [get_bd_intf_pins StreamingFCLayer_Batch_0/in0_V] [get_bd_intf_pins StreamingFIFO_4/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_7_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_2/in0_V] [get_bd_intf_pins StreamingFIFO_7/out_V]
  connect_bd_intf_net -intf_net StreamingFIFO_8_out_V [get_bd_intf_pins FMPadding_Batch_1/in0_V] [get_bd_intf_pins StreamingFIFO_8/out_V]
  connect_bd_intf_net -intf_net StreamingMaxPool_Batch_0_out_V [get_bd_intf_pins StreamingFIFO_7/in0_V] [get_bd_intf_pins StreamingMaxPool_Batch_0/out_V]
  connect_bd_intf_net -intf_net StreamingMaxPool_Batch_1_out_V [get_bd_intf_pins StreamingFIFO_15/in0_V] [get_bd_intf_pins StreamingMaxPool_Batch_1/out_V]
  connect_bd_intf_net -intf_net StreamingMaxPool_Batch_2_out_V [get_bd_intf_pins StreamingFIFO_22/in0_V] [get_bd_intf_pins StreamingMaxPool_Batch_2/out_V]
  connect_bd_intf_net -intf_net StreamingMaxPool_Batch_3_out_V [get_bd_intf_pins StreamingFIFO_29/in0_V] [get_bd_intf_pins StreamingMaxPool_Batch_3/out_V]
  connect_bd_intf_net -intf_net StreamingMaxPool_Batch_4_out_V [get_bd_intf_pins StreamingFIFO_36/in0_V] [get_bd_intf_pins StreamingMaxPool_Batch_4/out_V]
  connect_bd_intf_net -intf_net StreamingMaxPool_Batch_5_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_18/in0_V] [get_bd_intf_pins StreamingMaxPool_Batch_5/out_V]
  connect_bd_intf_net -intf_net StreamingMaxPool_Batch_6_out_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_21/in0_V] [get_bd_intf_pins StreamingMaxPool_Batch_6/out_V]
  connect_bd_intf_net -intf_net Thresholding_Batch_0_out_V [get_bd_intf_pins StreamingFIFO_1/in0_V] [get_bd_intf_pins Thresholding_Batch_0/out_V]
  connect_bd_intf_net -intf_net in0_V_0_1 [get_bd_intf_pins s_axis_0] [get_bd_intf_pins StreamingFIFO_0/in0_V]

  # Create port connections
  connect_bd_net -net ap_clk_0_1 [get_bd_pins ap_clk] [get_bd_pins ConvolutionInputGenerator_0/ap_clk] [get_bd_pins ConvolutionInputGenerator_1/ap_clk] [get_bd_pins ConvolutionInputGenerator_2/ap_clk] [get_bd_pins ConvolutionInputGenerator_3/ap_clk] [get_bd_pins ConvolutionInputGenerator_4/ap_clk] [get_bd_pins ConvolutionInputGenerator_5/ap_clk] [get_bd_pins ConvolutionInputGenerator_6/ap_clk] [get_bd_pins FMPadding_Batch_0/ap_clk] [get_bd_pins FMPadding_Batch_1/ap_clk] [get_bd_pins FMPadding_Batch_2/ap_clk] [get_bd_pins FMPadding_Batch_3/ap_clk] [get_bd_pins FMPadding_Batch_4/ap_clk] [get_bd_pins FMPadding_Batch_5/ap_clk] [get_bd_pins FMPadding_Batch_6/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_0/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_1/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_10/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_11/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_12/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_13/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_14/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_15/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_16/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_17/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_18/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_19/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_2/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_20/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_21/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_22/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_3/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_4/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_5/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_6/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_7/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_8/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_9/ap_clk] [get_bd_pins StreamingFCLayer_Batch_0/ap_clk] [get_bd_pins StreamingFCLayer_Batch_1/ap_clk] [get_bd_pins StreamingFCLayer_Batch_2/ap_clk] [get_bd_pins StreamingFCLayer_Batch_3/ap_clk] [get_bd_pins StreamingFCLayer_Batch_4/ap_clk] [get_bd_pins StreamingFCLayer_Batch_5/ap_clk] [get_bd_pins StreamingFCLayer_Batch_6/ap_clk] [get_bd_pins StreamingFCLayer_Batch_7/ap_clk] [get_bd_pins StreamingFCLayer_Batch_8/ap_clk] [get_bd_pins StreamingFCLayer_Batch_9/ap_clk] [get_bd_pins StreamingFIFO_0/ap_clk] [get_bd_pins StreamingFIFO_1/ap_clk] [get_bd_pins StreamingFIFO_10/ap_clk] [get_bd_pins StreamingFIFO_12/ap_clk] [get_bd_pins StreamingFIFO_15/ap_clk] [get_bd_pins StreamingFIFO_16/ap_clk] [get_bd_pins StreamingFIFO_17/ap_clk] [get_bd_pins StreamingFIFO_19/ap_clk] [get_bd_pins StreamingFIFO_2/ap_clk] [get_bd_pins StreamingFIFO_22/ap_clk] [get_bd_pins StreamingFIFO_23/ap_clk] [get_bd_pins StreamingFIFO_24/ap_clk] [get_bd_pins StreamingFIFO_26/ap_clk] [get_bd_pins StreamingFIFO_29/ap_clk] [get_bd_pins StreamingFIFO_30/ap_clk] [get_bd_pins StreamingFIFO_31/ap_clk] [get_bd_pins StreamingFIFO_33/ap_clk] [get_bd_pins StreamingFIFO_36/ap_clk] [get_bd_pins StreamingFIFO_37/ap_clk] [get_bd_pins StreamingFIFO_38/ap_clk] [get_bd_pins StreamingFIFO_4/ap_clk] [get_bd_pins StreamingFIFO_40/ap_clk] [get_bd_pins StreamingFIFO_44/ap_clk] [get_bd_pins StreamingFIFO_45/ap_clk] [get_bd_pins StreamingFIFO_47/ap_clk] [get_bd_pins StreamingFIFO_7/ap_clk] [get_bd_pins StreamingFIFO_8/ap_clk] [get_bd_pins StreamingMaxPool_Batch_0/ap_clk] [get_bd_pins StreamingMaxPool_Batch_1/ap_clk] [get_bd_pins StreamingMaxPool_Batch_2/ap_clk] [get_bd_pins StreamingMaxPool_Batch_3/ap_clk] [get_bd_pins StreamingMaxPool_Batch_4/ap_clk] [get_bd_pins StreamingMaxPool_Batch_5/ap_clk] [get_bd_pins StreamingMaxPool_Batch_6/ap_clk] [get_bd_pins Thresholding_Batch_0/ap_clk]
  connect_bd_net -net ap_rst_n_0_1 [get_bd_pins ap_rst_n] [get_bd_pins ConvolutionInputGenerator_0/ap_rst_n] [get_bd_pins ConvolutionInputGenerator_1/ap_rst_n] [get_bd_pins ConvolutionInputGenerator_2/ap_rst_n] [get_bd_pins ConvolutionInputGenerator_3/ap_rst_n] [get_bd_pins ConvolutionInputGenerator_4/ap_rst_n] [get_bd_pins ConvolutionInputGenerator_5/ap_rst_n] [get_bd_pins ConvolutionInputGenerator_6/ap_rst_n] [get_bd_pins FMPadding_Batch_0/ap_rst_n] [get_bd_pins FMPadding_Batch_1/ap_rst_n] [get_bd_pins FMPadding_Batch_2/ap_rst_n] [get_bd_pins FMPadding_Batch_3/ap_rst_n] [get_bd_pins FMPadding_Batch_4/ap_rst_n] [get_bd_pins FMPadding_Batch_5/ap_rst_n] [get_bd_pins FMPadding_Batch_6/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_0/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_1/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_10/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_11/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_12/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_13/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_14/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_15/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_16/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_17/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_18/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_19/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_2/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_20/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_21/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_22/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_3/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_4/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_5/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_6/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_7/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_8/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_9/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_0/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_1/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_2/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_3/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_4/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_5/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_6/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_7/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_8/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_9/ap_rst_n] [get_bd_pins StreamingFIFO_0/ap_rst_n] [get_bd_pins StreamingFIFO_1/ap_rst_n] [get_bd_pins StreamingFIFO_10/ap_rst_n] [get_bd_pins StreamingFIFO_12/ap_rst_n] [get_bd_pins StreamingFIFO_15/ap_rst_n] [get_bd_pins StreamingFIFO_16/ap_rst_n] [get_bd_pins StreamingFIFO_17/ap_rst_n] [get_bd_pins StreamingFIFO_19/ap_rst_n] [get_bd_pins StreamingFIFO_2/ap_rst_n] [get_bd_pins StreamingFIFO_22/ap_rst_n] [get_bd_pins StreamingFIFO_23/ap_rst_n] [get_bd_pins StreamingFIFO_24/ap_rst_n] [get_bd_pins StreamingFIFO_26/ap_rst_n] [get_bd_pins StreamingFIFO_29/ap_rst_n] [get_bd_pins StreamingFIFO_30/ap_rst_n] [get_bd_pins StreamingFIFO_31/ap_rst_n] [get_bd_pins StreamingFIFO_33/ap_rst_n] [get_bd_pins StreamingFIFO_36/ap_rst_n] [get_bd_pins StreamingFIFO_37/ap_rst_n] [get_bd_pins StreamingFIFO_38/ap_rst_n] [get_bd_pins StreamingFIFO_4/ap_rst_n] [get_bd_pins StreamingFIFO_40/ap_rst_n] [get_bd_pins StreamingFIFO_44/ap_rst_n] [get_bd_pins StreamingFIFO_45/ap_rst_n] [get_bd_pins StreamingFIFO_47/ap_rst_n] [get_bd_pins StreamingFIFO_7/ap_rst_n] [get_bd_pins StreamingFIFO_8/ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_0/ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_1/ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_2/ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_3/ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_4/ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_5/ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_6/ap_rst_n] [get_bd_pins Thresholding_Batch_0/ap_rst_n]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m_axis_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000.000000} \
   ] $m_axis_0

  set s_axis_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000.000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {1} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $s_axis_0


  # Create ports
  set ap_clk [ create_bd_port -dir I -type clk -freq_hz 100000000.000000 ap_clk ]
  set ap_rst_n [ create_bd_port -dir I -type rst ap_rst_n ]

  # Create instance: finn_ip
  create_hier_cell_finn_ip [current_bd_instance .] finn_ip

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_9_out_V [get_bd_intf_ports m_axis_0] [get_bd_intf_pins finn_ip/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_0_1 [get_bd_intf_ports s_axis_0] [get_bd_intf_pins finn_ip/s_axis_0]

  # Create port connections
  connect_bd_net -net ap_clk_0_1 [get_bd_ports ap_clk] [get_bd_pins finn_ip/ap_clk]
  connect_bd_net -net ap_rst_n_0_1 [get_bd_ports ap_rst_n] [get_bd_pins finn_ip/ap_rst_n]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


