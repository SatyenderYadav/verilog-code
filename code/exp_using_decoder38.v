//////////////////////////////a(~b) + ab(~c) + (~b)c///////
module exp_using_decoder38(a,b,c,y);
input a,b,c;
output y;
wire w0,w1,w2,w3;
decoder38 d1(a,b,c, ,w0, , ,w1,w2,w3, );
or (y,w0,w1,w2,w3);
endmodule

///////////////////////////TEST BENCH//////////////////////
module exp_using_decoder38_tb();
reg a,b,c;
wire y;
exp_using_decoder38 d2(a,b,c,y);
initial
	begin
	a=0;b=0;c=0;
#10 a=0;b=0;c=1;
#10 a=0;b=1;c=0;
#10 a=0;b=1;c=1;
#10 a=1;b=0;c=0;
#10 a=1;b=0;c=1;
#10 a=1;b=1;c=0;
#10 a=1;b=1;c=1;
#10;
$stop;
end
endmodule