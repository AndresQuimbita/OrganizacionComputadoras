void abs_diff(int *a, int *b)
{
    int c = a - b;

    if (a - b < -1)
    {
        return c * -1;
    }
    return c;
}