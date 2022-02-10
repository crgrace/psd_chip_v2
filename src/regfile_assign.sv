// File Name: regfile_assign.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description:  Code used in regfile.sv for assignment
//          
///////////////////////////////////////////////////////////////////

config_bits[CHANNEL_ENABLE] <= 8'hF0;
config_bits[BUFF_REF0] <= 8'h07;
config_bits[BUFF_REF1] <= 8'h77;
config_bits[BUFF_REF2] <= 8'h77;
config_bits[BUFF_REF3] <= 8'h77;
config_bits[BUFF_REF4] <= 8'h77;
config_bits[FINE_REFP] <= 8'h8E;
config_bits[FINE_REFN] <= 8'h70;
config_bits[D2S_REF0] <= 8'h81;
config_bits[D2S_REF1] <= 8'h81;
config_bits[D2S_REF2] <= 8'h81;
config_bits[D2S_REF3] <= 8'h81;
config_bits[THRESH_SOUT_GLOBAL] <= 8'h07;
config_bits[THRESH_SOUT_FINE0] <= 8'hF2;
config_bits[THRESH_SOUT_FINE1] <= 8'hF2;
config_bits[THRESH_SOUT_FINE2] <= 8'hF2;
config_bits[THRESH_SOUT_FINE3] <= 8'hF2;
config_bits[THRESH_FOUT_GLOBAL] <= 8'h02;
config_bits[THRESH_FOUT_FINE0] <= 8'h1C;
config_bits[THRESH_FOUT_FINE1] <= 8'h1C;
config_bits[THRESH_FOUT_FINE2] <= 8'h1C;
config_bits[THRESH_FOUT_FINE3] <= 8'h1C;
config_bits[BASELINE_RCG_GLOBAL] <= 8'h00; // placeholder
config_bits[BASELINE_RCG_FINE0] <= 8'h00; // placeholder
config_bits[BASELINE_RCG_FINE1] <= 8'h00; // placeholder
config_bits[BASELINE_RCG_FINE2] <= 8'h00; // placeholder
config_bits[BASELINE_RCG_FINE3] <= 8'h00; // placeholder
config_bits[THRESH_MIDPT_VRG] <= 8'h00; // placeholder
config_bits[THRESH_TOTAL_VRG1] <= 8'h00; // placeholder
config_bits[THRESH_PARTIAL_VRG1] <= 8'h00; // placeholder
config_bits[THRESH_HOLD_VRG1] <= 8'h00; // placeholder
config_bits[THRESH_TOTAL_VRG3] <= 8'h00; // placeholder
config_bits[THRESH_PARTIAL_VRG3] <= 8'h00; // placeholder
config_bits[THRESH_HOLD_VRG3] <= 8'h00; // placeholder
config_bits[IBIAS_FAST_BUFFER] <= 8'h00; // placeholder
config_bits[IBIAS_TOTAL_INT_CSI_CH0] <= 8'h00; // placeholder
config_bits[IBIAS_PARTIAL_INT_CSI_CH0] <= 8'h00; // placeholder
config_bits[IBIAS_HOLD_CSI_CH0] <= 8'h00; // placeholder
config_bits[IBIAS_TOTAL_INT_CSI_CH2] <= 8'h00; // placeholder
config_bits[IBIAS_PARTIAL_INT_CSI_CH2] <= 8'h00; // placeholder
config_bits[IBIAS_HOLD_CSI_CH2] <= 8'h00; // placeholder
config_bits[IBIAS_TOTAL_INT_VRG_CH1] <= 8'h00; // placeholder
config_bits[IBIAS_PARTIAL_INT_VRG_CH1] <= 8'h00; // placeholder
config_bits[IBIAS_HOLD_VRG_CH1] <= 8'h00; // placeholder
config_bits[IBIAS_TOTAL_INT_VRG_CH3] <= 8'h00; // placeholder
config_bits[IBIAS_PARTIAL_INT_VRG_CH3] <= 8'h00; // placeholder
config_bits[IBIAS_HOLD_VRG_CH3] <= 8'h00; // placeholder
config_bits[IBIAS_HOLD_DELAY] <= 8'h1B;
config_bits[IBIAS_SOUT_DELAY] <= 8'h19;
config_bits[IBIAS_FOUT_WIDTH] <= 8'h19;
config_bits[IBIAS_SOUT_COMP_WIDTH] <= 8'h19;
config_bits[TUNABLE_RES_TOTAL_INT] <= 8'h00;
config_bits[TUNABLE_RES_SUBTR_GAIN] <= 8'h01;
config_bits[TUNABLE_RES_RCG_GAIN] <= 8'h00; // placeholder
config_bits[DIGITAL_TESTBUS0] <= 8'h20;
config_bits[DIGITAL_TESTBUS1] <= 8'h28;
config_bits[DIGITAL_TESTBUS2] <= 8'h30;
config_bits[DIGITAL_TESTBUS3] <= 8'h38;
config_bits[LVDS] <= 8'h30;
config_bits[TRIGGER] <= 8'h00;
config_bits[IMONITOR] <= 8'h00;
config_bits[VMONITOR] <= 8'h00;
config_bits[SPARE0] <= 8'h00;
config_bits[SPARE1] <= 8'h00;
config_bits[SPARE2] <= 8'h00;
config_bits[SPARE3] <= 8'h00;


