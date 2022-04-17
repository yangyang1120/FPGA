`timescale 1ns/1ps

module mux(
	input inx,iny,
	input [1:0] select,
	output outv,outw
);
	wire [1:0] x,y;
	assign x[0]=(select[0]==0)?inx:1'bz;
	assign x[1]=(select[0]==1)?inx:1'bz;
	assign y[0]=(select[0]==0)?iny:1'bz;
	assign y[1]=(select[0]==1)?iny:1'bz;
	
	assign outv=(select[1]==0)?x[0]:x[1];
	assign outw=(select[1]==0)?y[0]:y[1];
endmodule