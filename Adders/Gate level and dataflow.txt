//HALF ADDER USING DATAFLOW 
module halfadderdataflow(
    input a,
    input b,
    output sum,
    output carry
    );
	 assign sum=a^b;
	 assign carry=a&b;
endmodule

//HALF ADDER USING GATELEVEL 
module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;
xor(sum,a,b);
and(carry,a,b);
endmodule


// FULL ADDER USING GATE LEVEL 
module fulladder(s,c,a,b,cin);
input a,b,cin;
output s,c;
wire x,y,z; // using to sshow internal conection
xor(x,a,b);
and(y,cin,x);
and(z,a,b);
xor(s,x,cin);
or(c,y,z);
endmodule


// FULL ADDER USING DATAFLOW 
module fulladderdataflow(sum,carry,a,b,cin);
input a,b,cin;
output sum,carry;
wire x,y,z;
assign x=a^b; //A xor B
assign y=cin&x;  //assignx And output 
assign z=b&a;
assign sum=x^cin; //assign x xor cin
assign carry=y|z; // Y or Z
endmodule
