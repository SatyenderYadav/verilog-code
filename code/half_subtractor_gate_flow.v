module half_sub_gate(a,b,diff,borr);
input a,b;
output diff,borr;
wire w1;
xor (diff, a, b);
not n1(w1,a);
and a1(borr,w1,b);
endmodule
/////////////////////////////////////////////////////////////////////////////////
///////// TEST BENCH ///////////////////////////////////////////////////////////
module half_sub_gate_tb();
reg a,b;
wire diff,borr;
half_sub_gate half_2(a,b,diff,borr);
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
