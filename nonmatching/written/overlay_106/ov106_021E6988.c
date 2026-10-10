#include "global.h"

/* script command handlers take (work, script); see the .arities.json beside this file */
typedef s32 (*UnkFunc_ov106_021E6988)(u8 *work, s32 *script);

extern const UnkFunc_ov106_021E6988 ov106_021E7044[];
extern const s32 ov106_021E7090[];

BOOL ov106_021E6988(u8 *work) {
    u8 *data = *(u8 **)(work + 0x418);
    s32 **pScript = (s32 **)(data + 0x14);

    while (TRUE) {
        s32 *script = *pScript;
        s32 cmd = *script;
        s32 ret;

        if (cmd == 0x13) {
            return TRUE;
        }
        ret = ov106_021E7044[cmd](work, script);
        if (ret == 0) {
            break;
        }
        if (ret == 1) {
            *pScript = *pScript + ov106_021E7090[**pScript];
        } else if (ret == 2) {
            script = *pScript;
            *pScript = script + ov106_021E7090[*script];
            break;
        }
    }
    return *(s32 *)(work + 0x40C);
}
