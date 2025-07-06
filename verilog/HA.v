// a half adder that sums up two bits 
module HA (sum,c,A,B);
output sum,c;
input A,B;
xor (sum,A,B);
and (c,A,B);
 endmodule