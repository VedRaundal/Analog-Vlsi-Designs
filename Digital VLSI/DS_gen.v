module DS_Gen(
    input clk,
    input reset,
    input signed [7:0] data_in,
    output reg S,               // Pulse signal on zero crossing
    output reg [7:0] D          // Sample count (distance between crossings)
);

    reg signed [7:0] prev_data;
    reg crossing_detected;          // Internal flag for crossing
    reg [7:0] D_next;               // Next D value holder

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            prev_data <= 0;
            D <= 0;
            D_next <= 0;
            S <= 0;
            crossing_detected <= 0;
        end else begin
            // Detect zero crossing
            if ((prev_data < 0 && data_in >= 0) || (prev_data >= 0 && data_in < 0)) begin
                crossing_detected <= 1;   // Crossing occurred
                S <= 1;
            end else begin
                crossing_detected <= 0;
                S <= 0;
            end

            // Hold D until *after* the S pulse
            if (crossing_detected) begin
                D <= D;          // Hold D value during S pulse
                D_next <= 0;     // Prepare for next count
            end else begin
                D <= D_next;
                D_next <= D_next + 1;
            end

            prev_data <= data_in;
        end
    end

endmodule
