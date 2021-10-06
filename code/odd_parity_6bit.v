module odd_parity_6bit(a,e);
input [5:0] a;
output e;
wire w1;
assign w1 = ^a;
assign e = ~w1;
endmodule
//////////////////////////////////////Test Bench/////////////////////////////////

module odd_parity_6bit_tb();
reg [5:0] a;
wire e;
odd_parity_6bit o1(a,e);
initial
	begin
	a=6'b111001;
#5	a=6'b110111;
#5
$stop;
end
endmodule