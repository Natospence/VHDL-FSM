/*
Author: Nathan Spence

Program Name: Lab11Part1

Creation Date: 4/17/2023

Date Last Updated: 4/17/2023

Function: This program allows us to view the difference between blocking and non-blocking assignment

Method: Swap the blocking and non-blocking assignments

Inputs: clk, A

Outputs: out1, out2

Comments:
*/

module Lab11Part1(
	input clk,
	input [7:0] A,
	output reg [7:0] out1,
	output reg [7:0] out2
);

	//Non-blocking approach
	always@(posedge clk)
	begin
	
		out1 = A;
		out2 = out1;
		
	end
	
endmodule