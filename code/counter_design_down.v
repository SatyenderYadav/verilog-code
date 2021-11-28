module counter_design_down(clk,rst,count);
input clk,rst;
output reg [3:0] count=0;
always@(posedge clk or posedge rst)
	begin
		if(rst)
			begin
			count<=0;
			end
		else
			begin
			count<=count-1;
			end
		$display("The count is %d",count);
	end
endmodule

//////////////////////// Test Bench ///////////////////////////
module counter_design_down_tb();
reg clk,rst;
wire [3:0] count;
counter_design_down dl(clk,rst,count);

initial
	begin
		clk=0;
			forever
			#5 clk=~clk;
	end
initial
	begin
		rst=1;
		#10 rst=0;
		#500 $stop;
	end
endmodule