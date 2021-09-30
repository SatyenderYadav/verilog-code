module full_adder_gate_flow(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3,w4;
xor (w1,a,b);
xor (sum,w1,c);
and (w2,a,b);
and (w3,b,c);
and (w4,c,a);
or (carry,w2,w3,w4);
endmodule

////////////////////////////////////// TEST BENCH////////////////////////////////
module full_adder_gate_flowtb();
reg a,b,c;
wire sum,carry;
full_adder_gate_flow  g1(a,b,c,sum,carry);
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
