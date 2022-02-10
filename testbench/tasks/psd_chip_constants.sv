///////////////////////////////////////////////////////////////////
// File Name: psd_chip_constants.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description:  Constants for PSD_CHIP operation and simulation
//          
///////////////////////////////////////////////////////////////////

`ifndef _psd_chip_constants_
`ifndef SYNTHESIS 
`define _psd_chip_constants_
`endif

// declare needed variables
localparam TRUE = 1;
localparam FALSE = 0;
localparam SILENT = 0;
localparam VERBOSE = 1;          // high to print out verification results

// localparams to define config registers
// configuration word definitions
localparam CHANNEL_ENABLE = 0;
localparam BUFF_REF0 = 1;
localparam BUFF_REF1 = 2;
localparam BUFF_REF2 = 3;
localparam BUFF_REF3 = 4;
localparam BUFF_REF4 = 5;
localparam FINE_REFP = 6;
localparam FINE_REFN = 7;
localparam D2S_REF0 = 8;
localparam D2S_REF1 = 9;
localparam D2S_REF2 = 10;
localparam D2S_REF3 = 11;
localparam THRESH_SOUT_GLOBAL = 12;
localparam THRESH_SOUT_FINE0 = 13;
localparam THRESH_SOUT_FINE1 = 14;
localparam THRESH_SOUT_FINE2 = 15;
localparam THRESH_SOUT_FINE3 = 16;
localparam THRESH_FOUT_GLOBAL = 17;
localparam THRESH_FOUT_FINE0 = 18;
localparam THRESH_FOUT_FINE1 = 19;
localparam THRESH_FOUT_FINE2 = 20;
localparam THRESH_FOUT_FINE3 = 21;
localparam BASELINE_RCG_GLOBAL = 22;
localparam BASELINE_RCG_FINE0 = 23;
localparam BASELINE_RCG_FINE1 = 24;
localparam BASELINE_RCG_FINE2 = 25;
localparam BASELINE_RCG_FINE3 = 26;
localparam THRESH_MIDPT_VRG = 27;
localparam THRESH_TOTAL_VRG1 = 28;
localparam THRESH_PARTIAL_VRG1 = 29;
localparam THRESH_HOLD_VRG1 = 30;
localparam THRESH_TOTAL_VRG3 = 31;
localparam THRESH_PARTIAL_VRG3 = 32;
localparam THRESH_HOLD_VRG3 = 33;
localparam IBIAS_FAST_BUFFER = 34;
localparam IBIAS_TOTAL_INT_CSI_CH0 = 35;
localparam IBIAS_PARTIAL_INT_CSI_CH0 = 36;
localparam IBIAS_HOLD_CSI_CH0 = 37;
localparam IBIAS_TOTAL_INT_CSI_CH2 = 38;
localparam IBIAS_PARTIAL_INT_CSI_CH2 = 39;
localparam IBIAS_HOLD_CSI_CH2 = 40;
localparam IBIAS_TOTAL_INT_VRG_CH1 = 41;
localparam IBIAS_PARTIAL_INT_VRG_CH1 = 42;
localparam IBIAS_HOLD_VRG_CH1 = 43;
localparam IBIAS_TOTAL_INT_VRG_CH3 = 44;
localparam IBIAS_PARTIAL_INT_VRG_CH3 = 45;
localparam IBIAS_HOLD_VRG_CH3 = 46;
localparam IBIAS_HOLD_DELAY = 47;
localparam IBIAS_SOUT_DELAY = 48;
localparam IBIAS_FOUT_WIDTH = 49;
localparam IBIAS_SOUT_COMP_WIDTH = 50;
localparam TUNABLE_RES_TOTAL_INT = 51;
localparam TUNABLE_RES_MSBS = 52;
localparam TUNABLE_RES_SUBTR_GAIN = 53;
localparam TUNABLE_RES_RCG_GAIN = 54;
localparam DIGITAL_TESTBUS0 = 55;
localparam DIGITAL_TESTBUS1 = 56;
localparam DIGITAL_TESTBUS2 = 57;
localparam DIGITAL_TESTBUS3 = 58;
localparam LVDS = 59;
localparam TRIGGER = 60;
localparam IMONITOR = 61;
localparam VMONITOR = 62;
localparam SPARE0 = 63;
localparam SPARE1 = 64;
localparam SPARE2 = 65;
localparam SPARE3 = 66;

// UART ops
localparam WRITE = 1;
localparam READ = 0;


`endif // _psd_chip_constants_
