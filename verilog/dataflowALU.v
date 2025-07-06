//this module will select one of the four operations we made depending on OpCode 
   module dataflowALU (Result,carrysum,carrysub,A,B,c,OpCode);
//the process of selecting the operation will work perfectly as 4 to 1 MUX since the MSB is always zero 
//inputs and outputs 
input [3:0] A,B;
input c ;
input [2:0] OpCode;
output carrysum,carrysub;
output [3:0] Result ;
//every wire represent the output of one of the four operations 
wire [3:0] wireand,wireor,wireadd,wiresub ;
//calling or instantiate the four modules we made 
AndGate (wireand,A,B);
OrGate (wireor,A,B);
Adder (wireadd,carrysum,A,B,c);
Subtractor (wiresub,carrysub,A,B,c);
//result using data flow modeling 
assign Result = (OpCode==3'b000)? wireadd :
(OpCode==3'b001)? wiresub :
(OpCode==3'b010)? wireand : 
(OpCode==3'b011)? wireor :4'bz ; /*the conditional operator does not include all possible cases so we say that the 
other cases are z which means its lika an open circuit (no signal) */
   
endmodule