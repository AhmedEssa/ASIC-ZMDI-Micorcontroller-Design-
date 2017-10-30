// Company           :   tud                      
// Author            :   ahes15            
// E-Mail            :   <email>                    
//                    			
// Filename          :   address_generation_unit.v                
// Project Name      :   prz    
// Subproject Name   :   main    
// Description       :   <short description>            
//
// Create Date       :   Sun Feb  5 16:50:05 2017 
// Last Change       :   $Date: 2017-06-17 17:54:14 +0200 (Sat, 17 Jun 2017) $
// by                :   $Author: ahes15 $                  			
//------------------------------------------------------------
`timescale 1ns/10ps
module address_generation_unit (
	r_addr_a,
	r_addr_b,
	w_addr,
	sr_value, 		//data stored in SR 	Connection: address_generation_unit <--- sr
	l_r_addr_a,
	l_r_addr_b,
	l_w_addr
	
);
	parameter ADDR=7;

	input [3:0] l_r_addr_a;
	input [3:0] l_r_addr_b;
	input [3:0] l_w_addr;
	input [3:0] sr_value;
	
	output [ADDR-1:0] r_addr_a;
	output [ADDR-1:0] r_addr_b;
	output [ADDR-1:0] w_addr;
	

	assign r_addr_a = (l_r_addr_a[3]) ? {sr_value,l_r_addr_a[2:0]} : {4'h0,l_r_addr_a[2:0]} ;
	assign r_addr_b = (l_r_addr_b[3]) ? {sr_value,l_r_addr_b[2:0]} : {4'h0,l_r_addr_b[2:0]} ;
	assign w_addr   = (l_w_addr[3]) ? {sr_value,l_w_addr[2:0]} : {4'h0,l_w_addr[2:0]} ;
	

endmodule
