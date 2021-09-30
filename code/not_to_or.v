module nor_to_or(a,b,y);
input a,b;
output y;
wire w1;
nor_g n2(a,b,w1);
nor_g n3(w1,w1,y);
endmodule
//////////////////////////////////////////////////////////////////////////////////
/////////////////////////////	TEST BENCH /////////////////////////////////////////
module nor_to_or_tb();
reg a,b;
wire y;
nor_to_or nor1(a,b,y);
initial
	begin
		a=0; b=0;
	#5 a=0; b=1;
	#5 a=1; b=0;
	#5	a=1; b=1;
	#5
	$stop;
	end
endmodule

