`timescale 1ns/1ps

module mux_tb;

	reg [3:0] in;
	reg [1:0] select;
	wire [3:0] out;

	multi_mux mux(
		.in(in),
		.select(select),
		.out(out)
	);


	initial 
	begin
		in=4'b0;
		select=2'b0;
		
		#6000 $finish;
	end
	always
	begin
		#10 select=select+1;
		#200 in=in+1;
	end
	initial 
	begin
		$fsdbDumpfile("mux.fsdb");
		$fsdbDumpvars;
		$fsdbDumpMDA;
	end
endmodule
