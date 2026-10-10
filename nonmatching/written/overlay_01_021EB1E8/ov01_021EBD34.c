typedef unsigned short u16;
typedef int BOOL;

typedef struct {
    u16 unk0;
    u16 unk2;
    unsigned int unk4;
    void *unk8;
    void *unkC;
} UnkStruct_ov01_021EBD34;

BOOL ov01_021EBEB8(UnkStruct_ov01_021EBD34 *e);
void ov01_021EB86C(void *mgr, u16 id, void *p);
void ov01_021EBFD0(void *mgr, UnkStruct_ov01_021EBD34 *e);

BOOL ov01_021EBD34(void *mgr, UnkStruct_ov01_021EBD34 *e)
{
    if (e->unk0 != 0xFFFF && e->unkC == 0) {
        if (!ov01_021EBEB8(e)) {
            return 0;
        }
        ov01_021EB86C(mgr, e->unk0, e->unkC);
        ov01_021EBFD0(mgr, e);
    }
    return 1;
}
