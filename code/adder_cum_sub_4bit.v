module adder_cum_sub_4bit(a,b,cin,cout,result);
wire [3:0] w2;
input [3:0] a,b;
input cin;
output [3:0] result;
output cout;

xor x1(w2[0],b[0],cin);
xor x2(w2[1],b[1],cin);
xor x3(w2[2],b[2],cin);
xor x4(w2[3],b[3],cin);

ripple_counter_4bit c12(a,w2,cin,result,cout);
endmodule
///////////////////////TEST BENCH/////////////////////////////////////////////////
module adder_cum_sub_4bit_tb();
wire [3:0] result;
wire cout;
reg [3:0] a,b;
reg cin;
adder_cum_sub_4bit c1(a,b,cin,cout,result);
initial
	begin
	 a=4'b0101; b=4'b0011;cin=0;
#10 a=4'd4; b=4'd5;cin=0;
#10 a=4'd3; b=4'd2;cin=1;
#10 a=4'd4; b=4'd2;cin=0;
#10
$stop;
end
endmodule