int mystery2(int c)
{
  if (c >= 'A' && c <= 'Z')
     c += 'a' - 'A';

  return c;
}

