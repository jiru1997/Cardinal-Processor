// Description: cmp module for EE577b Project Phase 2 Processor Design
// Author: Sihao Chen
// Create Date: Oct.21.2021
// Module Name: cardinal_cmp

module cardinal_cmp(clk, reset, 
					node0_inst_in, node0_d_in, node0_pc_out, node0_d_out, node0_addr_out, node0_memWrEn, node0_memEn,
					node1_inst_in, node1_d_in, node1_pc_out, node1_d_out, node1_addr_out, node1_memWrEn, node1_memEn,
					node2_inst_in, node2_d_in, node2_pc_out, node2_d_out, node2_addr_out, node2_memWrEn, node2_memEn,
					node3_inst_in, node3_d_in, node3_pc_out, node3_d_out, node3_addr_out, node3_memWrEn, node3_memEn,
					);
	input clk, reset;
	input [0:31] node0_inst_in, node1_inst_in, node2_inst_in, node3_inst_in;
	input [0:63] node0_d_in, node1_d_in, node2_d_in, node3_d_in;
	output [0:31] node0_pc_out, node1_pc_out, node2_pc_out, node3_pc_out, node0_addr_out, node1_addr_out, node2_addr_out, node3_addr_out;
	output [0:63] node0_d_out, node1_d_out, node2_d_out, node3_d_out;
	output node0_memWrEn, node0_memEn, node1_memWrEn, node1_memEn, node2_memWrEn, node2_memEn, node3_memWrEn, node3_memEn;

    cpu cpu0(.clk(clk), 
    		 .rst(reset),
    		 .pc_out(node0_pc_out), 
    		 .inst_in(node0_inst_in), 
    		 .d_in(node0_d_in), 
    		 .d_out(node0_d_out), 
    		 .addr_out(node0_addr_out), 
    		 .memWrEn(node0_memWrEn), 
    		 .memEn(node0_memEn)
    		 );

    cpu cpu1(.clk(clk), 
    		 .rst(reset),
    		 .pc_out(node1_pc_out), 
    		 .inst_in(node1_inst_in), 
    		 .d_in(node1_d_in), 
    		 .d_out(node1_d_out), 
    		 .addr_out(node1_addr_out), 
    		 .memWrEn(node1_memWrEn), 
    		 .memEn(node1_memEn)
    		 );

    cpu cpu2(.clk(clk), 
    		 .rst(reset),
    		 .pc_out(node2_pc_out), 
    		 .inst_in(node2_inst_in), 
    		 .d_in(node2_d_in), 
    		 .d_out(node2_d_out), 
    		 .addr_out(node2_addr_out), 
    		 .memWrEn(node2_memWrEn), 
    		 .memEn(node2_memEn)
    		 );

    cpu cpu3(.clk(clk), 
    		 .rst(reset),
    		 .pc_out(node3_pc_out), 
    		 .inst_in(node3_inst_in), 
    		 .d_in(node3_d_in), 
    		 .d_out(node3_d_out), 
    		 .addr_out(node3_addr_out), 
    		 .memWrEn(node3_memWrEn), 
    		 .memEn(node3_memEn)
    		 );
endmodule 

