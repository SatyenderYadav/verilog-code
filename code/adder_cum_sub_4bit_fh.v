module adder_cum_sub_4bit(a,b,cin,cout,result);
wire [2:0] w1;
wire [3:0] w2;
input [3:0] a,b;
input cin;
output [3:0] result;
output cout;

xor x1(w2[0],b[0],cin);
xor x2(w2[1],b[1],cin);
xor x3(w2[2],b[2],cin);
xor x4(w2[3],b[3],cin);

full_adder_1bit f1(a[0],w2[0],cin,result[0],w1[0]);
full_adder_1bit f2(a[1],w2[1],w1[0],result[1],w1[1]);
full_adder_1bit f3(a[2],w2[2],w1[1],result[2],w1[2]);
full_adder_1bit f4(a[3],w2[3],w1[2],result[3],cout);
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