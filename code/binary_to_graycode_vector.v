module btog_vector(b,g);
input [2:0] b;
output [2:0] g;
assign g[0] = b[0] ^ b[1];
assign g[1] = b[1] ^ b[2];
assign g[2] = b[2] ;
endmodule
//////////////////////////////////////////////////////////////////////////////////
module btog_vector_tb();
reg [2:0] b;
wire [2:0] g;
btog_vector b1(b,g);
initial
	begin
	for (b=0;b<8;b=b+1)
		begin
			$display ("The Gray Code equivalent for Binary Number %b is %b",b,g);
		#5;
		end
	end
initial
begin
#45 $stop;
end
endmodule


