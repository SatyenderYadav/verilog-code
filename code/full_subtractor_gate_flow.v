module full_subtractor_gate_flow(a,b,c,diff,borr);
input a,b,c;
output diff,borr;
wire w1,w2,w3,w4,ab;
xor x1(w1,a,b);
not n1(ab,a);
xor x2(diff,w1,c);
and a1(w2,ab,b);
and a2(w3,b,c);
and a3(w4,c,ab);
or r1(borr,w2,w3,w4);
endmodule

////////////////////////////////////// TEST BENCH////////////////////////////////
module full_subtractor_gate_flowtb();
reg a,b,c;
wire diff,borr;
full_subtractor_gate_flow g2(a,b,c,diff,borr);
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
