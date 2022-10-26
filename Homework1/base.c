#include <stdio.h>

void num_primo(int contador);

int
main()
  {
  int x, contador = 0;
  register int i = 1;
  
  printf("Entre com um numero: ");
  scanf("%d", &x);

  for(i; i <= x; i++)
    {
    if(x % i == 0)
      {
      contador++;
      }
    }
  
  num_primo(contador);

  return(0);
  }

void
num_primo(int contador)
  {
  if(contador == 2)
    {
    printf("Primo\n");
    }
  else
    {
    printf("Nao primo\n");
    }
  }
