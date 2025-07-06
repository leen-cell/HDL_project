// Bitwise AND compares corresponding bits of two numbers
module AndGate (anded,A,B) ;
//inputs and outputs
input [3:0] A,B;
output[3:0] anded;
// and between the corresponding bits of the two numbers
and first (anded[0],A[0],B[0]);
and second (anded[1],A[1],B[1]);
and third(anded[2],A[2],B[2]);
and fourth(anded[3],A[3],B[3]);
endmodule  