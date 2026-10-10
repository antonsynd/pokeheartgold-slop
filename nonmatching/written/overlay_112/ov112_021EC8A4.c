typedef unsigned char u8;
typedef unsigned int u32;

int ov112_021ECA88(void *work);
void *NewString_ReadMsgData(void *msgData, int msgId);
void ov112_021EA010(void *work, int windowIdx, void *string, int a3, u32 a4);
void String_Delete(void *string);
void FillWindowPixelBuffer(void *window, u8 fillValue);
void CopyWindowToVram(void *window);

void ov112_021EC8A4(u8 *work, int unused, int mode) {
    void *string;
    if (mode != 5 && ov112_021ECA88(work) != -1) {
        string = NewString_ReadMsgData(*(void **)(work + 0x1E44C), ov112_021ECA88(work) + 0x5B);
        ov112_021EA010(work, 0, string, 0, 0x10200);
        String_Delete(string);
        string = NewString_ReadMsgData(*(void **)(work + 0x1E44C), ov112_021ECA88(work) + 0x77);
        ov112_021EA010(work, 1, string, 0, 0x10200);
        String_Delete(string);
        return;
    }
    string = NewString_ReadMsgData(*(void **)(work + 0x1E44C), 0x76);
    ov112_021EA010(work, 0, string, 0, 0x10200);
    String_Delete(string);
    FillWindowPixelBuffer(work + 0x1EBB8, 0);
    CopyWindowToVram(work + 0x1EBB8);
}
