///////////////////////////////////////////////////////////////////
// File Name: uart_tests.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: Tests for verifying the Chip uart and test modes
//          
///////////////////////////////////////////////////////////////////

`ifndef _uart_tests_
`define _uart_tests_

`include "psd_chip_constants.sv"  // all sim constants defined here
//`include "larpix_utilities.v" // needed for verification tasks

function integer getSeed;
// task gets a seed from the Linux date program. 
// call "date" and put out time in seconds since Jan 1, 1970 (when time began)
// and puts the results in a file called "now_in_seconds"
integer fp;
integer fgetsResult;
integer sscanfResult;
integer NowInSeconds;
integer start;

reg [8*10:1] str;
begin
    fp = $fopen("now_in_seconds","r");
    fgetsResult = $fgets(str,fp);
    sscanfResult = $sscanf(str,"%d",NowInSeconds);
    getSeed = NowInSeconds;
    $fclose(fp);
//    $display("seed = %d\n",getSeed);
//    start=$random(getSeed); 
end
endfunction

task isDefaultConfig();
logic [7:0] config_default [0:NUMREGS-1]; // default scoreboard 
integer errors;
logic debug;
begin
    errors = 0;
    debug = FALSE;
    config_default[0] = 8'hF0;      
    config_default[1] = 8'h07;      
    config_default[2] = 8'h77;      
    config_default[3] = 8'h77;      
    config_default[4] = 8'h77;      
    config_default[5] = 8'h77;      
    config_default[6] = 8'h8E;      
    config_default[7] = 8'h70;      
    config_default[8] = 8'h81;      
    config_default[9] = 8'h81;      
    config_default[10] = 8'h81;      
    config_default[11] = 8'h81;      
    config_default[12] = 8'h07;      
    config_default[13] = 8'hF2;      
    config_default[14] = 8'hF2;      
    config_default[15] = 8'hF2;      
    config_default[16] = 8'hF2;      
    config_default[17] = 8'h02;      
    config_default[18] = 8'h1C;      
    config_default[19] = 8'h1C;      
    config_default[20] = 8'h1C;      
    config_default[21] = 8'h1C;      
    config_default[22] = 8'h00;      
    config_default[23] = 8'h00;      
    config_default[24] = 8'h00;      
    config_default[25] = 8'h00;      
    config_default[26] = 8'h00;      
    config_default[27] = 8'h00;      
    config_default[28] = 8'h00;      
    config_default[29] = 8'h00;      
    config_default[30] = 8'h00;      
    config_default[31] = 8'h00;      
    config_default[32] = 8'h00;      
    config_default[33] = 8'h00;      
    config_default[34] = 8'h00;      
    config_default[35] = 8'h00;      
    config_default[36] = 8'h00;      
    config_default[37] = 8'h00;      
    config_default[38] = 8'h00;      
    config_default[39] = 8'h00;      
    config_default[40] = 8'h00;      
    config_default[41] = 8'h00;      
    config_default[42] = 8'h00;      
    config_default[43] = 8'h00;      
    config_default[44] = 8'h00;      
    config_default[45] = 8'h00;      
    config_default[46] = 8'h00;      
    config_default[47] = 8'h1B;      
    config_default[48] = 8'h19;      
    config_default[49] = 8'h19;      
    config_default[50] = 8'h19;      
    config_default[51] = 8'h00;      
    config_default[52] = 8'h00;      
    config_default[53] = 8'h01;      
    config_default[54] = 8'h00;      
    config_default[55] = 8'h20;      
    config_default[56] = 8'h28;      
    config_default[57] = 8'h30;      
    config_default[58] = 8'h38;      
    config_default[59] = 8'h30;      
    config_default[60] = 8'h00;      
    config_default[61] = 8'h00;      
    config_default[62] = 8'h00;      
    config_default[63] = 8'h00;      
    config_default[64] = 8'h00;      
    config_default[65] = 8'h00;      
    config_default[66] = 8'h00;      

    $display("Test: isDefaultConfig");
  //  regfileOpUART(READ,0,0); // loop through registers
  //  regfileOpUART(WRITE,0,8'hF0); // loop through registers
  //  regfileOpUART(READ,0,0); // loop through registers

    for (int i = 0; i < NUMREGS; i++) begin
        regfileOpUART(READ,i,0); // loop through registers
        if (debug) begin
                $display("isDefaultConfig: DEBUG\n");
                $display("at address = %h: readback = %h, expected = %h",i,rcvd_data_word,config_default[i]);
        end // if   
        assert(rcvd_data_word == config_default[i]) else begin
            $error("isDefaultConfig: error!\n");
            $error("at address = %h: readback = %h, expected = %h",i,rcvd_data_word,config_default[i]);
            errors = errors + 1;
        end // assert
    end // for
    regfileOpUART(READ,0,0); // loop through registers
    $display("Config default verification complete. %0d errors.",errors);
end
endtask // isDefaultConfig

task testExternalInterfaceUART
    (input logic [7:0] testval);
    // verify we can read and write all registers in regfile
    // using the UART
