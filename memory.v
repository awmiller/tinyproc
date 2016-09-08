//accepts memory regions 0-255
//regions 256-510 reserved for other peripherals
module memory(clk, rA, rB, rC, dataA, dataB, writeC);
//i/o
input clk,writeC;
input [31:0] rA,rB,rC;
output [31:0] dataA,dataB;

//main memory model
reg [31:0] mainmem[0:255];

assign dataA = (rA<256)?(mainmem[rA]):(32'bZ);
assign dataB = (rB<256)?(mainmem[rB]):(32'bZ);

always @(posedge clk) begin

	if(writeC && rC<256) begin
		mainmem[rC] = rA;
	end
end


endmodule
