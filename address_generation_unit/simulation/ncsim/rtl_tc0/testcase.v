// Company           :   tud                      
// Author            :   ahes15            
// E-Mail            :   <email>                    
//                    			
// Filename          :   address_generation_unit.v                
// Project Name      :   prz    
// Subproject Name   :   main    
// Description       :   <short description>            
//
// Create Date       :   Sun Mar 19 15:08:23 2017 
// Last Change       :   $Date$
// by                :   $Author$                  			
//------------------------------------------------------------



//Fill in testcase specific pattern generation
initial begin
     #1;

	l_r_addr_a = 4'b0000;
	l_r_addr_b = 4'b0000;
	l_w_addr   = 4'b0000;
	sr_value   = 4'b0000;
    repeat (10) begin
	#(2*CLKPERIODE)
	    l_r_addr_a = $urandom_range(0,15);
	    l_r_addr_b = $urandom_range(0,15);
	    l_w_addr   = $urandom_range(0,15);
	    sr_value   = $urandom_range(0,15);
	
    end
    #(3*CLKPERIODE)

$finish();
end
