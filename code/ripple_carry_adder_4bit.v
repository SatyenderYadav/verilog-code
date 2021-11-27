module ripple_carry_adder_4bit(a,b,cin,sum,cout);
wire [2:0] w1;
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;

full_adder_1bit f1(a[0],b[0],cin,sum[0],w1[0]);
full_adder_1bit f2(a[1],b[1],w1[0],sum[1],w1[1]);
full_adder_1bit f3(a[2],b[2],w1[1],sum[2],w1[2]);
full_adder_1bit f4(a[3],b[3],w1[2],sum[3],cout);
endmodule
//////////////////////////////////////////////////////////////////////////////////
///////////////////////TEST BENCH/////////////////////////////////////////////////
module ripple_carry_adder_4bit_tb();
wire [3:0] sum;
wire cout;
reg [3:0] a,b;
reg cin;
ripple_carry_adder_4bit c1(a,b,cin,sum,cout);
initial
	begin
	 a=2'b0101; b=2'b0011;cin=0;
#10 a=2'd4; b=2'd5;cin=0;
#10 a=2'd2; b=2'd3;cin=1;
#10 a=2'd4; b=2'd2;cin=0;
#10
$stop;
end
endmodule