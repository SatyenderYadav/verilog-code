module half_subtractor_data(a,b,diff,borrow);
input a,b;
output diff,borrow;
assign diff = a ^ b;
assign borrow = (~a) & b;
endmodule
/////////////////////////////////////////////////////////////////////////////////
///////// TEST BENCH ///////////////////////////////////////////////////////////
module half_subtractor_data_tb();
reg a,b;
wire diff,borrow;
half_subtractor_data half_2(a,b,diff,borrow);
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
