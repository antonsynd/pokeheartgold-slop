#include "global.h"

void ov74_0223144C(u16 state);
void ov74_02231070(int a0);
BOOL ov74_0222FE78(void);
void ov74_0223110C(u16 aid);
void ov74_02231124(int a0);
void ov74_02231130(int a0);
BOOL ov74_02231670(void);
BOOL ov74_02231118(void);
void ov74_02231448(u16 errcode);
void ov74_0222FE4C(void);

void ov74_022305E4(WMStartConnectCallback *cb) {
    ov74_0223144C(cb->state);
    if (cb->errcode == WM_ERRCODE_SUCCESS) {
        ov74_02231070(9);
        if (ov74_0222FE78()) {
            return;
        }
        switch (cb->state) {
        case WM_STATECODE_CONNECT_START:
        case WM_STATECODE_BEACON_LOST:
            break;
        case WM_STATECODE_CONNECTED:
            ov74_0223110C(cb->aid);
            ov74_02231124(1);
            ov74_02231130(0);
            if (!ov74_02231670()) {
                ov74_0222FE4C();
            }
            break;
        case WM_STATECODE_DISCONNECTED:
            if (ov74_02231118()) {
                ov74_02231130(1);
            }
            ov74_02231124(0);
            break;
        default:
            ov74_02231448(cb->errcode);
            ov74_0222FE4C();
            break;
        }
    } else {
        ov74_02231448(cb->errcode);
        ov74_0222FE4C();
    }
}
