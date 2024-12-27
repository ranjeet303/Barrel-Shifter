`timescale 1ns / 1ps

module barrel_s (
  input  [7:0] in,     // 8-bit input
  input  [2:0] ctrl,   // 3-bit control for shift amount
  input  dir,          // Shift direction: 0 = right, 1 = left
  output reg [7:0] out // 8-bit output
);

  always @(*) begin
    if (dir == 1'b0) begin // Right cyclic shift
      case (ctrl)
        3'b000: out = in;                     // No shift
        3'b001: out = {in[0], in[7:1]};       // 1-bit cyclic right shift
        3'b010: out = {in[1:0], in[7:2]};     // 2-bit cyclic right shift
        3'b011: out = {in[2:0], in[7:3]};     // 3-bit cyclic right shift
        3'b100: out = {in[3:0], in[7:4]};     // 4-bit cyclic right shift
        3'b101: out = {in[4:0], in[7:5]};     // 5-bit cyclic right shift
        3'b110: out = {in[5:0], in[7:6]};     // 6-bit cyclic right shift
        3'b111: out = {in[6:0], in[7]};       // 7-bit cyclic right shift
        default: out = in;                    // Default case (no shift)
      endcase
    end else begin // Left cyclic shift
      case (ctrl)
        3'b000: out = in;                     // No shift
        3'b001: out = {in[6:0], in[7]};       // 1-bit cyclic left shift
        3'b010: out = {in[5:0], in[7:6]};     // 2-bit cyclic left shift
        3'b011: out = {in[4:0], in[7:5]};     // 3-bit cyclic left shift
        3'b100: out = {in[3:0], in[7:4]};     // 4-bit cyclic left shift
        3'b101: out = {in[2:0], in[7:3]};     // 5-bit cyclic left shift
        3'b110: out = {in[1:0], in[7:2]};     // 6-bit cyclic left shift
        3'b111: out = {in[0], in[7:1]};       // 7-bit cyclic left shift
        default: out = in;                    // Default case (no shift)
      endcase
    end
  end

endmodule

