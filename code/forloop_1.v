module demo_forloop();
integer num;

initial
	begin
		for(num=0;num<128;num=num+1)
			begin
				#5 $display("The num is %d",num);
			end
	end
endmodule
