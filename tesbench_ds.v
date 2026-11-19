`timescale 1ns / 1ps

module testbench_ds();
    reg   clock,
          reset;
    reg   ready;
    
    reg  [15:0] data_in;
    wire  [15:0] data_out;
    
    downsampler_4 ds_4(reset, ready,data_in, data_out);
    
    initial begin
        clock = 1'b0;
        reset = 1'b1;
        ready = 1'b0;
        
        #50
        reset = 1'b0;  
        #40
        data_in = 16'h6806;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h8555;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h1345;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h2731;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h6423;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h1037;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h9065;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h8384;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h8678;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h5963;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h1595;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h8184;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h4332;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h2410;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h1710;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h6207;
        ready = 1'b1;
        #10
        ready = 1'b0;
        #40
        data_in = 16'h9908;
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
