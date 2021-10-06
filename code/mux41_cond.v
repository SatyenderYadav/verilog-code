module mux41_cond(a,b,c,d,s0,s1,y);
input a,b,c,d,s0,s1;
output y;
assign y = s1?(s0?d:c):(s0?b:a);
endmodule
//////////////////////////////////////Test Bench/////////////////////////////////

module mux41_cond_tb();
reg a,b,c,d,s0,s1;
wire y;
mux41_cond md(a,b,c,d,s0,s1,y);
initial
	begin
		s1=0;s0=1; a=0;b=1;c=0;d=0;
#5		s1=1;s0=1; a=1;b=0;c=0;d=0;
#5
$stop;
end
endmodule