//this module was made only to help in the schematic file / symbol design since the idea works like a 4 to 1 MUX
module MUX 
//the outputs and inputs
 (output reg result,input add,sub,andd,orr,input [2:0] OpCode);
always @* begin 
if (OpCode ==3'b000) result = add ;
else if (OpCode ==3'b001) result = sub ;
else if (OpCode ==3'b010) result = andd ;
else if (OpCode ==3'b011) result = orr ;
else result = 4'bz;
end 
endmodule 