# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "C_M_AXI_DATA_WIDTH" -widget comboBox
  ipgui::add_param $IPINST -name "C_BURST_LEN" -widget comboBox
  ipgui::add_param $IPINST -name "C_TRANSACTIONS_NUM" -widget comboBox
  ipgui::add_param $IPINST -name "FREQ_HZ" -widget comboBox

}

proc update_PARAM_VALUE.C_BURST_LEN { PARAM_VALUE.C_BURST_LEN } {
	# Procedure called to update C_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BURST_LEN { PARAM_VALUE.C_BURST_LEN } {
	# Procedure called to validate C_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TRANSACTIONS_NUM { PARAM_VALUE.C_TRANSACTIONS_NUM } {
	# Procedure called to update C_TRANSACTIONS_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TRANSACTIONS_NUM { PARAM_VALUE.C_TRANSACTIONS_NUM } {
	# Procedure called to validate C_TRANSACTIONS_NUM
	return true
}

proc update_PARAM_VALUE.FREQ_HZ { PARAM_VALUE.FREQ_HZ } {
	# Procedure called to update FREQ_HZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_HZ { PARAM_VALUE.FREQ_HZ } {
	# Procedure called to validate FREQ_HZ
	return true
}


