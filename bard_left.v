module bard_left(
    input [31:0] data_in,
    input [31:0] shift_amount,
    output [31:0] data_out
);

    assign data_out = (data_in << (shift_amount & 31)) | (data_in >> (32 - (shift_amount & 31)));

endmodule
