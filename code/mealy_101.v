module fsm101mealy(x,rst,clk,y);
input x,clk,rst;
output reg y=0;
reg [1:0] state;
parameter s0=2'b00, s1=2'b01, s2=2'b10;

always@(posedge clk or posedge rst)
	begin
		if(rst)
			begin 
				y<=0; state<=s0;
			end
		else
			begin
				case(state)
				s0: 
					begin 
						if(x==0) 
							begin 
								state<=s0; y<=0;
							end
						else
							begin
								state<=s1; y<=0; 
							end
					end
				s1:
					begin 
						if(x==0) 
							begin 
								state<=s2; y<=0;
							end
						else
							begin
								state<=s1; y<=0; 
							end
					end

				s2:
					begin 
						if(x==0) 
							begin 
								state<=s0; y<=0;
							end
						else
							begin
								state<=s1; y<=1; 
							end
					end

			default:
				begin 
					y<=0; state<=s0;
				end
			end

	end
endmodule


module fsm101mealy_tb();
reg x,rst,clk;
wire y;

fsm101mealy f1(x,rst,clk,y)
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
	#20
		#150 $stop;
	end
