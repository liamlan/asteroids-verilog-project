//----------------------------------------------------------------------
// 16 bit NOT gate, input 16 bits binary, output 16 bits binary flipped
//----------------------------------------------------------------------
module NOT16 (in,result); 
  input[15:0] in;                        
  output[15:0] result;                        
  wire[15:0] result;                          
  not g15(result[15], in[15]);
  not g14(result[14], in[14]);
  not g13(result[13], in[13]);
  not g12(result[12], in[12]);
  not g11(result[11], in[11]);
  not g10(result[10], in[10]);
  not g9(result[9], in[9]);
  not g8(result[8], in[8]);
  not g7(result[7], in[7]);
  not g6(result[6], in[6]);
  not g5(result[5], in[5]);
  not g4(result[4], in[4]);
  not g3(result[3], in[3]);
  not g2(result[2], in[2]);
  not g1(result[1], in[1]);
  not g0(result[0], in[0]);
endmodule                             //Module End
//----------------------------------------------------------------------

//----------------------------------------------------------------------
// 16 bit AND gate, input 16 bits binary, output 1 bits binary 
// If all 16 bit inputs are 1, then result is 1, else 0
//----------------------------------------------------------------------
module AND16(A,O);
input [15:0] A;
output O;
reg O;
 
always @ (A,O) begin
 
O = A[0] & A[1] & A[2] & A[3] & A[4] & A[5] & A[6] & A[7] & A[8] & A[9] & A[10] & A[11] & A[12] & A[13] & A[14] & A[15];
 
end
endmodule                           
//----------------------------------------------------------------------

//----------------------------------------------------------------------
// 16 bit OR gate, input 16 bits binary, output 1 bits binary 
// If one of the 16 bit inputs are 1, then result is 1, else 0
//----------------------------------------------------------------------
module OR16(A,O);
input [15:0] A;
output O;
reg O;
always @ (A,O) begin
O = A[0] | A[1] | A[2] | A[3] | A[4] | A[5] | A[6] | A[7] | A[8] | A[9] | A[10] | A[11] | A[12] | A[13] | A[14] | A[15];
end
endmodule 

//----------------------------------------------------------------------
// 16 bit NOR gate, input 16 bits binary, output 1 bits binary 
// If one of the 16 bit inputs are 1, then result is 0, else 1
//----------------------------------------------------------------------
module NOR16(A,O);
input [15:0] A;
output O;
reg O;
always @ (A,O) begin
O = !(A[0] | A[1] | A[2] | A[3] | A[4] | A[5] | A[6] | A[7] | A[8] | A[9] | A[10] | A[11] | A[12] | A[13] | A[14] | A[15]);
end
endmodule 

//----------------------------------------------------------------------
// 16 bit NAND gate, input 16 bits binary, output 1 bits binary 
// If all 16 bit inputs are 1, then result is 0, else 1
//----------------------------------------------------------------------
module NAND16(A,O);
input [15:0] A;
output O;
reg O;
 
always @ (A,O) begin
 
O = !(A[0] & A[1] & A[2] & A[3] & A[4] & A[5] & A[6] & A[7] & A[8] & A[9] & A[10] & A[11] & A[12] & A[13] & A[14] & A[15]);
 
end
endmodule                          

//----------------------------------------------------------------------
//Left Arbiter 16Bit, input 16 bits binary, output the left most digit
//as 1, the rest of digits 0, in 16 bits binary
//----------------------------------------------------------------------
module LArb16(A, O);
input [15:0] A;
output [15:0] O;
reg [15:0] O;
 
always @ (A, O) begin
 
