`timescale 1ns / 1ps

module ShiftReg(
    input clk,
	 input latch,
	 input reset,
	 input d0,
	 output reg [7:0] D_O
	 );

reg [7:0] D;
initial
	begin
	D=8'b0;
	D_O=8'b0;
	end
always @(posedge clk)
	begin
		if(reset==1)
			begin
			D <= 8'b0;
			D_O <= 8'b0;
			end
		else
			begin
						D[0]<=d0;
						D[1]<=D[0];
						D[2]<=D[1];
						D[3]<=D[2];
						D[4]<=D[3];
						D[5]<=D[4];
						D[6]<=D[5];
						D[7]<=D[6];
			end
	end
always @(posedge latch)
begin
D_O <= D ;
end


endmodule
