module alu_z(
input [7:0] a,
input [7:0] b,
input alu_op,
input clk,
input reset,
input flag_we,
output [7:0] result,
output Z
);
wire zero_w;

alu u_alu(
.a(a),
.b(b),
.alu_op(alu_op),
.zero(zero_w),
.result(result)
);

zflag u_zflag(
.clk(clk),
.reset(reset),
.zero(zero_w),
.flag_we(flag_we),
.Z(Z)
);
endmodule