O[15] = A[15];
O[14] = ~A[15] & A[14];
O[13] = ~A[15] & ~A[14] & A[13];
O[12] = ~A[15] & ~A[14] & ~A[13] & A[12];
O[11] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & A[11];
O[10] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & A[10];
O[9] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & ~A[10] & A[9];
O[8] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & ~A[10] & ~A[9] & A[8];
O[7] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & ~A[10] & ~A[9] & ~A[8] & A[7];
O[6] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & ~A[10] & ~A[9] & ~A[8] & ~A[7] & A[6];
O[5] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & ~A[10] & ~A[9] & ~A[8] & ~A[7] & ~A[6] & A[5];
O[4] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & ~A[10] & ~A[9] & ~A[8] & ~A[7] & ~A[6] & ~A[5] & A[4];
O[3] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & ~A[10] & ~A[9] & ~A[8] & ~A[7] & ~A[6] & ~A[5] & ~A[4] & A[3];
O[2] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & ~A[10] & ~A[9] & ~A[8] & ~A[7] & ~A[6] & ~A[5] & ~A[4] & ~A[3] & A[2];
O[1] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & ~A[10] & ~A[9] & ~A[8] & ~A[7] & ~A[6] & ~A[5] & ~A[4] & ~A[3] & ~A[2] & A[1];
O[0] = ~A[15] & ~A[14] & ~A[13] & ~A[12] & ~A[11] & ~A[10] & ~A[9] & ~A[8] & ~A[7] & ~A[6] & ~A[5] & ~A[4] & ~A[3] & ~A[2] & ~A[1] & A[0];
 
end
endmodule

//----------------------------------------------------------------------
//right Arbiter 16Bit, input 16 bits binary, output the right most digit
//as 1, the rest of digits 0, in 16 bits binary
//----------------------------------------------------------------------
module RArb16(A,O);
input [15:0] A;
output [15:0] O;
reg [15:0] O;
 
always @ (A, O) begin
 
O[0] = A[0];
O[1] = ~A[0] & A[1];
O[2] = ~A[0] & ~A[1] & A[2];
O[3] = ~A[0] & ~A[1] & ~A[2] & A[3];
O[4] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & A[4];
O[5] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & A[5];
O[6] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5] & A[6];
O[7] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5] & ~A[6] & A[7];
O[8] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5] & ~A[6] & ~A[7] & A[8];
O[9] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5] & ~A[6] & ~A[7] & ~A[8] & A[9];
O[10] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5] & ~A[6] & ~A[7] & ~A[8] & ~A[9] & A[10];
O[11] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5] & ~A[6] & ~A[7] & ~A[8] & ~A[9] & ~A[10] & A[11];
O[12] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5] & ~A[6] & ~A[7] & ~A[8] & ~A[9] & ~A[10] & ~A[11] & A[12];
O[13] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5] & ~A[6] & ~A[7] & ~A[8] & ~A[9] & ~A[10] & ~A[11] & ~A[12] & A[13];
O[14] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5] & ~A[6] & ~A[7] & ~A[8] & ~A[9] & ~A[10] & ~A[11] & ~A[12] & ~A[13] & A[14];
O[15] = ~A[0] & ~A[1] & ~A[2] & ~A[3] & ~A[4] & ~A[5] & ~A[6] & ~A[7] & ~A[8] & ~A[9] & ~A[10] & ~A[11] & ~A[12] & ~A[13] & ~A[14] & A[15];
 
end
endmodule

//----------------------------------------------------------------------
// 4-16 decoder, input: 4 digit binary, output: one hot representation
// of the 4 digit binary
//----------------------------------------------------------------------
module Dec416(A, O);
input [3:0] A;
output [15:0] O;
reg [15:0] O;
 
always @(A,O) begin
 
O[0] = ~A[0] & ~A[1] & ~A[2] & ~A[3];
O[1] = A[0] & ~A[1] & ~A[2] & ~A[3];
O[2] = ~A[0] & A[1] & ~A[2] & ~A[3];
O[3] = A[0] & A[1] & ~A[2] & ~A[3];
O[4] = ~A[0] & ~A[1] & A[2] & ~A[3];
O[5] = A[0] & ~A[1] & A[2] & ~A[3];
O[6] = ~A[0] & A[1] & A[2] & ~A[3];
O[7] = A[0] & A[1] & A[2] & ~A[3];
O[8] = ~A[0] & ~A[1] & ~A[2] & A[3];
O[9] = A[0] & ~A[1] & ~A[2] & A[3];
O[10] = ~A[0] & A[1] & ~A[2] & A[3];
O[11] = A[0] & A[1] & ~A[2] & A[3];
O[12] = ~A[0] & ~A[1] & A[2] & A[3];
O[13] = A[0] & ~A[1] & A[2] & A[3];
O[14] = ~A[0] & A[1] & A[2] & A[3];
O[15] = A[0] & A[1] & A[2] & A[3];
 
