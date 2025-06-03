module tt_um_alu_top (
    input  [7:0] ui_in,      // A[7:0]
    output [7:0] uo_out,     // SUM[7:0]
    inout  [7:0] uio_inout,  // B[4:0] + sel[2:0]
    input        clk         // Reloj
);

// Entradas separadas
wire [7:0] A   = ui_in;
wire [4:0] B   = uio_inout[4:0];
wire [2:0] sel = uio_inout[7:5];

// Resultado
wire [7:0] SUM;
wire [7:0] R;

// Sumador
RippleCarryAdder8 sumador (
    .A    (A),
    .B    ({3'b000, B}),  // Extiende a 8 bits
    .Cin  (1'b0),         // Si quieres usar Cin real, debes usar otro bit
    .SUM  (SUM),
    .Cout ()              // No usado
);

// ALU
ALU alu (
    .A   (A),
    .B   ({3'b000, B}),
    .sel (sel),
    .R   (R)
);

// Salida
assign uo_out = SUM;

endmodule


