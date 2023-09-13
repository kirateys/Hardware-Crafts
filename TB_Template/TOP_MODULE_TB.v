/*
------------------------------------------------------------------------------

MIT License

Copyright (c) 2023 Kiratey Patil

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

------------------------------------------------------------------------------

Author		: Kiratey Patil
Language	: Verilog

------------------------------------------------------------------------------
*/

`timescale 1ns / 1ns

module TOP_MODULE_TB();

	reg 	clk; 		
	reg 	rst_; 
	
	TOP_MODULE TOP_MODULE_INST(

	.clk 					(clk),			//i-1
	.rst_ 					(rst_)			//i-1
	
	//Other port list below
	//,
	
	);

	//initialization	
	initial begin
		clk				<= 0;
		rst_ 			<= 0;
		
		#200 rst_ 		<= 1;			
	end
	
	always #4 clk		<= ~clk;			//125MHz
	//always #2 clk		<= ~clk;			//250MHz
	
endmodule