module even_parity_6bit(a,e);
input [5:0] a;
output e;
assign e = ^a;
endmodule
//////////////////////////////////////Test Bench/////////////////////////////////

module even_parity_6bit_tb();
reg [5:0] a;
wire e;
even_parity_6bit e1(a,e);
initial
	begin
	a=6'b111001;
#5	a=6'b110111;
#5
$stop;
end
endmodule