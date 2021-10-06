module mux21_cond(a,b,s,y);
input a,b,s;
output y;
assign y = s?b:a;
endmodule
//////////////////////////////////////Test Bench/////////////////////////////////

module mux21_cond_tb();
reg a,b,s;
wire y;
mux21_cond md(a,b,s,y);
initial
	begin
		s=0; a=1;b=0;
#5		s=1; a=1;b=0;
#5
$stop;
end
endmodule
