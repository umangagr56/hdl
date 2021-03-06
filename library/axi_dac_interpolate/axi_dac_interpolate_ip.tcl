# ip

source ../scripts/adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip.tcl

adi_ip_create axi_dac_interpolate
adi_ip_files axi_dac_interpolate [list \
  "$ad_hdl_dir/library/common/up_xfer_cntrl.v" \
  "$ad_hdl_dir/library/common/up_axi.v" \
  "$ad_hdl_dir/library/common/ad_iqcor.v" \
  "$ad_hdl_dir/library/xilinx/common/ad_mul.v" \
  "axi_dac_interpolate_constr.xdc" \
  "cic_interp.v" \
  "fir_interp.v" \
  "axi_dac_interpolate_reg.v" \
  "axi_dac_interpolate_filter.v" \
  "axi_dac_interpolate.v" ]

adi_ip_properties axi_dac_interpolate

ipx::associate_bus_interfaces -busif s_axi -clock s_axi_aclk [ipx::current_core]

ipx::save_core [ipx::current_core]

