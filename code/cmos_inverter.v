module cmos_inverter(a,y);
input a;
output y;
supply1 vcc;
supply0 gnd;
pmos p1(y,vcc,a);
nmos n1(y,gnd,a);
endmodule

////// Test Bench/////
module cmos_invertertb();
reg a;
wire y;
cmos_inverter c1(a,y);
initial 
	begin
		a=0;
		#5 a=1;
		#5
		$stop;
	end
endmodule