module zflag (
    input  clk,
input reset,
    input  flag_we,
    input  zero,
    output reg Z
);

always @(posedge clk) begin
if(reset)
Z <= 1'b0;
else if(flag_we)
Z<=zero;
end
endmodule
