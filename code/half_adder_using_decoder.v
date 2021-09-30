module half_adder_using_decoder(a,b,sum,carry);
input a,b;
output sum,carry;
wire w1,w2;
decoder24 d1(a,b, ,w1,w2,carry);
or d2(sum,w1,w2);
endmodule
/////////////////////////////////////////Test Bench //////////////////////////////
module half_adder_using_decoder_tb();
reg a,b;
wire sum,carry;
half_adder_using_decoder hf1(a,b,sum,carry);
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