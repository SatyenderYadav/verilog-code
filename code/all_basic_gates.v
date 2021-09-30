module all_basic_gates(a,b,and_out,or_out,not_out,xor_out,xnor_out,nand_out,nor_out);
input a,b;
output and_out,or_out,not_out,xor_out,xnor_out,nand_out,nor_out;
assign and_out = a&b;
assign or_out = a|b;
assign not_out = ~a;
assign xor_out = a^b;
assign xnor_out = ~(a^b);
assign nand_out = ~(a&b);
assign nor_out = ~(a|b);
endmodule
///////////////////////////////////////////////////////////////////////////////////
///////////////////////TEST BENCH//////////////////////////////////////////////////
module all_basic_gates_tb();
reg a,b;
wire and_out,or_out,not_out,xor_out,xnor_out,nand_out,nor_out;
all_basic_gates a2(a,b,and_out,or_out,not_out,xor_out,xnor_out,nand_out,nor_out);
initial
	begin
	a=0; b=0;
#10	a=0; b=1;
#10	a=1; b=0;
#10	a=1; b=1;
#10
$stop;
end
endmodule
