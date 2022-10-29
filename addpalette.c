#include <stdio.h>

int swap_nibble(int in)
{
  int lo, hi;
  lo = in & 0x0f;
  hi = in >> 4;
  return (lo << 4) + hi;
}

// arg1 = palette file
// arg2 = .dat file to add palette to
void main(int argc, char *argv[])
{
  if (argc != 3) {
    printf("Invalid count of arguments!\n");
    return;
  }

  char s[256];
  FILE* f=fopen(argv[1], "rt");
  FILE* fc=fopen(argv[2], "ab");

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
