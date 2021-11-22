module tff(clk,reset,t,q);
input t,clk,reset;
output reg q=0;

always@(posedge clk)
	begin
		if(reset)
			q=0;
		else
			if(t)
				q=~q;
			else
				q=q;
	end
endmodule

//////Test Bench///////
module tff_tb();
reg t,clk,reset;
wire q;
tff tf(clk,reset,t,q);
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
		reset=1; t=0;
#10	reset=0; t=1;
#10	reset=0; t=0;
	end
endmodule
