module mul22_data_flow(a,b,y);
input [1:0] a,b;
output [3:0] y;
assign y = a * b;
endmodule 
//////////////////////////////////TEST BENCH/////////////////////////////////////
module mul22_data_flow_tb();
reg [1:0] a;
reg [1:0] b;
wire [3:0] y;
mul22_data_flow m1(a,b,y);
initial
	begin
	a=2'b00; b=2'b00;
#10 a=2'b01; b=2'b10;
#10 a=2'b11; b=2'b10;
#10 a=2'b11; b=2'b11;
#10
$stop;
end
endmodule