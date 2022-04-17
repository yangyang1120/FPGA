`timescale 1ns/1ps

module multi_mux(
	input [3:0]in,
	input [1:0] select,
	output [3:0] out
);

	assign out=(select==2'b00)?{in[3],in[1],in[2],in[0]}:
				(select==2'b01)?{in[1],in[3],in[0],in[2]}:
				(select==2'b10)?{in[2],in[0],in[3],in[1]}:
				(select==2'b11)?{in[0],in[2],in[1],in[3]}:
				{4{1'bz}};
	
endmodule


