module moore101(x,clk,rst,y);
input x,clk,rst;
output reg y=0;
reg [1:0] state;
parameter s0=2'b00, s1=2'b01, s2=2'b10;s3=2'b11;

always@(posedge clk or posedge rst)
	begin
		if(rst)
			begin y<=0; state<=s0;	end
		else
			begin 
			case(state)
				s0: begin y<=0; if(x==1) state<=s1; else state<=s0; end

				s1:begin y<=0; if(x==0) state<=s2; else state<=s1; end

				s2:begin y<=0; if(x==1) state<=s3; else state<=s0; end

				s3:begin y<=1; if(x==1) state<=s1; else state<=s2; end

			default: begin y<=0; state<=s0; end
			endcase
		end
	end
endmodule

module  moore101_tb();
reg x,rst,clk;
wire y;

moore101 f1(x,rst,clk,y)
initial
	begin
		clk=0;
			forever
				begin
					#10 clk = ~clk
				end
	end
initial
	begin
		rst=1; x=0;
	#15 rst=0; x=1;
	#20 x=0;
	#20 x=1;
	#20 x=0;
	#20 x=1'
	#20
		$stop;
	end
endmodule