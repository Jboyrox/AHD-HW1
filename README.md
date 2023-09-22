# AHD-HW1
Advanced Hardware Design (Homework 1)

1. **Right Rotate (Module: right)**:
   
   The `right` module takes a 32-bit input `a` and a 5-bit shift amount `b`. The design utilizes a "with select" construct to conditionally assign the output `c` based on the shift amount. The select expression `b(4 DOWNTO 0)` is used to determine which bits from `a` will be placed at specific positions in the output `c`. For each possible shift amount, the bits from `a` are appropriately concatenated to create the right rotated output `c`.

2. **Left Rotate (Module: left)**:
   
   The `left` module also takes a 32-bit input `a` and a 5-bit shift amount `b`. Similar to the right rotate module, it uses a "with select" construct to conditionally assign the output `c` based on the shift amount. The select expression `b(4 DOWNTO 0)` determines which bits from `a` will be placed at specific positions in the output `c`. However, to achieve a left rotate, the concatenation is done in a slightly different manner, ensuring the bits are shifted to the left.

In both designs, the core principle is to manipulate the input bits based on the specified shift amount to achieve the desired left or right rotation. The "with select" construct is used to conditionally assign the bits from the input `a` to the appropriate positions in the output `c` based on the shift amount specified by `b`.


![Screenshot 2023-09-22 at 3 39 52 AM](https://github.com/Jboyrox/AHD-HW1/assets/45749588/0e292335-ce81-48a2-9e11-b111b53cd785)


The above block diagram describes how the barrel shifter ( for both left and right is constructed).
Our input a is a 32 bit input which is passed through a mux . The shift amount acts as the selection lines for the mux the shift amount value is basically essential in choosing what value goes to the 32 bit output C. The selected output will differ in the case of left and right shifts.




**Testing Methodology Explanation**:

1. **Test Case Generation**:
   - I generated the test cases by choosing a specific 32-bit input value, `12345678` in hexadecimal.
   - The shift amounts were methodically selected, ranging from 1 to 30 in decimal, to ensure a comprehensive evaluation of the data-dependent barrel shifter circuits for both left and right rotations.

2. **Purpose of the Test Cases**:
   - The purpose behind these test cases is to validate the accuracy and functionality of the data-dependent barrel shifter circuits.
   - I aimed to ensure that the circuits can handle a variety of shift amounts, producing the correct left or right rotated output.

3. **Covering a Range of Shift Amounts**:
   - I chose shift amounts ranging from 1 to 30, covering a wide spectrum of possible shift scenarios.
   - This allowed me to test both small and large shift amounts, ensuring the accuracy of the shifting operations.

4. **Validation of Barrel Shifter Behavior**:
   - Each test case involved evaluating the barrel shifter's behavior with different shift amounts.
   - I manually calculated the expected results for each test case by performing the specified left or right rotate operation on the given input.

5. **Accuracy and Consistency Verification**:
   - By comparing the actual output from the barrel shifter circuits in the simulation with the expected results, I verified the accuracy and consistency of the circuits.
   - This comparison was crucial in ensuring that the circuits performed the intended rotate operations correctly for various shift amounts.

6. **Ensuring Circuit Robustness**:
   - Running these tests with a variety of shift amounts ensured that the barrel shifter circuits were robust and could handle a diverse range of input scenarios.

In summary, I selected these test cases to comprehensively evaluate the data-dependent barrel shifter circuits, ensuring their accuracy, correctness, and robustness. The systematic range of shift amounts and the use of a fixed input allowed for a thorough assessment of the circuits' performance across a diverse set of shift scenarios.

**Results**:


-> Verilog left shift
   ![verilog_left](https://github.com/Jboyrox/AHD-HW1/assets/45749588/106c0010-be46-4f50-95ed-adf256690d73)
-> VHDL left shift
   ![VHDL_Left](https://github.com/Jboyrox/AHD-HW1/assets/45749588/226d6d03-f1b1-4876-92ba-6b0a3e7897d5)
-> Verilog right shift
   ![verilog_right](https://github.com/Jboyrox/AHD-HW1/assets/45749588/4dff99e5-852f-4c08-af69-1ef571b27fdf)
-> VHDL right shift
   ![VHDL_Right](https://github.com/Jboyrox/AHD-HW1/assets/45749588/d2276dc3-cb77-48a8-8e65-e693d8439359)
-> gpt verilog left 
![gpt_left_verilog](https://github.com/Jboyrox/AHD-HW1/assets/45749588/3e7cc7f4-9e4b-4439-8366-09a00ff6dfae)
->gpt VHDL left
![gpt_left_vhdl](https://github.com/Jboyrox/AHD-HW1/assets/45749588/d79e139f-f260-48f0-899b-da6fc3f94644)
->gpt verilog right 
![gpt_right_verilog](https://github.com/Jboyrox/AHD-HW1/assets/45749588/00267877-d0d1-45da-921a-34387d972916)
->gpt VHDL right
![gpt_right_vhdl](https://github.com/Jboyrox/AHD-HW1/assets/45749588/7e0f87a9-aeb5-4487-b02b-78cd700324ce)


-> bard verilog left
    ![bard_left_verilog](https://github.com/Jboyrox/AHD-HW1/assets/45749588/0d334151-aa6d-4549-9c7f-6dd44b9b6514)
-> bard verilog right
    ![bard_right_verilog](https://github.com/Jboyrox/AHD-HW1/assets/45749588/f9df2496-58ab-4a5c-ba3e-324d5fefc11a)


Note :
This is the link to my chatgpt prompt : https://chat.openai.com/share/59e60ce3-92f7-4768-a65f-c3d2ff52770c
This is the link to my bard prompt : https://bard.google.com/u/1/chat/edd0158e259d8bd1