end
endmodule

//----------------------------------------------------------------------
// 16-4 encoder, input:16 bits one hot, output: 4 bits binary represent
// the position of the 16 bits one hot where the 1 is.
//----------------------------------------------------------------------
module Enc164(A, O);
input [15:0] A;
output [3:0] O;
reg [3:0] O;
 
always @ (A,O) begin
 
O[3] = A[8] + A[9] + A[10] + A[11] + A[12] + A[13] + A[14] + A[15];
O[2] = A[4] + A[5] + A[6] + A[7] + A[12] + A[13] + A[14] + A[15];
O[1] = A[2] + A[3] + A[6] + A[7] + A[10] + A[11] + A[14] + A[15];
O[0] = A[1] + A[3] + A[5] + A[7] + A[9] + A[11] + A[13] + A[15];
 
end
endmodule




//----------------------------------------------------------------------
//----------------------------------------------------------------------
//----------------------------------------------------------------------
module testbench();

// add more reg for input if needed
reg [16:0] i; 
reg [15:0] in16;
reg [3:0] in4;
reg a;
reg b;
reg c;
reg d;

// add more wires for output here
wire[15:0]  f1;
wire f2;
wire f3;
wire f4;
wire f5;
wire[15:0] f6;
wire[15:0] f7;
wire[15:0] f8;
wire[3:0] f9;

// zap functions here, each function should have a separate wire
NOT16 zap(in16,f1);
AND16 zap1(in16,f2);
OR16  zap2(in16,f3); 
NOR16  zap3(in16,f4);
NAND16 zap4(in16,f5);
LArb16 zap5(in16,f6);
RArb16 zap6(in16,f7);
Dec416 zap7(in4,f8);
Enc164 zap8(in16,f9);

  initial begin

    //A for loop, with register i being the loop control variable.
    $display ("\n16 NOT Gate");
	for (i = 0; i < 16; i = i + 1) 
	begin
    in16 = i;
		#7
		$display ("|%b|%b|",in16,f1);
	end

    //A for loop, with register i being the loop control variable.
    $display ("\n16 AND Gate");
	for (i = 0; i < 16; i = i + 1) 
	begin
    in16 = i;
		#7
		$display ("|%b|%b|",in16,f2);
	end

    //A for loop, with register i being the loop control variable.
    $display ("\n16 OR Gate");
	for (i = 0; i < 16; i = i + 1) 
	begin
    in16 = i;
		#7
		$display ("|%b|%b|",in16,f3);
	end


    //A for loop, with register i being the loop control variable.
    $display ("\n16 NOR Gate");
	for (i = 0; i < 16; i = i + 1) 
	begin
    in16 = i;
		#7
		$display ("|%b|%b|",in16,f4);
	end

    //A for loop, with register i being the loop control variable.
    $display ("\n16 NAND Gate");
	for (i = 0; i < 16; i = i + 1) 
	begin
    in16 = i;
		#7
		$display ("|%b|%b|",in16,f5);
	end

    //A for loop, with register i being the loop control variable.
    $display ("\n16 Left Arbiter ");
	for (i = 0; i < 16; i = i + 1) 
	begin
    in16 = i;
		#7
		$display ("|%b|%b|",in16,f6);
	end

    //A for loop, with register i being the loop control variable.
    $display ("\n16 Right Arbiter ");
	for (i = 0; i < 16; i = i + 1) 
	begin
    in16 = i;
		#7
		$display ("|%b|%b|",in16,f7);
	end
    
    //A for loop, with register i being the loop control variable.
    $display ("\n4-16 Decoder ");
	for (i = 0; i < 16; i = i + 1) // this one should not change the number
	begin
    in4 = i;
		#7
		$display ("|%b|%b|",in4,f8);
	end

    //A for loop, with register i being the loop control variable.
    $display ("\n4-16 Decoder ");
	for (i = 1; i < 65536; i = i * 2) // this one should not change the number
	begin
    in16 = i;
		#7
		$display ("|%b|%b|",in16,f9);
	end
 

	#10 
	$finish;
  end  
  
endmodule 

