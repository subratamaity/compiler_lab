
#include <stdio.h>



int main(int argc, char const *argv[])
{
	int i,j,k,l,ns,s;
	int v,skip;
	int  a[50];
	char c[50];
	printf("enter no of states\n");
	scanf("%d",&ns);
	for(i=0;i<ns;i++){
		// printf("enter the states \n",i+1);
		scanf("%d",&a[i]);
	}
	printf("enter no of symbols\n");
	scanf("%d",&s);
	scanf("%d",&skip);
	printf("enter the symbols");
	for(i=0;i<s;i++){
		scanf("%c",&c[i]);
	}
	int transition[50][50];
	// printf("enter states");
	// for(i=0;i<3;i++){
	// 	scanf("%d",&states[i]);
	// }
	// for (j = 0; j < 2 ; j++)
	// {
	// 	scanf("%d", &symbol[j]);
	// }
	for(k=0;k<ns;k++){
		for(l=0;l<s;l++){
			printf("enter state %d and symbols %c ",a[k],c[l]);
			scanf("%d",&v);
			transition[k][l]=v;
		}
	}
	// printf("%c %c %c \n ",symbol[0],symbol[1],symbol[2]);
	for(k=0;k<ns;k++){
		for(l=0;l<s;l++){
			printf("s[%d] \n",transition[k][l]);
		}
	printf("\n");
	}
	return 0;		
}


