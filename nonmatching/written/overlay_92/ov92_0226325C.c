typedef signed int s32;

float ov92_02263218(void *self);
s32 FX_Sqrt(s32 x);

float ov92_0226325C(void *self)
{
    float v = ov92_02263218(self);
    float scaled;

    if (v > 0.0f) {
        scaled = ov92_02263218(self) * 4096.0f + 0.5f;
    } else {
        scaled = ov92_02263218(self) * 4096.0f - 0.5f;
    }
    return (float)FX_Sqrt((s32)scaled) / 4096.0f;
}
