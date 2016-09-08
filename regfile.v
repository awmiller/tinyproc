module regfile(AddrA,AddrB,AddrC,DinC,DoA,DoB,clk,wrback);

	input [4:0] AddrA,AddrB,AddrC;
	input [31:0] DinC;
	input clk,wrback;
	output [31:0] DoA,DoB;
	
	reg [31:0] rmap [0:15];
	assign DoA = rmap[AddrA];
	assign DoB = rmap[AddrB];
	
	initial begin
		rmap[0] = 0;
		rmap[1] = 0;
		rmap[2] = 0;
		rmap[3] = 0;
		rmap[4] = 0;
		rmap[5] = 0;
		rmap[6] = 0;
		rmap[7] = 0;
		rmap[8] = 0;
		rmap[9] = 0;
		rmap[10] = 0;
		rmap[11] = 0;
		rmap[12] = 0;
		rmap[13] = 0;
		rmap[14] = 0;
		rmap[15] = 0;
	end
	
	always @(posedge clk)
	begin
		if(wrback) begin
			rmap[AddrC]=DinC;
		end
	end
endmodule
