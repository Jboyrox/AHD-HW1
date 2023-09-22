module gpt_right (
    input [31:0] input_data,  // 32-bit input data
    input [4:0] rot_amount,   // Rotation amount (0-31)
    output [31:0] output_data // Rotated output data
);

    assign output_data = (rot_amount == 0) ? input_data :
                        (rot_amount == 1) ? {input_data[0], input_data[31:1]} :
                        (rot_amount == 2) ? {input_data[1:0], input_data[31:2]} :
                        (rot_amount == 3) ? {input_data[2:0], input_data[31:3]} :
                        (rot_amount == 4) ? {input_data[3:0], input_data[31:4]} :
                        (rot_amount == 5) ? {input_data[4:0], input_data[31:5]} :
                        (rot_amount == 6) ? {input_data[5:0], input_data[31:6]} :
                        (rot_amount == 7) ? {input_data[6:0], input_data[31:7]} :
                        (rot_amount == 8) ? {input_data[7:0], input_data[31:8]} :
                        (rot_amount == 9) ? {input_data[8:0], input_data[31:9]} :
                        (rot_amount == 10) ? {input_data[9:0], input_data[31:10]} :
                        (rot_amount == 11) ? {input_data[10:0], input_data[31:11]} :
                        (rot_amount == 12) ? {input_data[11:0], input_data[31:12]} :
                        (rot_amount == 13) ? {input_data[12:0], input_data[31:13]} :
                        (rot_amount == 14) ? {input_data[13:0], input_data[31:14]} :
                        (rot_amount == 15) ? {input_data[14:0], input_data[31:15]} :
                        (rot_amount == 16) ? {input_data[15:0], input_data[31:16]} :
                        (rot_amount == 17) ? {input_data[16:0], input_data[31:17]} :
                        (rot_amount == 18) ? {input_data[17:0], input_data[31:18]} :
                        (rot_amount == 19) ? {input_data[18:0], input_data[31:19]} :
                        (rot_amount == 20) ? {input_data[19:0], input_data[31:20]} :
                        (rot_amount == 21) ? {input_data[20:0], input_data[31:21]} :
                        (rot_amount == 22) ? {input_data[21:0], input_data[31:22]} :
                        (rot_amount == 23) ? {input_data[22:0], input_data[31:23]} :
                        (rot_amount == 24) ? {input_data[23:0], input_data[31:24]} :
                        (rot_amount == 25) ? {input_data[24:0], input_data[31:25]} :
                        (rot_amount == 26) ? {input_data[25:0], input_data[31:26]} :
                        (rot_amount == 27) ? {input_data[26:0], input_data[31:27]} :
                        (rot_amount == 28) ? {input_data[27:0], input_data[31:28]} :
                        (rot_amount == 29) ? {input_data[28:0], input_data[31:29]} :
                        (rot_amount == 30) ? {input_data[29:0], input_data[31:30]} :
                        {input_data[31], input_data[31:1]}; // rot_amount == 31

endmodule
