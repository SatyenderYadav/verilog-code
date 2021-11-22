module alu_case(a,b,c,o);
input [3:0] a,b;
input [2:0] c;
output reg [7:0] o;
always@*
	begin
		case(c)
		3'b000: o = a + b;
		3'b001: o = a - b;
		3'b010: o = a & b;
		3'b011: o = a ^ b;
		3'b100: o = {a,b};
		3'b101: o = &a;
		endcase
	end
endmodule

module alu_case_tb();
reg [3:0] a,b;
reg [2:0] c;
wire [7:0] o;
alu_case alu(a,b,c,o);
initial
	begin
	 c=3'b000;a=4'b0001;b=4'b0010;
#10 c=3'b001;
#10 c=3'b010;
#10 c=3'b011;
#10 c=3'b100;
#10 c=3'b101;
#10 c=3'b110;
#10
$stop;
end
endmodule