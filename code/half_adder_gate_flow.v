module half_adder_gate(a,b,sum,carry);
input a,b;
output sum,carry;

xor x1(sum,a,b);
and a1(carry,a,b);
endmodule
/////////////////////////////////////////////////////////////////////////////////
///////// TEST BENCH ///////////////////////////////////////////////////////////
module half_adder_gate_tb();
reg a,b;
wire sum,carry;
half_adder_gate half_1(a,b,sum,carry);
initial
	begin
		a=0;b=0;
#10	a=0;b=1;
#10	a=1;b=0;
#10	a=1;b=1;
#10	
$stop;
end
endmodule
