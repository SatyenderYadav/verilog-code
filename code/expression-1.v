module experssion_using_gate_flow(a,b,c,o);
input a,b,c;
output o;
wire w1,w2,w3,w4,w5,w6;
and a1(w1,a,c);
not n1(w2,c);
not n2(w3,a);
and a2(w4,w3,b);
and a3(w5,a,b,w2);
or r1(w6,w4,w5);
and a4(o,w6,w1);
endmodule

////////////////////////////////////////TEST BENCH////////////////////////////
module experssion_using_gate_flow_tb();
reg a,b,c;
wire o;
experssion_using_gate_flow e1(a,b,c,o);
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
