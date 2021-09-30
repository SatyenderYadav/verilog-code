module mux21_gate(a,b,s,y);
input a,b,s;
output y;
wire w1,w2,w3;
not n1(w1,s);
and a1(w2,w1,a);
and a2(w3,s,b);
or r1(y,w2,w3);
endmodule
///////////////////////////////////////////////////////////////////////////////////
///////////////////////TEST BENCH//////////////////////////////////////////////////
module mux21_gate_tb();
reg a,b,s;
wire y; 
mux21_gate m(a,b,s,y);
initial
	begin
		s=0; a=1; b=0;
#10	s=1; a=0; b=1;
#10
$stop;
end
endmodule
