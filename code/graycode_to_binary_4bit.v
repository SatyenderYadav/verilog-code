module gtob_4bit(g,b);
input [3:0] g;
output [3:0] b;
assign b[0] = g[0] ^ g[1] ^ g[2] ^ g[3];
assign b[1] = g[1] ^ g[2] ^ g[3];
assign b[2] = g[3] ^ g[2];
assign b[3] = g[3];
endmodule
/////////////////////////////////////////////////////////////////////////////////
///////// TEST BENCH ///////////////////////////////////////////////////////////
module gtob_4bit_tb();
reg [3:0] g;
wire [3:0] b;
gtob_4bit b1(g,b);
initial
	begin
	for (g=0;g<16;g=g+1)
		begin
			$display("The Binary Number equivalent for Gray Code %b is %b",g,b);
		#5;
		end
	end
initial
begin
#95 $stop;
end
endmodule