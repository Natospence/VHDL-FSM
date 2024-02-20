// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// Generated by Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition
// Created on Mon Apr 17 16:18:57 2023

// synthesis message_off 10175

`timescale 1ns/1ns

module Lab11 (
    reset,clock,transition,
    FSM_out[3:0]);

    input reset;
    input clock;
    input transition;
    tri0 reset;
    tri0 transition;
    output [3:0] FSM_out;
    reg [3:0] FSM_out;
    reg [4:0] fstate;
    reg [4:0] reg_fstate;
    parameter A=0,B=1,C=2,D=3,E=4;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or transition)
    begin
        if (reset) begin
            reg_fstate <= A;
            FSM_out <= 4'b0000;
        end
        else begin
            FSM_out <= 4'b0000;
            case (fstate)
                A: begin
                    if ((transition == 1'b1))
                        reg_fstate <= D;
                    else if ((transition == 1'b0))
                        reg_fstate <= B;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= A;

                    FSM_out <= 4'b0001;
                end
                B: begin
                    if ((transition == 1'b1))
                        reg_fstate <= D;
                    else if ((transition == 1'b0))
                        reg_fstate <= C;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= B;

                    FSM_out <= 4'b0010;
                end
                C: begin
                    if ((transition == 1'b1))
                        reg_fstate <= D;
                    else if ((transition == 1'b0))
                        reg_fstate <= C;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= C;

                    FSM_out <= 4'b0011;
                end
                D: begin
                    if ((transition == 1'b0))
                        reg_fstate <= B;
                    else if ((transition == 1'b1))
                        reg_fstate <= E;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= D;

                    FSM_out <= 4'b0100;
                end
                E: begin
                    if ((transition == 1'b0))
                        reg_fstate <= B;
                    else if ((transition == 1'b1))
                        reg_fstate <= E;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= E;

                    FSM_out <= 4'b0101;
                end
                default: begin
                    FSM_out <= 4'bxxxx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // Lab11
