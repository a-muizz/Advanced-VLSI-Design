set_global_assignment -entity "my_nco" -library "lib_my_nco" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "my_nco" -library "lib_my_nco" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "my_nco" -library "lib_my_nco" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_my_nco" -name SPD_FILE [file join $::quartus(sip_path) "../my_nco.spd"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "../../my_nco.qsys"]

set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "my_nco.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/asj_nco_mob_rw.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/asj_nco_mob_rw.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/asj_nco_isdr.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/asj_nco_isdr.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/asj_nco_apr_dxx.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/asj_nco_apr_dxx.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/asj_dxx_g.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/asj_dxx_g.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/asj_dxx.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/asj_dxx.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/asj_gal.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/asj_gal.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/asj_nco_as_m_cen.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/asj_nco_as_m_cen.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/asj_altqmcpipe.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/asj_altqmcpipe.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/my_nco_nco_ii_0_sin.hex"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/my_nco_nco_ii_0_cos.hex"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/my_nco_nco_ii_0.v"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/my_nco_nco_ii_0_tb.vhd"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/c_model/model_wrapper.cpp"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/c_model/nco_model.cpp"]
set_global_assignment -library "lib_my_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/c_model/nco_model.h"]
