module RippleCarryAdder8 (
    input  [7:0] A,
    input  [7:0] B,
    input        Cin,
    output [7:0] SUM,
    output       Cout
);

wire [7:0] carry;

FullAdder FA0 (.A(A[0]), .B(B[0]), .Cin(Cin),      .Sum(SUM[0]), .Cout(carry[0]));
FullAdder FA1 (.A(A[1]), .B(B[1]), .Cin(carry[0]), .Sum(SUM[1]), .Cout(carry[1]));
FullAdder FA2 (.A(A[2]), .B(B[2]), .Cin(carry[1]), .Sum(SUM[2]), .Cout(carry[2]));
FullAdder FA3 (.A(A[3]), .B(B[3]), .Cin(carry[2]), .Sum(SUM[3]), .Cout(carry[3]));
FullAdder FA4 (.A(A[4]), .B(B[4]), .Cin(carry[3]), .Sum(SUM[4]), .Cout(carry[4]));
FullAdder FA5 (.A(A[5]), .B(B[5]), .Cin(carry[4]), .Sum(SUM[5]), .Cout(carry[5]));
FullAdder FA6 (.A(A[6]), .B(B[6]), .Cin(carry[5]), .Sum(SUM[6]), .Cout(carry[6]));
FullAdder FA7 (.A(A[7]), .B(B[7]), .Cin(carry[6]), .Sum(SUM[7]), .Cout(Cout));

endmodule
