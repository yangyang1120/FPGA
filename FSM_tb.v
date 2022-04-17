`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:19:22 03/28/2022
// Design Name:   FSM
// Module Name:   E:/FPAG/lab5prac/FAM_test.v
// Project Name:  lab5prac
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FAM_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire y;
	wire [1:0] current;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.clk(clk), 
		.rst(rst), 
		.y(y),
		.state(current)
	);
	/*initial
	begin
		$dumpfile ("FSM.vcd");
		$dumpvars (0, FSM_tb);
	end*/
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100; 
		rst = 1;
		
		#6000 $finish;

	end
     // Add stimulus here
		always #10 clk=~clk;
	initial begin
		$fsdbDumpfile("FSM.fsdb");
		$fsdbDumpvars;
		$fsdbDumpMDA;
	end
endmodule

