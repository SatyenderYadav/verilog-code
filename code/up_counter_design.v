module up_counter_design(clk,rst,count);
input clk,rst;
output reg [3:0] count;
always@(posedge clk or posedge rst)
	begin
		if(rst)
			begin
			count<=0;
			end
		else
			begin
			count<=count+1;
			end
		$display("The count is %d",count);
	end
endmodule

//////////////////////// Test Bench ///////////////////////////
module up_counter_design_tb();
reg clk,rst;
wire [3:0] count;
up_counter_design dl(clk,rst,count);

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