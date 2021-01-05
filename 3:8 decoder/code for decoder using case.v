module decoder_case(
    A, // input 
    B  // output
    );
    input [2:0] A;
    output [7:0] B;
    reg [7:0] B;
    always @(A)
    case (A)   // FOR ALL THE COMBINATION
        3'b000 : B = 8'b00000001;
        3'b001 : B = 8'b00000010;
        3'b010 : B = 8'b00000100;
        3'b011 : B = 8'b00001000;
        3'b100 : B = 8'b00010000;
        3'b101 : B = 8'b00100000;
        3'b110 : B = 8'b01000000;
        3'b111 : B = 8'b10000000;
        default : B = 8'b00000000; // FOR DEFAULT LATCHES
    endcase 
    endmodule
