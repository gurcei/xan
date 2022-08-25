#include <stdio.h>

int swap_nibble(int in)
{
  int lo, hi;
  lo = in & 0x0f;
  hi = in >> 4;
  return (lo << 4) + hi;
}

void main(void)
{
  char s[256];
  FILE* f=fopen("xan.pal", "rt");
  FILE* fc=fopen("muse.dat", "ab");

  // ignore first 3 lines
  fgets(s, 255, f);
  printf(s);
  fgets(s, 255, f);
  printf(s);
  fgets(s, 255, f);
  printf(s);

  int r, g, b;
  for (int k = 0; k < 32; k++) {
    fscanf(f, "%d %d %d", &r, &g, &b);
    r = swap_nibble(r);
    g = swap_nibble(g);
    b = swap_nibble(b);
    printf("r=%d, g=%d, b=%d\n", r, g, b);

    fputc(r, fc);
    fputc(g, fc);
    fputc(b, fc);
  }

  fclose(f);
  fclose(fc);
}
