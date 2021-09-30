module full_sub_data(a,b,c,diff,borr);
input a,b,c;
output diff,borr;
assign diff = a ^ b ^c;
assign borr = ((~a)&b) | ((~(a^b))&c);
endmodule
/////////////////////////////////////////////////////////////////////////////////
///////// TEST BENCH ///////////////////////////////////////////////////////////
module full_sub_data_tb();
reg a,b,c;
wire diff,borr;
full_sub_data g2(a,b,c,diff,borr);
initial
	begin
		a=0;b=0;c=0;
#10	a=0;b=0;c=1;
#10	a=0;b=1;c=0;
#10	a=0;b=1;c=1;
#10	a=1;b=0;c=0;
#10	a=1;b=0;c=1;
#10	a=1;b=1;c=0;
#10	a=1;b=1;c=1;
#10	
$stop;
end
endmodule

