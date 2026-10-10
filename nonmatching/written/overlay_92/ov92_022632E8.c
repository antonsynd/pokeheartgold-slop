#include "global.h"

// Quaternion (q[0..3]) to a 4x4 matrix of f32, with the products carried in double the way the original does.
void ov92_022632E8(f32 *out, f32 *q) {
    f32 xx, yy, zz, xy, yz, zx, wx, wy, wz;

    xx = (f32)(2.0 * (double)(q[1] * q[1]));
    yy = (f32)(2.0 * (double)(q[2] * q[2]));
    zz = (f32)(2.0 * (double)(q[3] * q[3]));
    xy = (f32)(2.0 * (double)(q[1] * q[2]));
    yz = (f32)(2.0 * (double)(q[2] * q[3]));
    zx = (f32)(2.0 * (double)(q[3] * q[1]));
    wx = (f32)(2.0 * (double)(q[1] * q[0]));
    wy = (f32)(2.0 * (double)(q[2] * q[0]));
    wz = (f32)(2.0 * (double)(q[3] * q[0]));

    out[0] = (f32)(1.0 - (double)yy - (double)zz);
    out[1] = xy + wz;
    out[2] = zx - wy;
    out[3] = 0;
    out[4] = xy - wz;
    out[5] = (f32)(1.0 - (double)zz - (double)xx);
    out[6] = yz + wx;
    out[7] = 0;
    out[8] = zx + wy;
    out[9] = yz - wx;
    out[10] = (f32)(1.0 - (double)xx - (double)yy);
    out[11] = 0;
    out[12] = 0;
    out[13] = 0;
    out[14] = 0;
    out[15] = 1.0f;
}
