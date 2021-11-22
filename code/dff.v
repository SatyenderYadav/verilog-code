module dff(clk,reset,d,q);
input d,clk,reset;
output reg q=0;

always@(posedge clk)
	begin
		if(reset)
			q=0;
		else
			if(d)
				q=1;
			else
				q=0;
	end
endmodule

//////Test Bench///////
module dff_tb();
reg d,clk,reset;
wire q;
dff df(clk,reset,d,q);
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
		reset=1; d=0;
#10	reset=0; d=1;
#10	reset=0; d=0;
	end
endmodule