module moore101(x,clk,rst,y);
input x,clk,rst;
output reg y;
reg [1:0] state;
parameter s0=0, s1=1, s2=2,s3=3;

always@(posedge clk or posedge rst)
	begin
		if(rst)
			begin 
			state<=s0; y<=0; 	
			end
		else
			begin 
				case(state)
				0: begin y<=0; if(x==1) state<=s1; else state<=s0; end

				1:begin y<=0; if(x==0) state<=s2; else state<=s1; end

				2:begin y<=0; if(x==1) state<=s3; else state<=s0; end

				3:begin y<=1; if(x==1) state<=s1; else state<=s2; end

			default: begin state<=s0; y<=0;  end
			endcase
		end
	end
endmodule

//////////// Test Bench ///////////////////////////////////
module  moore101tb();
reg x,rst,clk;
wire y;

moore101 m1(x,clk,rst,y);
initial
	begin
		clk=0;
			forever
				begin
					#10 clk = ~clk;
				end
	end
initial
	begin
		rst=1; x=0;
	#15 rst=0; x=1;
	#20 x=0;
	#20 x=1;
	#20
		 $stop;
		
	end
endmodule