integer errors;
logic debug;
begin
    $display("\nTest: testExternalInterfaceUART. Testval = 0x%h",testval);
    errors = 0;
    debug = 0;
    // we have NUMREGS config registers 
      for (int register = 0; register < NUMREGS; register++) begin
        regfileOpUART(WRITE,register,testval);
        if (debug) 
            $display("testExternalInterfaceUART: writing 0x%h to register 0x%h",testval,register);
        end
        for (int register = 0; register < NUMREGS; register++) begin
            regfileOpUART(READ,register,testval);
        if (debug)
        $display("testExternalInterfaceUART: read back 0x%h from register %h",testval,register);
        assert(rcvd_data_word == testval) 
        else begin
            $error("testExternalInterfaceUART: error!\n");
            $error("Register 0x%h: data received = 0x%h, expected = 0x%h\n",register,rcvd_data_word,testval);
                errors = errors + 1;
        end // assert
    end // for
    $display("testExternalInterfaceUART complete. %0d errors.",errors);
    $display("testval was 0x%h",testval);
end
endtask // testExternalInterfaceUART

task randomTestExternalInterface
    (input logic [15:0] NumTrials);
    // constrained random test of external interface
int errors;
logic debug;
logic wrb; // read or write?
logic [7:0] data;
logic [7:0] address;
logic [7:0] randData;
logic [7:0] regfileState [NUMREGS-1:0]; // scoreboard
begin
    $display("\nTest: randomTestExternalInterfaceUART. Trials = %d",NumTrials);
    errors = 0;
    debug = 0;

    // first, load all registers and scoreboard with random data
    for (int addr = 0; addr < NUMREGS; addr++) begin
        randData = $urandom()%255;
        regfileOpUART(WRITE,addr,randData);
        regfileState[addr] = randData;
    end // for
    // now randomly read and write UART data for specified number of trails
    // update scoreboard every time new data is written
    for (int trial = 0; trial < NumTrials; trial++) begin
        randomize(wrb);
        randomize(address) with {address < NUMREGS; address >= 0;};
        randomize(data) with {data < 256; data >= 0;};
        regfileOpUART(wrb,address,data);
/*       
        if (debug) begin
            $display("wrb = %d",wrb);
            $display("address = %d",address);
            $display("data = %d",data);
        end
*/
        // if task is a write, update scoreboard
        if (wrb) begin
            regfileState[address] = data;
            if (debug) begin
                $display("randomTestExternalInterface: WRITE. Update scoreboard with Register 0x%h = 0x%h",address,data); 
            end // if
        end // if
        else begin // if task is a read, check scoreboard
            if (debug) begin
                $display("randomTestExternalInterface: READ. Data received: Register 0x%h = 0x%h",address,rcvd_data_word); 
            end // if
            assert(rcvd_data_word == regfileState[address])
            else begin
                $error("randomTestExternalInterface: error!\n");
                $error("Register 0x%h: data received = 0x%h, expected = 0x%h\n",address,rcvd_data_word,data);
            errors++;
            end // assert
        end // if         
    end // for
    $display("randomTestExternalInterface complete. %0d transactions executed. %0d errors.",NumTrials,errors);
end
endtask    
        
// randomly read and write UART data for specified number of trails
/*
task random_spi_test;
// randomly reads and writes random data to random SPI registers
// used to protect against confirmation bias in our testing
input Verbose;
input WriteToLog;
input integer NumTrials;
reg[24*8:1] block_name;
reg [WORDWIDTH-1:0] spi_state [REGNUM-1:0]; // holds copy of SPI state
integer addr, trial, numtest;
reg [WORDWIDTH-1:0] spi_seed;
reg [WORDWIDTH-1:0] spi_addr;
reg [WORDWIDTH-1:0] spi_data;
reg spi_op;
begin

    block_name = "spi_random";
    if (WriteToLog == 1) initFile(block_name);

    // get random seed 
    getSeed;
    spi_seed = $unsigned(seed)%(2**(WORDWIDTH-1));

    // first load all SPI registers with a random default word
    // next load SPI state with same word for setup
    for (addr = 0; addr < REGNUM; addr = addr + 1) begin
        spi_master(WRITE,addr,spi_seed);
        spi_state[addr] = spi_seed;
    end
// now randomly read and write SPI data for specified number of trials
    for (trial = 0; trial < NumTrials; trial = trial + 1) begin
        spi_op = $unsigned($random)%2;
        spi_addr = $unsigned($random)%(REGNUM-1);
        spi_data = $unsigned($random)%(2**(WORDWIDTH-1));
        spi_master(spi_op,spi_addr,spi_data);
        // if a read, check to see if it matches SPI state
        if (spi_op == READ) begin
            checkFault(block_log,block_name,"test",receivedData,spi_state[spi_addr],spi_addr,WriteToLog,Verbose,FALSE);
        end else // spi_op = WRITE and need to update SPI state
            spi_state[spi_addr] = spi_data;
    end // for
reportResults(block_name,WriteToLog);
end 
endtask
*/

`endif // _uart_tests_
