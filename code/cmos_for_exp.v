module cmos_for_exp(a,b,c,y);
input a,b,c;
output y;
supply1 vcc;
supply0 gnd;
wire w1,w2,w3,w4,w5;

pmos p1(w1,vcc,b);
pmos p2(w2,w1,c);
pmos p3(w2,vcc,~a);
pmos p4(w5,w2,~a);
pmos p5(w5,w2,~b);

nmos n1(w3,gnd,~a);
nmos n2(w5,w3,b);
nmos n3(w5,w3,c);
nmos n4(w4,gnd,~b);
nmos n5(w5,w4,~a);

assign y=~w5;
endmodule

////// Test Bench/////
module cmos_for_exptb();
reg a,b,c;
wire y;
cmos_for_exp c1(a,b,c,y);
initial 
	begin
		   a=0;b=0;c=0;
		#5 a=1;b=0;c=1;
		#5 a=0; b=1;c=1;
		#5 a=1;b=1;c=0;
		#5
		$stop;
	end
endmodule