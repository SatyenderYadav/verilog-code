module nor_g(a,b,y);
input a,b;
output y;

assign y = ~(a|b);
endmodule

////////////////////////////////////////////////////////////////
////////////////////Test Bench/////////////////////////////////
module nor_gtb();
reg a,b;
wire y;
nor_g n1(a,b,y);
initial 
	begin
		a=0;b=0;
#10	a=0;b=1;
#10	a=1;b=0;
#10	a=1;b=1;
#10
$stop;
end
endmodule
