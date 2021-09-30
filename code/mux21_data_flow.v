module mux21(a,b,s,y);
input a,b,s;
output y;
assign y = ((~s)&a) | (s&b);
endmodule
/////////////////////////////////////////////////////////////////////////////////
///////// TEST BENCH ///////////////////////////////////////////////////////////
module mux21_tb();
reg a,b,s;
wire y; 
mux21 m(a,b,s,y);
initial
	begin
		s=0; a=1; b=0;
#10	s=1; a=0; b=1;
#10
$stop;
end
endmodule
