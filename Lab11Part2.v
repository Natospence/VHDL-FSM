/*
Author: Nathan Spence

Program Name: Lab11Part2

Creation Date: 4/17/2023

Date Last Updated: 4/17/2023

Function: This program allows us to test the FSM developed in the lab

Method: Modular instantiation

Inputs: SW0, KEY0, KEY1

Outputs: HEX0

Comments:
*/

module Lab11Part2(

	input [0:0] SW,
	input [1:0] KEY,
	output [6:0] HEX0

);

wire [3:0] state;
	 
Lab11FSM2 fsm(.reset(~KEY[1]), .clock(~KEY[0]), .transition(SW[0]), .FSM_out(state));

hex7seg disp(.num(state+9), .display(HEX0));

endmodule