`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/08 23:03:56
// Design Name: 
// Module Name: clkdiv
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


module clkdiv (	
input clk,
input [31:0]div,
output clkout
);
	reg 	[31:0]	cnt_p,cnt_n;     //cnt_pΪ�����ش���ʱ�ļ�������cnt_nΪ�½��ش���ʱ�ļ�����
	reg			clk_p,clk_n;     //clk_pΪ�����ش���ʱ��Ƶʱ�ӣ�clk_nΪ�½��ش���ʱ��Ƶʱ��
 
	//�����ش���ʱ�������Ŀ���
	always @ (posedge clk)         //posedge��negedge��verilog��ʾ�ź������غ��½���
                                  //��clk���������ٻ���rst_n��͵�ʱ��ִ��һ��always������
	begin
		if (cnt_p==(div-1))
			cnt_p<=0;
		else cnt_p<=cnt_p+1'd1;             //������һֱ��������������N-1��ʱ�����㣬����һ��ģN�ļ�����
	end
 
         //�����ش����ķ�Ƶʱ�����,���NΪ�����õ���ʱ��ռ�ձȲ���50%�����NΪż���õ���ʱ��ռ�ձ�Ϊ50%
   always @ (posedge clk)
	begin
		if (cnt_p<(div>>1))          //div>>1��ʾ����һλ���൱�ڳ���2ȥ������
			clk_p<=0;
		else 
			clk_p<=1;               //�õ��ķ�Ƶʱ�������ڱȸ����ڶ�һ��clkʱ��
	end
 
        //�½��ش���ʱ�������Ŀ���        	
	always @ (negedge clk)
	begin
		if (cnt_n==(div-1))
			cnt_n<=0;
		else cnt_n<=cnt_n+1'd1;
	end
 
        //�½��ش����ķ�Ƶʱ���������clk_p�����ʱ��
	always @ (negedge clk)
	begin
		if (cnt_n<(div>>1))  
			clk_n<=0;
		else 
			clk_n<=1;                //�õ��ķ�Ƶʱ�������ڱȸ����ڶ�һ��clkʱ��
	end
 
   assign clkout = (div==32'd1)?clk:(div[0])?(clk_p&clk_n):clk_p;   //�����жϱ���ʽ
                                                                    //��N=1ʱ��ֱ�����clk
                                                                    //��NΪż��Ҳ����N�����λΪ0��N��0��=0�����clk_p
                                                                    //��NΪ����Ҳ����N���λΪ1��N��0��=1�����clk_p&clk_n�������ڶ�����������
endmodule