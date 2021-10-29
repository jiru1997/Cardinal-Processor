
module PC(PCin, PCout, clk, rst, stall);
	input [0:31] PCin;
	input clk, rst, stall;
	output reg [0:31] PCout;

	always@(posedge clk) begin
		if (rst) PCout <= 0;
		else if (stall) PCout <= PCout;
		else PCout <= PCin;
	end 


endmodule
