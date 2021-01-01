
module fullAdder ( In1,In2,Cin,Sum,Cout);
input  In1,In2,Cin;
output  Sum, Cout;
assign Sum  = (In1 ^ In2) ^ Cin;
assign Cout = (In1 & In2) | (In2 & Cin) | (Cin & In1);
endmodule


module ripplecarryadder(A,B,S,Cout);
    input [3:0] A,B;   // imitialize the size of input and output 
    output [3:0] S;    
    output Cout;       
	 wire W1,W2,W3;
	 fullAdder u1(A[0],B[0],1'b0,S[0],W1);    // 1-fulladder bit adder
	 fullAdder u2(A[1],B[1],W1,S[1],W2);
	 fullAdder u3(A[2],B[2],W2,S[2],W3);
	 fullAdder u4(A[3],B[3],W3,S[3],Cout);
    endmodule

