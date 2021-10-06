module mag_comp_1bit(a,b,L,G,E);
input a,b;
output L,G,E;
wire w1,w2;
not n1(w1,a);
not n2(w2,b);
and a1(L,w1,b);
xnor x1(E,a,b);
and a2(G,a,w2);
endmodule
//////////////////////////////////////Test Bench/////////////////////////////////
module mag_comp_1bit_tb();
reg a,b;
wire L,G,E;
mag_comp_1bit m1(a,b,L,G,E);
initial
	begin
	a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#5
$stop;
end
endmodule
