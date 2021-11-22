module forloop_2();
integer num=0,i;

initial
	begin
		for(i=0;i<32;i=i+2)
			begin
				#5 num[i]=1;
			end
	end
endmodule
