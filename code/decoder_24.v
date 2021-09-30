module decoder24(a,b,y0,y1,y2,y3);
input a,b;
output y0,y1,y2,y3;
assign y0 = (~a) & (~b);
assign y1 = (~a) & (b);
assign y2 = (a) & (~b);
assign y3 = (a) & (b);
endmodule
/////////////////////////////////////////Test Bench //////////////////////////////
module decoder24_tb();
reg a,b;
wire y0,y1,y2,y3;
decoder24 d1(a,b,y0,y1,y2,y3);
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