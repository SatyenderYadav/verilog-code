module full_adder_data(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum = a ^ b ^c;
assign carry = (a & b) | (c & (a ^b));
endmodule
////////////////////////////////////// TEST BENCH////////////////////////////////
module full_adder_data_tb();
reg a,b,c;
wire sum,carry;
full_adder_data  g1(a,b,c,sum,carry);
initial
	begin
		a=0;b=0;c=0;
#10	a=0;b=0;c=1;
#10	a=0;b=1;c=0;
#10	a=0;b=1;c=1;
#10	a=1;b=0;c=0;
#10	a=1;b=0;c=1;
#10	a=1;b=1;c=0;
#10	a=1;b=1;c=1;
#10	
$stop;
end
endmodule

