//////////////////////////// Y(a,b,c) = (a.b + c )' /////////////////
module exp_mux41(a,b,c,d,s1,s2,y);
input a,b,c,d,s1,s2;
output y;
assign y = ((~s1)&(~s2)&a) | ((~s1)&(s2)&b) | ((s1)&(~s2)&c) | ((s1)&(s2)&d) ;
endmodule
///////////////////////////////////////////////////////////////////////////////////
////////////////////////TEST BENCH/////////////////////////////////////////////////
module exp_mux41_tb();
reg a,b,c,d,s1,s2;
wire y; 
exp_mux41 m(a,b,c,d,s1,s2,y);
initial
	begin
		s1=0; s2=0; a=1; b=0; c=0; d=0;
#10	s1=0; s2=1; a=0; b=1; c=0; d=0;
#10	s1=1; s2=0; a=0; b=0; c=1; d=0;
#10	s1=1; s2=1; a=0; b=0; c=0; d=1;
#10
$stop;
end
endmodule