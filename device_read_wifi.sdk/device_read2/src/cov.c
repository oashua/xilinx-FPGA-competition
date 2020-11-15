

/***************************** Include Files *********************************/

#include "xparameters.h"	/* SDK generated parameters */
#include "xqspips.h"		/* QSPI device driver */
#include "xil_printf.h"
#include "flash.h"
#define delta 0.0001


float sqrt(float x)
{
	float xhalf = 0.5f*x;
	int i = *(int*)&x;
	i = 0x5f3759df - (i >> 1);
	x = *(float*)&i;
	x = x*(1.5f - xhalf*x*x);
	return 1/x;
}

double cox(int x[],int y[],int n)
{
   double p;
   int i;
   double averx,avery,sumx=0,sumy=0;
   double sum=0;
   for(i=0;i<n;i++)
   {
      sumx+=x[i];
      sumy+=y[i];
   }
   averx=sumx/n;
   avery=sumy/n;
   for(i=0;i<n;i++)
     sum+=(x[i]-averx)*(y[i]-avery);
   p=sum/n;
   return p;
}


double corss(u16 *s1, u16 *s2,int n)
{
   double sum_s12 = 0.0;
   double sum_s1  = 0.0;
   double sum_s2  = 0.0;
   double sum_s1s1 = 0.0; //s1^2
   double sum_s2s2 = 0.0; //s2^2
   double pxy = 0.0;
   double temp1 = 0.0;
   double temp2 = 0.0;
   
	if( s1==NULL || s2==NULL || n<=0)
	return -10;
   
   for(int i=0;i<n;i++)
   {
//      printf("%f\t%f\n",s1[i]/1e4,s2[i]/1e4);
      sum_s12  += s1[i]*s2[i]/1e8;
      sum_s1   += s1[i]/1e4;
      sum_s2   += s2[i]/1e4;
      sum_s1s1 += s1[i]*s1[i]/1e8; 
      sum_s2s2 += s2[i]*s2[i]/1e8; 
   }
   
   temp1 = n*sum_s1s1-sum_s1*sum_s1;
   temp2 = n*sum_s2s2-sum_s2*sum_s2;
 
   if( (temp1>-delta && temp1<delta) || 
      (temp2>-delta && temp2<delta) ||
      (temp1*temp2<=0) )
   {
      return -10;  
   }       
   
   pxy = (n*sum_s12-sum_s1*sum_s2)/sqrt(temp1)/sqrt(temp2);
   
   return pxy;
}
//int main(void)
//{
//   int x[5]={1,2,3,4,5};
//   int y[5]={5,4,3,2,1};
//   double co;
//   cox(x,y,5,&co);
//   printf("\nx:\n");
//   output(x,5);
//   printf("\ny:\n");
//   output(y,5);
//   printf("\nThe cox of x and y is:%lf\n",co);
//}
