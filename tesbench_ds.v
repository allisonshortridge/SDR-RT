`timescale 1ns / 1ps

module testbench_ds();
    reg   clock,
          reset;
    reg   ready;
    
    reg  [11:0] data_in;
    wire  [15:0] data_out;
    
    downsampler_4 ds_4(reset, ready,data_in, data_out);
    
    initial begin
        clock = 1'b0;
        reset = 1'b1;
        ready = 1'b0;
        
        #50
        reset = 1'b0;  
        #40
        data_in = 16'h806;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h855;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h135;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h271;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h643;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h037;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h065;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h834;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h868;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h593;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h159;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h818;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h432;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h410;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h170;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h607;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h998;
        ready = 1'b1;
        #10
        ready = 1'b0;
            
    end
    
    always #10 clock = ~clock;
    
    // end the simulation after a certain period of time
    initial begin
        
        #100000; // end simulation after 10000 time units
        $finish;
    end
endmodule
