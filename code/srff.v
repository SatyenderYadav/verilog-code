module srff(s,r,reset,clk,q);
input s,r,clk,reset;
output reg q=0;

always@(negedge clk)
	begin
		if (reset == 0)
			q=0;
		else
			if(s==0 & r == 0)
				q = q;
			else if (s==0 & r==1)
				q=0;
			else if (s==1 & r==0)
				q=1;
			else 
				$display("Not Determined");
	end
endmodule

/////Test Bench////////

module srff_tb();
reg s,r,clk,reset;
wire q;
srff sff(s,r,reset,clk,q);
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
		reset=0; s=0; r=0;
#10	reset=1; s=0;r=1;
#10	reset=1; s=1;r=1;
#10	reset=1; s=0;r=0;
	end
endmodule
