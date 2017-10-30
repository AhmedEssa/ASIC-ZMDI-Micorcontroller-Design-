// Company           :   tud                      
// Author            :   ahes15            
// E-Mail            :   <email>                    
//                    			
// Filename          :   tb_address_generation_unit.v                
// Project Name      :   prz    
// Subproject Name   :   main    
// Description       :   <short description>            
//
// Create Date       :   Sun Apr 30 20:52:58 2017 
// Last Change       :   $Date$
// by                :   $Author$                  			
//------------------------------------------------------------
`timescale 1ns/10ps
module tb_address_generation_unit (
);

  address_generation_unit address_generation_unit_i (
        );

  ///////////////////////////////////////////////
  //// Template for clk and reset generation ////
  //// uncomment it when needed              ////
  ///////////////////////////////////////////////
  /*parameter CLKPERIODE = 100;

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
  // `include "testcase.v"

endmodule
