module tb_full_adder_4bit;

    reg [3:0] A, B;    // 4-bit input registers
    reg Cin;            // Carry-in
    wire [3:0] Sum;     // 4-bit sum output
    wire Cout;          // Carry-out output

    // Instantiate the 4-bit full adder
    full_adder_4bit UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Apply test vectors
    initial begin
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b1101; B = 4'b1011; Cin = 1; #10;
        A = 4'b1111; B = 4'b1111; Cin = 0; #10;
        A = 4'b1010; B = 4'b0101; Cin = 1; #10;
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("A = %b, B = %b, Cin = %b -> Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
    end

endmodule
