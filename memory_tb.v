module memory_tb();

reg [32:0] RA,RB,RC;
wire [32:0] dataA,dataB;
reg write;
reg clk;

memory mainmem(clk,RA,RB,RC,dataA,dataB,write);

initial begin
	
	write<=0;
	clk<=0;
	RA<=0;
	RB<=0;
	RC<=0;
	
	
	#10 RA<= 32'h00F00F01;
	write<=1;
	#10 clk = 1;
	#10 clk =0;
	
	#10 RC<= 32'h00000001;
	RA<= 32'h00000001;
	write<=1;
	#10 clk = 1;
	#10 clk =0;
	
	
	#10 RC<= 32'h00aaaa02;
	RA<= 32'h00000001;
	write<=1;
	#10 clk = 1;
	#10 clk =0;
	
	#10 RC<= 32'h00000003;
	RA<= 32'h0000fff1;
	write<=1;
	#10 clk = 1;
	#10 clk =0;

end


endmodule
