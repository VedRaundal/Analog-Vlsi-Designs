// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 11:31:53
// Design Name: 
// Module Name: Tespar
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//Top Module 
module Tespar(

    input clk,
    input reset,
    input signed [7:0] data_in,
    output [4:0] Alphabet_out
);

    // Wires to connect internal modules
    wire pulse_S;
    wire [7:0] distance_D;
    
    // Truncated inputs to match Alphabet_Gen
    wire [5:0] D_for_alpha = distance_D[5:0];
    wire [2:0] S_for_alpha = {2'b00, pulse_S}; // Convert 1-bit pulse to 3-bit for compatibility

    // Instantiate DS_Gen
    DS_Gen u1 (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .S(pulse_S),
        .D(distance_D)
    );

    // Instantiate Alphabet_Gen
    Alphabet_Gen u2 (
        .D(D_for_alpha),
        .S(S_for_alpha),
        .Alphabet(Alphabet_out)
    );

endmodule
