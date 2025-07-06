//ful adder made of two half adders ,it sums up three bits
module FA (sum,carryout,A,B,c);
//inputs and outputs and wires , inputs for a gate output from another
input A,B,c ;
output sum,carryout;
wire w1,w2,w3;
 //instantiate 2 half adders
HA num1(w1,w2,A,B);
HA num2(sum,w3,w1,c);
or (carryout,w2,w3);

endmodule 