`timescale 1ns/1ps

module mux_tb;

	reg inx,iny;
	reg [1:0] select;
	wire outv,outw;

	mux mux(
		.inx(inx),
		.iny(iny),
		.select(select),
		.outv(outv),
		.outw(outw)
	);

	initial 
	begin
		inx=1'b0;
		iny=1'b0;
		select=2'b00;

		#60000; $finish;
	end

	always
	begin
		#10 select=select+1;
		#20 inx=~inx;
		#160 iny=~iny;
	end
	initial 
	begin
		$fsdbDumpfile("mux.fsdb");
		$fsdbDumpvars;
		$fsdbDumpMDA;
	end
endmodule