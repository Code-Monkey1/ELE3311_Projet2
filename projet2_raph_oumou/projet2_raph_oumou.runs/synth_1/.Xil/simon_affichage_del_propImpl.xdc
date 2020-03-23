set_property SRC_FILE_INFO {cfile:U:/didac/constraints/didac.xdc rfile:U:/didac/constraints/didac.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R4 IOSTANDARD LVCMOS33 } [get_ports { clk_100mhz_i }]; # Sch=sysclk
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D22 IOSTANDARD LVCMOS12 } [get_ports { rst_i }]; # Sch=btnd
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E22 IOSTANDARD LVCMOS12 } [get_ports { sw_i }]; # Sch=sw[0]
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F15 IOSTANDARD LVCMOS12 } [get_ports { pb_i }]; # Sch=btnu
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS25} [get_ports {dels_o[0]}]; # Sch=led[0]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T15 IOSTANDARD LVCMOS25} [get_ports {dels_o[1]}]; # Sch=led[1]
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T16 IOSTANDARD LVCMOS25} [get_ports {dels_o[2]}]; # Sch=led[2]
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS25} [get_ports {dels_o[3]}]; # Sch=led[3]
