//**************************************************
// Parameterized Multiplexor
//
// Defaults as an 8 to 1 multiplexor, but can be
// anything.
// 
// Inputs: The select bits are determined by the
// ceiling of the base 2 log function of the value
// of the "ways" parameter. The width of the input
// bus to the multiplexor is determined by the
// "ways" parameter.
//
// 3 select bits, 8 data inputs
// Outputs: out
//**************************************************

module Multiplexor( select, in, out);
parameter ways = 8;

input[2:0] select;
input[ways - 1:0] in;
output out;

assign out = in[select];

endmodule
