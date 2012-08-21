int mystery(int c)
{
  unsigned int t;

  t = c - 'A';
  if (t <= 'Z' - 'A')
    c += 'a' - 'A';

  return c;
}

