module right_rotator(
    input [31:0] in_data, // 32-bit input
    input [4:0] shift_amount, // Number of positions to shift
    output [31:0] out_data // 32-bit output
);

    assign out_data = {in_data[shift_amount-1:0], in_data[31:shift_amount]};

endmodule
