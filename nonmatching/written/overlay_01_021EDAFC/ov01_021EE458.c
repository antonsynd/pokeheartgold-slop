typedef unsigned short u16;
typedef int s32;
typedef unsigned char u8;
typedef unsigned int u32;

s32 ListMenuGetTemplateField(void *list, int attr);
void ListMenuGetScrollAndRow(void *list, u16 *cursorPos_p, u16 *itemsAbove_p);

void ov01_021EE458(void *listMenu, u32 index, u8 onInit)
{
    u16 v2 = 0;
    u16 v3 = 0;
    char *v4 = (char *)ListMenuGetTemplateField(listMenu, 0x13);

    ListMenuGetScrollAndRow(listMenu, &v2, &v3);

    if (*(u16 **)(v4 + 0xa4) != 0 && *(u16 **)(v4 + 0xa8) != 0) {
        **(u16 **)(v4 + 0xa4) = v2;
        **(u16 **)(v4 + 0xa8) = v3;
    }
}
