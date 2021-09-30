module multiplier2x2(a,b,y);
input [1:0] a;
input [1:0] b;
output [3:0] y;
wire [3:0] w;

assign y[0] = a[0] & b[0];
assign w[0] = a[1] & b[0];
assign w[1] = a[0] & b[1];
assign w[2] = a[1] & b[1];
half_adder_data hf1(w[0],w[1],y[1],w[3]);
half_adder_data hf2(w[3],w[2],y[2],y[3]);
endmodule


/////////////////////////////////TEST BENCH///////////////////////////
module multiplier2x2_tb();
reg [1:0] a;
reg [1:0] b;
wire [3:0] y;
multiplier2x2 m1(a,b,y);
initial
	begin
	a=2'b00; b=2'b00;
#10 a=2'b01; b=2'b10;
#10 a=2'b11; b=2'b10;
#10 a=2'b11; b=2'b11;
#10
$stop;
end
endmodule
