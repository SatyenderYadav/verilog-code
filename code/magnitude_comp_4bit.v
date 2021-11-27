module mag_comp_4bit(a,b,L,G,E);
input [1:0] a,b;
output L,G,E;
assign L = ((~a[1])&b[1]) + ((~a[0])&b[1]&b[0]) + ((~a[1])&(~a[0])&b[0]);
assign E = (~(a[0]^ b[0])) & (~(a[1]^b[1]));
assign G = (a[1]&(~b[1])) + (a[0]&(~b[1])&(~b[0])) + (a[1]&a[0]&(~b[0]));

endmodule

///////////////////// Test Bench ////////////////////
module mag_comp_4bit_tb();
reg [1:0] a,b;
wire  L,G,E;

mag_comp_4bit m1(a,b,L,G,E);
initial
	begin
	a=2'b01;b=2'b11;
#5	a=2'b10;b=2'b01;
#5	a=2'b00;b=2'b00;
#5
$stop;
end
endmodule	
