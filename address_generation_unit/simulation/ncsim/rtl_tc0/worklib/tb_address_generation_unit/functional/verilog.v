// Company           :   tud                      
// Author            :   ahes15            
// E-Mail            :   <email>                    
//                    			
// Filename          :   tb_address_generation_unit.v                
// Project Name      :   prz    
// Subproject Name   :   main    
// Description       :   <short description>            
//
// Create Date       :   Sun Mar 19 14:24:33 2017 
// Last Change       :   $Date: 2017-04-30 22:52:58 +0200 (Sun, 30 Apr 2017) $
// by                :   $Author: ahes15 $                  			
//------------------------------------------------------------
`timescale 1ns/10ps
module tb_address_generation_unit (
);

 
  reg  [ 3 : 0 ] l_r_addr_a;
  reg  [ 3 : 0 ] l_r_addr_b;
  reg  [ 3 : 0 ] l_w_addr;
  reg  [ 3 : 0 ] sr_value;
  
  wire [ 6 : 0 ] r_addr_a;
  wire [ 6 : 0 ] r_addr_b;
  wire [ 6 : 0 ] w_addr;
 
  address_generation_unit address_generation_unit_i (
		.l_r_addr_a(l_r_addr_a),
		.l_r_addr_b(l_r_addr_b),
		.l_w_addr(l_w_addr),
		.sr_value(sr_value),
		.r_addr_a(r_addr_a),
		.r_addr_b(r_addr_b),
		.w_addr(w_addr)
        );

  ///////////////////////////////////////////////
  //// Template for clk and reset generation ////
  //// uncomment it when needed              ////
  ///////////////////////////////////////////////
  parameter CLKPERIODE = 100;
/*  reg clk;
  reg a_reset_l;

  initial clk = 1'b1;
  always #(CLKPERIODE/2) clk = !clk;

 initial begin
      a_reset_l = 1'b0;
      #33
      a_reset_l = 1'b1;
  end*/
  ///////////////////////////////////////////////

  // Template for testcase specific pattern generation
  // File has to be situated in simulation/<simulator_name>/[testcase] directory
   `include "testcase.v"

endmodule
