module nand_g(a,b,y);
input a,b;
output y;
assign y = ~ (a&b);
endmodule
////////////////////////////////////////////////////////////////
////////////////////Test Bench/////////////////////////////////

module nand_gtb();
reg a,b;
wire y;
nand_g a1(a,b,y);
initial
	begin
		a=0; b=0;
	#5 a=0; b=1;
	#5	a=1; b=0;
	#5	a=1; b=1;
	#5
	$stop;
	end
endmodule