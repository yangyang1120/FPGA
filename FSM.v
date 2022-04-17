`timescale 1ns / 1ps
//
module FSM(
input clk,
input rst,
output reg [1:0] state,
output y
);

assign y=(state==2'b00)?1'b0:
		 (state==2'b01)?1'b1:
		 (state==2'b10)?1'b1:
		 (state==2'b11)?1'b1:1'bz;

always@(posedge clk)
begin
	if (!rst)
	begin
		state = 2'b11 ;
	end
	else
	begin
	case(state)
		2'b00: state<=2'b11;
		2'b01: state<=2'b00;
		2'b10: state<=2'b01;
		2'b11: state<=2'b10;
		default: state=2'bz;
	endcase
	end
end

endmodule