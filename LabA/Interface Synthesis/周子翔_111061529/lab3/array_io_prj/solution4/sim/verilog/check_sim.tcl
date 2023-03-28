# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
# Tool Version Limit: 2022.04
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc sc_sim_check {ret err logfile} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        while {[gets $fl line] >= 0} {
            if {[string first "AESL_mErrNo = " $line] == 0} {
                set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
                if {$mismatch_num != 0} {
                    ::AP::printMsg ERR COSIM 403 COSIM_403_986 ${mismatch_num}
                    break
                }
            }
        }
    }
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                ::AP::printMsg ERR COSIM 404 COSIM_404_987 $status
            } else {
                ::AP::printMsg ERR COSIM 405 COSIM_405_988
            }
        } else {
            ::AP::printMsg ERR COSIM 405 COSIM_405_989
        }
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            ::AP::printMsg ERR COSIM 405 COSIM_405_990
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc rtl_sim_check {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        set unmatch_num 0
        while {[gets $fl line] >= 0} {
            if {[string first "unmatched" $line] != -1} {
                set unmatch_num [expr $unmatch_num + 1]
            }
        }
        if {$unmatch_num != 0} {
            ::AP::printMsg ERR COSIM 406 COSIM_406_991 ${unmatch_num}
        }
    }
    if {[file exists ".aesl_error"]} {
        set errfl [open ".aesl_error" r]
        gets $errfl line
        if {$line != 0} {
            ::AP::printMsg ERR COSIM 407 COSIM_407_992 $line
        }
    }
    if {[file exists ".exit.err"]} {
        ::AP::printMsg ERR COSIM 405 COSIM_405_993
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc check_tvin_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "c.array_io.autotvin_d_i_0.dat"
         "c.array_io.autotvin_d_i_1.dat"
         "c.array_io.autotvin_d_i_2.dat"
         "c.array_io.autotvin_d_i_3.dat"
         "c.array_io.autotvin_d_i_4.dat"
         "c.array_io.autotvin_d_i_5.dat"
         "c.array_io.autotvin_d_i_6.dat"
         "c.array_io.autotvin_d_i_7.dat"
         "c.array_io.autotvin_d_i_8.dat"
         "c.array_io.autotvin_d_i_9.dat"
         "c.array_io.autotvin_d_i_10.dat"
         "c.array_io.autotvin_d_i_11.dat"
         "c.array_io.autotvin_d_i_12.dat"
         "c.array_io.autotvin_d_i_13.dat"
         "c.array_io.autotvin_d_i_14.dat"
         "c.array_io.autotvin_d_i_15.dat"
         "c.array_io.autotvin_d_i_16.dat"
         "c.array_io.autotvin_d_i_17.dat"
         "c.array_io.autotvin_d_i_18.dat"
         "c.array_io.autotvin_d_i_19.dat"
         "c.array_io.autotvin_d_i_20.dat"
         "c.array_io.autotvin_d_i_21.dat"
         "c.array_io.autotvin_d_i_22.dat"
         "c.array_io.autotvin_d_i_23.dat"
         "c.array_io.autotvin_d_i_24.dat"
         "c.array_io.autotvin_d_i_25.dat"
         "c.array_io.autotvin_d_i_26.dat"
         "c.array_io.autotvin_d_i_27.dat"
         "c.array_io.autotvin_d_i_28.dat"
         "c.array_io.autotvin_d_i_29.dat"
         "c.array_io.autotvin_d_i_30.dat"
         "c.array_io.autotvin_d_i_31.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 320 COSIM_320_994
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}

proc check_tvout_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "rtl.array_io.autotvout_d_o_0.dat"
         "rtl.array_io.autotvout_d_o_1.dat"
         "rtl.array_io.autotvout_d_o_2.dat"
         "rtl.array_io.autotvout_d_o_3.dat"
         "rtl.array_io.autotvout_d_o_4.dat"
         "rtl.array_io.autotvout_d_o_5.dat"
         "rtl.array_io.autotvout_d_o_6.dat"
         "rtl.array_io.autotvout_d_o_7.dat"
         "rtl.array_io.autotvout_d_o_8.dat"
         "rtl.array_io.autotvout_d_o_9.dat"
         "rtl.array_io.autotvout_d_o_10.dat"
         "rtl.array_io.autotvout_d_o_11.dat"
         "rtl.array_io.autotvout_d_o_12.dat"
         "rtl.array_io.autotvout_d_o_13.dat"
         "rtl.array_io.autotvout_d_o_14.dat"
         "rtl.array_io.autotvout_d_o_15.dat"
         "rtl.array_io.autotvout_d_o_16.dat"
         "rtl.array_io.autotvout_d_o_17.dat"
         "rtl.array_io.autotvout_d_o_18.dat"
         "rtl.array_io.autotvout_d_o_19.dat"
         "rtl.array_io.autotvout_d_o_20.dat"
         "rtl.array_io.autotvout_d_o_21.dat"
         "rtl.array_io.autotvout_d_o_22.dat"
         "rtl.array_io.autotvout_d_o_23.dat"
         "rtl.array_io.autotvout_d_o_24.dat"
         "rtl.array_io.autotvout_d_o_25.dat"
         "rtl.array_io.autotvout_d_o_26.dat"
         "rtl.array_io.autotvout_d_o_27.dat"
         "rtl.array_io.autotvout_d_o_28.dat"
         "rtl.array_io.autotvout_d_o_29.dat"
         "rtl.array_io.autotvout_d_o_30.dat"
         "rtl.array_io.autotvout_d_o_31.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 303 COSIM_303_996
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}
