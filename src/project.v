/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_pe (en, In, C); 
    input en;
    input [15:0] In;
    output reg [7:0] C; 

    
    always @(en,In) 
        begin
            if(en==1)
                begin
                    if (In[15]) C = 8'd15;
                        else if (In[14]) C = 8'd14;
                        else if (In[13]) C = 8'd13;
                        else if (In[12]) C = 8'd12;
                        else if (In[11]) C = 8'd11;
                        else if (In[10]) C = 8'd10;
                        else if (In[9])  C = 8'd9;
                        else if (In[8])  C = 8'd8;
                        else if (In[7])  C = 8'd7;
                        else if (In[6])  C = 8'd6;
                        else if (In[5])  C = 8'd5;
                        else if (In[4])  C = 8'd4;
                        else if (In[3])  C = 8'd3;
                        else if (In[2])  C = 8'd2;
                        else if (In[1])  C = 8'd1;
                        else if (In[0])  C = 8'd0;
                        else C = 8'b1111_0000; // Special case when all bits are zero
            end
        end 
    
endmodule

  // All output pins must be assigned. If not used, assign to 0.
  assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
  assign uio_out = 0;
  assign uio_oe  = 0;

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, 1'b0};

endmodule
