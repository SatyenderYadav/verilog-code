module full_adder_41_mux(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum = ((~b)&(~c)&a) | ((~b)&(c)&(~a)) | ((b)&(~c)&~a) | ((b)&(c)&(a)) ;
assign carry = ((~b)&(~c)&0) | ((~b)&(c)&a) | ((b)&(~c)&(a)) | ((b)&(c)&1) ;
endmodule

module full_adder_41_mux_tb();
reg a,b,c;
wire sum,carry;
full_adder_41_mux m3(a,b,c,sum,carry);
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
