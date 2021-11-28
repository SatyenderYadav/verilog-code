module cmos_nand(a,b,y);
input a,b;
output y;
wire w1;
supply1 vcc;
supply0 gnd;
pmos p1(y,vcc,a);
pmos p2(y,vcc,b);
nmos n1(w1,vcc,b);
nmos n2(y,vcc,a);
endmodule

////// Test Bench/////
module cmos_nandtb();
reg a,b;
wire y;
cmos_nand c1(a,b,y);
initial 
	begin
		   a=0;b=0;
		#5 a=1;b=0;
		#5 a=0; b=1;
		#5 a=1;b=1;
		#5
		$stop;
	end
endmodule