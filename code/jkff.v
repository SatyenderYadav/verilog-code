module jkff(j,k,reset,clk,q);
input j,k,clk,reset;
output reg q=0;

always@(negedge clk)
	begin
		if (reset == 0)
			q=0;
		else
			if(j==0 & k == 0)
				q = q;
			else if (j==1 & k==1)
				q=~q;
			else 
				q = j;
	end
endmodule

/////Test Bench////////

module jkff_tb();
reg j,k,clk,reset;
wire q;
jkff jff(j,k,reset,clk,q);
initial
	begin
		clk =0;
#50 $stop;
	end
always
	begin
	#5 clk = ~clk;
	end
initial
	begin
		reset=0; j=0; k=0;
#10	reset=1; j=0;k=1;
#10	reset=1; j=1;k=1;
#10	reset=1; j=0;k=0;
	end
endmodule