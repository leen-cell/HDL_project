//Bitwise OR compares corresponding bits of two numbers
module OrGate (ored,A,B) ;
//inputs and outputs
input [3:0] A,B;
output[3:0] ored;
//OR between the corresponding bits
or first (ored[0],A[0],B[0]);
or second (ored[1],A[1],B[1]);
or third(ored[2],A[2],B[2]);
or fourth(ored[3],A[3],B[3]);
endmodule  