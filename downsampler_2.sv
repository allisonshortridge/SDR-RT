module downsampler_2 #(parameter WIDTH = 16)(
    input logic rst,
    input logic ready,
    input logic [WIDTH-1:0] data_in,
    output logic [WIDTH-1:0] data_out
    );
    // need to add bits in order to shift up by 1? 2? bits after scaling down to receive signal
    
    logic count = 1'b0;
    
    always_ff @(posedge rst or posedge ready) begin
        if (rst) begin
            data_out <= 16'h000;
        end else begin  
            if (count) begin
                data_out <= data_in;
            end
        end
    end 

    always_comb begin
        if (ready) begin
            count = ~count;
        end
    end

endmodule