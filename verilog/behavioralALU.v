//this module will select one of the four operations we made depending on OpCode 
//it gives the same result as the data flow one but here in behavioral modeling
module behavioralALU (Result,carrysum,carrysub,A,B,c,OpCode);
//inputs and outputs
input c ;
input [3:0] A,B;
input [2:0] OpCode;
output reg [3:0] Result ;
output  carrysum,carrysub;
wire [3:0] wireand,wireor,wireadd,wiresub ;
//instantiate the four operations 
AndGate (wireand,A,B);
OrGate (wireor,A,B);
Adder (wireadd,carrysum,A,B,c);
Subtractor (wiresub,carrysub,A,B,c);
//sensitivity list = @* which means all since this design is combinational 
// default case is for any other cases and in this design we do not have more than 4 operations so its z high impedance
always @(*) begin
case(OpCode)
3'b000:Result = wireadd;
3'b001:Result = wiresub;
3'b010: Result = wireand;
3'b011: Result = wireor;
default:Result = 4'bz;
endcase
end
endmodule 

