module exp_mux(a,b,c,y);
input a,b,c;
output y;
assign y = ((~a)&(~b)&1) | ((~a)&(b)&(~c)) | ((a)&(~b)&0) | ((a)&(b)&c) ;
endmodule
//////////////////////////////////TEST BENCH/////////////////////////////////////
module exp_mux_tb();
reg a,b,c;
wire y;
exp_mux e1(a,b,c,y);
initial
	begin
		a=0;b=0;c=0;
	#5 a=0;b=0;c=1;
	#5 a=0;b=1;c=0;
	#5 a=0;b=1;c=1;
	#5 a=1;b=0;c=0;
	#5 a=1;b=0;c=1;
	#5 a=1;b=1;c=0;
	#5 a=1;b=1;c=1;
	#5 
	$stop;
	end
endmodule
