module exp_5(a,b,c,y);
input a,b,c;
output y;
wire w1,w2;
not n1(w1,c);
or r1(w2,a,w1);
and a1(y,b,w2);
endmodule

module exp_5_tb();
reg a,b,c;
wire y;
exp_5 m1(a,b,c,y);
initial
	begin
		a=0;b=0;c=0;
#5		a=1;b=0;c=1;
#5
$stop;
end
endmodule