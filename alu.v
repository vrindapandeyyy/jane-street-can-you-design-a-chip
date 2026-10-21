module alu(
input [7:0] a,
input [7:0] b,
input alu_op,
output reg [7:0] result,
output zero
);

// defining the operation of ALU
always @(*) begin
if (alu_op == 1'b0)
result = a+b; //add when alu_op is 1 or binary 01

else
result = a-b;
end

assign zero = ~|result; //NOR of the result
endmodule
