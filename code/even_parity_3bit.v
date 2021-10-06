module even_parity_3bit(b,e);
input [2:0]b;
output e;
assign e = b[0] ^ b[1] ^ b[2];
endmodule
//////////////////////////////////////Test Bench/////////////////////////////////

module even_parity_3bit_tb();
reg [2:0]b;
wire e;
even_parity_3bit e1(b,e);
initial
	begin
for (b=0;b<8;b=b+1)
		begin
		#5;
		end
	end
initial
begin
#40 $stop;
end
endmodule