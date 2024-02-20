transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/MTU\ Semester\ VI/EE2174\ Digital\ Logic/Lab/Lab11 {D:/MTU Semester VI/EE2174 Digital Logic/Lab/Lab11/Lab11Part1.v}

