module downsampler_4 #(parameter WIDTH = 16)(
    input logic rst,
    input logic ready,
    input logic [WIDTH-1:0] data_in,
    output logic [WIDTH-1:0] data_out
    );
    
    logic [1:0] count = 2'b00;
    
    always_ff @(posedge rst or posedge ready) begin
        if (rst) begin
            data_out <= 16'h0000;
        end else begin  
            if (count == 2'b11) begin
                if (data_in[11])begin
                    data_out <= data_in;
                end else begin
                    data_out <= data_in;
                end
            end
        end
    end 

    always_comb begin
        if (ready) begin
            if (count[0])begin
                count[1] = ~count[1];
            end 
            count[0] = ~count[0];
        end
    end

endmodule