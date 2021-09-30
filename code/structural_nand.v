module structural_nand(m,n,p);
input m,n;
output p;
wire w1;
and_g a1(m,n,w1);
not_g a2(w1,p);
endmodule
//////////////////////////////////////////////////////////////////////////////////
//////////////////////TEST BENCH///////////////////////////////////////////////
module structural_nandgtb();
reg m,n;
wire p;
structural_nand g2(m,n,p);
initial
	begin
		m=0; n=0;
	#5 m=0; n=1;
	#5	m=1; n=0;
	#5	m=1; n=1;
	#5
	$stop;
	end
endmodule

