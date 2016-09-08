module regfile_tb();

	reg [4:0] AddrA,AddrB,AddrC;
	reg [31:0] DinC;
	reg clk,wrback;
	wire [31:0] DoA,DoB;
	
	regfile mrfile(AddrA,AddrB,AddrC,DinC,DoA,DoB,clk,wrback);
	
	initial begin
	
		AddrA<=0;
		AddrB<=0;
		AddrC<=0;
		DinC<=0;
		clk<=0;
		wrback<=0;
		
		#10 wrback = 1;
		#2 DinC = -2540;
		#2  AddrC = 1;
		#2  AddrB = 1;
		#2  AddrA = 2;
		#10 clk=1;
		
		#10 clk=0;
		#2 AddrC = 2;
		#4 DinC = 2550;
		#10 clk=1;
		
		#10 clk=0;
		#2 AddrC = 4;
		#4 DinC = DoA+DoB;
		#10 clk=1;
		
		#10 clk=0;
		#10 clk=1;
		
		#10 clk=0;
		
	end
		

endmodule
