#include <stdio.h>
#define SZ 12

int i = 0;

int
main()
  {
  int ip[] = {1,2,7,0,0,0,0,0,0,0,0,1};

  for( ;i < SZ; i++)
    {
    printf("%d", ip[i]);
    }
  
  printf("\n");
  return(0);
  }
