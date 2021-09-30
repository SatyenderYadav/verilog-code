module decoder38(a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);
input a,b,c;
output y0,y1,y2,y3,y4,y5,y6,y7;
wire na,nb,nc;
not n1(na,a);
not n2(nb,b);
not n3(nc,c);
and a1(y0,na,nb,nc);
and a2(y1,na,nb,c);
and a3(y2,na,b,nc);
and a4(y3,na,b,c);
and a5(y4,a,nb,nc);
and a6(y5,a,nb,c);
and a7(y6,a,b,nc);
and a8(y7,a,b,c);
endmodule
///////////////////////////////////////////////TEST BENCH////////////////////////////////
module decoder38_tb();
reg a,b,c;
wire y0,y1,y2,y3,y4,y5,y6,y7;

decoder38 d3(a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);
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
#10 
$stop;
end
endmodule