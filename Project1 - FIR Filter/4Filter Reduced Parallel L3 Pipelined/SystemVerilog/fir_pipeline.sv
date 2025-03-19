module fir_pipeline 
#(
    parameter DATA_IN_WIDTH  = 16,
    parameter DATA_OUT_WIDTH = 64,
    parameter TAP_WIDTH      = 24,
    parameter TAP_COUNT      = 36,
    parameter signed [TAP_WIDTH-1:0] TAPS [0:TAP_COUNT-1]
)
(
    input wire                               clk,
    input wire                               reset_n,
    input wire   signed [DATA_IN_WIDTH-1:0]  data_in,
    output reg   signed [DATA_OUT_WIDTH-1:0] data_out
);

//-----------------------------------------------------------
// Internal registers and arrays
//-----------------------------------------------------------

// Delay line for input samples
reg signed [DATA_IN_WIDTH-1:0] delay [0:TAP_COUNT-1];


// Pipeline registers for MAC (Multiply-Accumulate) chain
// Each stage holds the running sum of products up to that tap.
reg signed [DATA_OUT_WIDTH-1:0] pipeline [0:TAP_COUNT-1];

integer i;

//-----------------------------------------------------------
// Delay Line (Shift Register)
//-----------------------------------------------------------
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        for (i = 0; i < TAP_COUNT; i = i + 1)
            delay[i] <= 0;
    end else begin
        // Shift the delay line: new sample enters at delay[0]
        for (i = 1; i < TAP_COUNT; i = i + 1)
            delay[i] <= delay[i-1];
        delay[0] <= data_in;
    end
end

//-----------------------------------------------------------
// Pipelined MAC Operation
//-----------------------------------------------------------
// Each stage j adds the product of delay[j] and taps[j] to the running sum.
genvar j;
generate
    for (j = 0; j < TAP_COUNT; j = j + 1) begin : pipelined_stages
        always @(posedge clk or negedge reset_n) begin
            if (!reset_n)
                pipeline[j] <= 0;
            else
                pipeline[j] <= (delay[j] * TAPS[j]);
        end
    end
endgenerate

//-----------------------------------------------------------
// Final Output Register
//-----------------------------------------------------------

always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        data_out <= 0;
    else begin
		  // Compute filter output
        data_out <= 0;
        for (i = 0; i < TAP_COUNT; i = i + 1) begin
            data_out <= data_out + pipeline[i];
        end
	 end
end

endmodule