`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/08 22:52:48
// Design Name: 
// Module Name: ads8688
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ads8688
(
input wire rst_n,
input CLK_50M,
input SDO,
input [1:0] dataAddr,
output reg CS,
output wire SCLK,
output reg SDI,
output reg RST=1,
output reg [15:0] outRMS//rddat4,rddat3,outRMS,
//input [8:0]sinrom_addr,//start or terminate accumulation
//output reg [15:0] rddat0,rddat7,rddat5,rddat1,rddat4,rddat3,outRMS,
);

reg [15:0]rddat0,rddat1,rddat2;
reg [3:0] order=0;
reg [15:0] PRC=16'h0B00;     //program register configure
reg [15:0] ch_sel;		//channel select
reg [15:0] rddat;
reg [6:0] cnt;
assign SCLK=~CS&CLK_2M;

wire CLK_2M;
clkdiv clk_inst
(
	.clk(CLK_50M),
	.div(15'd25),
	.clkout(CLK_2M)
);
////////////msp430 read data//////////////////
always@(posedge CLK_50M or negedge rst_n)
begin
	if(!rst_n)
		outRMS <= 0;
	else
	begin
		case(dataAddr)				//dataAddr决定取出的V_RMS数据段     
		2'd0:outRMS<=(rddat0>16'd32768)?(rddat0-16'd32768):(16'd32768-rddat0);
		2'd1:outRMS<=(rddat1>16'd32768)?(rddat1-16'd32768):(16'd32768-rddat1);
		2'd2:outRMS<=(rddat2>16'd32768)?(rddat2-16'd32768):(16'd32768-rddat2);
		default: outRMS<=0;  
		endcase
	end
end

////////////////SPI/////////////////
always@(posedge CLK_2M or negedge rst_n)
begin
	if(!rst_n)
	begin
		cnt <= 1'd0;
		CS <= 1'd0;
		RST <= 0;
		order <= 4'd0;
	end
	else 
	begin
		RST<=1'd1;
		if(cnt<7'd50)
		begin
			CS<=1'd1;
			cnt<=cnt+1'd1;
		end
		else if(cnt>=7'd50&&cnt<=7'd82)
		begin
			CS<=0;
			cnt<=cnt+1'd1;
		end
		if(cnt>7'd82)
		begin
			if(order==4'd0)
			begin
				PRC<=16'h1900;					//channel 7 0 +-2.5*Vref
				order<=4'd1;
			end
			if(order==4'd1)
			begin
				PRC<=16'h1700;             //channel 6 0 +-2.5*Vref
				order<=4'd2;
			end
			if(order==4'd2)
			begin
				PRC<=16'h0D00;             //channel 1 0 +-2.5*Vref
				order<=4'd3;
			end
			if(order==4'd3)
			begin
				PRC<=16'h0B00;					//channel 0 0 +-2.5*Vref
				order<=4'd4;
			end
			if(order==4'd4)
			begin
				PRC<=16'h1300;             //channel 4 0 +-2.5*Vref
				order<=4'd5;
			end
			if(order==4'd5)
			begin
				PRC<=16'h1100;             //channel 3 0 +-2.5*Vref
				order<=4'd6;
			end
			else if(order==4'd6)
			begin
				ch_sel<=16'hD800;				//channel 6 
				order<=4'd7;
			end
			else if(order==4'd7)
			begin
				ch_sel<=16'hDC00;          //channel 7
				order<=4'd8;
				rddat2<=rddat;
			end
			else if(order==4'd8)
			begin 
				ch_sel<=16'hCC00;          //channel 3
				order<=4'd9;
				rddat0<=rddat;
			end
			else if(order==4'd9)
			begin
				ch_sel<=16'hD800;				//channel 6
				order<=4'd7;
				rddat1<=rddat;
			end
			CS<=1'd1;
			cnt<=7'd40;
		end
	end
end

always@(posedge CLK_2M or negedge rst_n) 
begin
	if(!rst_n)
	begin
		SDI<=0;
	end
	else if(order<=4'd6)
	begin
		case(cnt)
			7'd50:SDI <= PRC[15];
			7'd51:SDI <= PRC[14];
			7'd52:SDI <= PRC[13];
			7'd53:SDI <= PRC[12];
			7'd54:SDI <= PRC[11];
			7'd55:SDI <= PRC[10];
			7'd56:SDI <= PRC[9];
			7'd57:SDI <= PRC[8];
			7'd58:SDI <= PRC[7];
			7'd59:SDI <= PRC[6];
			7'd60:SDI <= PRC[5];
			7'd61:SDI <= PRC[4];
			7'd62:SDI <= PRC[3];
			7'd63:SDI <= PRC[2];
			7'd64:SDI <= PRC[1];
			7'd65:SDI <= PRC[0];
		endcase
	end
	else 
	begin
		case(cnt)
			7'd50:SDI <= ch_sel[15];
			7'd51:SDI <= ch_sel[14];
			7'd52:SDI <= ch_sel[13];
			7'd53:SDI <= ch_sel[12];
			7'd54:SDI <= ch_sel[11];
			7'd55:SDI <= ch_sel[10];
			7'd56:SDI <= ch_sel[9];
			7'd57:SDI <= ch_sel[8];
			7'd58:SDI <= ch_sel[7];
			7'd59:SDI <= ch_sel[6];
			7'd60:SDI <= ch_sel[5];
			7'd61:SDI <= ch_sel[4];
			7'd62:SDI <= ch_sel[3];
			7'd63:SDI <= ch_sel[2];
			7'd64:SDI <= ch_sel[1];
			7'd65:SDI <= ch_sel[0];
		endcase
	end
end

always@(negedge CLK_2M or negedge rst_n) 
begin
	if(!rst_n)
	begin
		rddat<=0;
	end
	else if(order>4'd6)
	begin
		case(cnt)
			7'd67:rddat[15]=SDO;
			7'd68:rddat[14]=SDO;
			7'd69:rddat[13]=SDO;
			7'd70:rddat[12]=SDO;
			7'd71:rddat[11]=SDO;
			7'd72:rddat[10]=SDO;
			7'd73:rddat[9]=SDO;
			7'd74:rddat[8]=SDO;
			7'd75:rddat[7]=SDO;
			7'd76:rddat[6]=SDO;
			7'd77:rddat[5]=SDO;
			7'd78:rddat[4]=SDO;
			7'd79:rddat[3]=SDO;
			7'd80:rddat[2]=SDO;
			7'd81:rddat[1]=SDO;
			7'd82:rddat[0]=SDO;
		endcase
	end	
end
endmodule
