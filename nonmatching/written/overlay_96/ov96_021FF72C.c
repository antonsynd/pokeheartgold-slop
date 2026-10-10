typedef unsigned long long ulonglong;

long long _ll_mul(long long, long long);

void ov96_021FF72C(int *param_1, int *param_2, int *param_3)
{
    long long prod;
    long long t;

    param_3[0] = param_1[0] + param_2[0];
    prod = _ll_mul((long long)param_1[1], (long long)param_2[1]);
    t = prod + 0x800;
    if (((ulonglong)t >> 43) & 1) {
        param_3[1] = param_2[1];
    } else {
        param_3[1] = param_1[1] + param_2[1];
    }
}
