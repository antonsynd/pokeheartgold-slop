// Frozen-header shims (split-header discipline; the shared headers stay as the
// already-matched callers were compiled against them):
//  - pokedex_internal.h declares ov18_021F7ED4 as void and ov18_021F891C as u16,
//    but the asm returns TRUE / an unmasked u32 (ov18_021F8950 divides it with
//    _u32_div_f).
//  - overlay_18.h (pulled in by pokedex_internal.h) declares ov18_021F95AC and
//    ov18_021F95F8 with OverlayManager *; overlay_18_021F8AB8.h has the real
//    PokedexEntryPopup * prototypes.
#define ov18_021F7ED4 ov18_021F7ED4_UpstreamDecl
#define ov18_021F891C ov18_021F891C_UpstreamDecl
#define ov18_021F95AC ov18_021F95AC_UpstreamDecl
#define ov18_021F95F8 ov18_021F95F8_UpstreamDecl

#include "global.h"

#include "application/pokedex/pokedex_internal.h"

#include "dex_mon_measures.h"
#include "filesystem.h"
#include "filesystem_files_def.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "pokedex.h"
#include "pokedex_util.h"
#include "sound_02004A44.h"
#include "sprite.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"

#undef ov18_021F7ED4
#undef ov18_021F891C
#undef ov18_021F95AC
#undef ov18_021F95F8

#include "overlay_18_021F8AB8.h"

BOOL ov18_021F7ED4(PokedexAppData *pokedexApp, u8 natDexFlag, u32 order, u32 letter, u32 type1, u32 type2, u32 heightMin, u32 heightMax, u32 weightMin, u32 weightMax, u32 areaMask, u32 bodyType);
u32 ov18_021F891C(PokedexAppData *pokedexApp, BOOL a1);

// ov18_021F8168 loads zukan_data member (fileIdx + dex_order_national).
#define DEX_SORT_FILE(member) ((member) - NARC_zukan_data_sort_order_dex_order_national)

#define DEX_SEARCH_SLIDER_MAX 152

static void *ov18_021F8168(u32 fileIdx, u32 *countOut);
static void ov18_021F8198(u16 *dst, u32 *count, Pokedex *pokedex, u16 *src, u32 srcCount);
static void ov18_021F81D8(PokedexAppData_UnkSub0878 *result, Pokedex *pokedex, u16 *src, u32 count);
static void ov18_021F822C(u32 order, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex);
static void ov18_021F82CC(u32 letter, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex);
static void ov18_021F831C(u32 type, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex);
static void ov18_021F8468(u32 bodyType, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex);
static void ov18_021F8584(PokedexAppData *pokedexApp, u32 areaMask, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex);
static void ov18_021F8640(PokedexAppData *pokedexApp, u16 min, u16 max, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex);
static void ov18_021F86D0(PokedexAppData *pokedexApp, u16 min, u16 max, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex);
static void ov18_021F8764(u16 *dst, u32 *count, u16 *lookup, u32 lookupCount, u16 *src, u32 srcCount, BOOL skipCaughtCheck, Pokedex *pokedex);
static u32 ov18_021F8970(u32 type);
static void ov18_021F89F8(SysTask *task, void *data);

// Runs the species list through the search filters and stores the result in
// pokedexApp->unk_0878. Each filter reads src/srcCount and appends to
// dst/count; the "ALL" choice of a filter is a straight copy.
BOOL ov18_021F7ED4(PokedexAppData *pokedexApp, u8 natDexFlag, u32 order, u32 letter, u32 type1, u32 type2, u32 heightMin, u32 heightMax, u32 weightMin, u32 weightMax, u32 areaMask, u32 bodyType) {
    u16 *buf1;
    u16 *buf2;
    u16 *list;
    u32 listCount;
    u32 count1;
    u32 count2;

    MI_CpuClear32(&pokedexApp->unk_0878, sizeof(PokedexAppData_UnkSub0878));

    buf1 = Heap_AllocAtEnd(HEAP_ID_POKEDEX_APP, NATIONAL_DEX_COUNT * sizeof(u16));
    GF_ASSERT(buf1 != NULL);
    memset(buf1, 0, NATIONAL_DEX_COUNT * sizeof(u16));
    count1 = 0;

    buf2 = Heap_AllocAtEnd(HEAP_ID_POKEDEX_APP, NATIONAL_DEX_COUNT * sizeof(u16));
    GF_ASSERT(buf2 != NULL);
    memset(buf2, 0, NATIONAL_DEX_COUNT * sizeof(u16));
    count2 = 0;

    if (natDexFlag == 0) {
        list = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_dex_order_johto), &listCount);
    } else {
        list = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_dex_order_national), &listCount);
    }

    ov18_021F8198(buf1, &count1, pokedexApp->args->pokedex, list, listCount);

    ov18_021F822C(order, buf2, &count2, buf1, count1, pokedexApp->args->pokedex);
    memcpy(buf1, buf2, count2 * sizeof(u16));
    count1 = count2;
    memset(buf2, 0, count2 * sizeof(u16));
    count2 = 0;

    ov18_021F82CC(letter, buf2, &count2, buf1, count1, pokedexApp->args->pokedex);
    if (count2 == 0) {
        goto end;
    }
    memcpy(buf1, buf2, count2 * sizeof(u16));
    count1 = count2;
    memset(buf2, 0, count2 * sizeof(u16));
    count2 = 0;

    ov18_021F831C(type1, buf2, &count2, buf1, count1, pokedexApp->args->pokedex);
    if (count2 == 0) {
        goto end;
    }
    memcpy(buf1, buf2, count2 * sizeof(u16));
    count1 = count2;
    memset(buf2, 0, count2 * sizeof(u16));
    count2 = 0;

    ov18_021F831C(type2, buf2, &count2, buf1, count1, pokedexApp->args->pokedex);
    if (count2 == 0) {
        goto end;
    }
    memcpy(buf1, buf2, count2 * sizeof(u16));
    count1 = count2;
    memset(buf2, 0, count2 * sizeof(u16));
    count2 = 0;

    ov18_021F8468(bodyType, buf2, &count2, buf1, count1, pokedexApp->args->pokedex);
    if (count2 == 0) {
        goto end;
    }
    memcpy(buf1, buf2, count2 * sizeof(u16));
    count1 = count2;
    memset(buf2, 0, count2 * sizeof(u16));
    count2 = 0;

    if (pokedexApp->unk_1860 == 0 && (areaMask & (1 << DEX_SEARCH_AREA_KANTO))) {
        ov18_021F8584(pokedexApp, (1 << DEX_SEARCH_AREA_JOHTO) | (1 << DEX_SEARCH_AREA_KANTO), buf2, &count2, buf1, count1, pokedexApp->args->pokedex);
        if (count2 != 0) {
            goto filterHeight;
        }
        goto end;
    } else {
        ov18_021F8584(pokedexApp, areaMask, buf2, &count2, buf1, count1, pokedexApp->args->pokedex);
        if (count2 == 0) {
            goto end;
        }
    }

filterHeight:
    memcpy(buf1, buf2, count2 * sizeof(u16));
    count1 = count2;
    memset(buf2, 0, count2 * sizeof(u16));
    count2 = 0;

    ov18_021F8640(pokedexApp, heightMin, heightMax, buf2, &count2, buf1, count1, pokedexApp->args->pokedex);
    memcpy(buf1, buf2, count2 * sizeof(u16));
    count1 = count2;
    memset(buf2, 0, count2 * sizeof(u16));
    count2 = 0;

    ov18_021F86D0(pokedexApp, weightMin, weightMax, buf2, &count2, buf1, count1, pokedexApp->args->pokedex);

    ov18_021F81D8(&pokedexApp->unk_0878, pokedexApp->args->pokedex, buf2, count2);

end:
    Heap_Free(list);
    Heap_Free(buf2);
    Heap_Free(buf1);
    return TRUE;
}

static void *ov18_021F8168(u32 fileIdx, u32 *countOut) {
    u32 size;
    void *ret;

    GF_ASSERT(fileIdx < 82);
    ret = GfGfxLoader_LoadFromNarc_GetSizeOut(GetPokedexDataNarcID(), fileIdx + NARC_zukan_data_sort_order_dex_order_national, FALSE, HEAP_ID_POKEDEX_APP, FALSE, &size);
    *countOut = size / sizeof(u16);
    return ret;
}

static void ov18_021F8198(u16 *dst, u32 *count, Pokedex *pokedex, u16 *src, u32 srcCount) {
    u32 i;

    *count = 0;
    for (i = 0; i < srcCount; i++) {
        if (Pokedex_CheckMonSeenFlag(pokedex, src[i])) {
            dst[*count] = src[i];
            (*count)++;
        }
    }
}

static void ov18_021F81D8(PokedexAppData_UnkSub0878 *result, Pokedex *pokedex, u16 *src, u32 count) {
    u32 i;

    result->unk_7B4 = count;
    result->unk_7B6 = 0;
    for (i = 0; i < count; i++) {
        result->unk_000[i][0] = src[i];
        if (Pokedex_CheckMonCaughtFlag(pokedex, src[i])) {
            result->unk_000[i][1] = 2;
            result->unk_7B6++;
        } else {
            result->unk_000[i][1] = 1;
        }
    }
}

// order: 0 = numerical, 1 = A to Z, 2 = heaviest, 3 = lightest, 4 = tallest, 5 = shortest
static void ov18_021F822C(u32 order, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex) {
    u16 *fileList;
    u32 fileCount;
    BOOL skipCaughtCheck = FALSE;

    switch (order) {
    case 0:
        memcpy(dst, src, srcCount * sizeof(u16));
        *count = srcCount;
        return;
    case 1:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_dex_order_alphabetical), &fileCount);
        skipCaughtCheck = TRUE;
        break;
    case 2:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_dex_order_heaviest), &fileCount);
        break;
    case 3:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_dex_order_lightest), &fileCount);
        break;
    case 4:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_dex_order_tallest), &fileCount);
        break;
    case 5:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_dex_order_shortest), &fileCount);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    ov18_021F8764(dst, count, src, srcCount, fileList, fileCount, skipCaughtCheck, pokedex);
    Heap_Free(fileList);
}

static void ov18_021F82CC(u32 letter, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex) {
    u16 *fileList;
    u32 fileCount;

    if (letter == DEX_SEARCH_LETTERS_ALL) {
        memcpy(dst, src, srcCount * sizeof(u16));
        *count = srcCount;
        return;
    }

    fileList = ov18_021F8168(letter + DEX_SORT_FILE(NARC_zukan_data_sort_order_letters_a), &fileCount);
    ov18_021F8764(dst, count, fileList, fileCount, src, srcCount, TRUE, pokedex);
    Heap_Free(fileList);
}

// MWCC colours dst/src/fileList as r6/r5/r7 for this C (the same shape matches
// ov18_021F8468); retail has r7/r6/r5 with srcCount cached in r5 in the ALL
// case. No source variant found that flips the colouring, so the asm is kept.
#ifdef NONMATCHING
static void ov18_021F831C(u32 type, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex) {
    u16 *fileList;
    u32 fileCount;

    switch (ov18_021F8970(type)) {
    case DEX_SEARCH_TYPE_ALL:
        memcpy(dst, src, srcCount * sizeof(u16));
        *count = srcCount;
        return;
    case DEX_SEARCH_TYPE_NORMAL:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_normal), &fileCount);
        break;
    case DEX_SEARCH_TYPE_FIGHTING:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_fighting), &fileCount);
        break;
    case DEX_SEARCH_TYPE_FLYING:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_flying), &fileCount);
        break;
    case DEX_SEARCH_TYPE_POISON:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_poison), &fileCount);
        break;
    case DEX_SEARCH_TYPE_GROUND:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_ground), &fileCount);
        break;
    case DEX_SEARCH_TYPE_ROCK:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_rock), &fileCount);
        break;
    case DEX_SEARCH_TYPE_BUG:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_bug), &fileCount);
        break;
    case DEX_SEARCH_TYPE_GHOST:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_ghost), &fileCount);
        break;
    case DEX_SEARCH_TYPE_STEEL:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_steel), &fileCount);
        break;
    case DEX_SEARCH_TYPE_FIRE:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_fire), &fileCount);
        break;
    case DEX_SEARCH_TYPE_WATER:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_water), &fileCount);
        break;
    case DEX_SEARCH_TYPE_GRASS:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_grass), &fileCount);
        break;
    case DEX_SEARCH_TYPE_ELECTRIC:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_electric), &fileCount);
        break;
    case DEX_SEARCH_TYPE_PSYCHIC:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_psychic), &fileCount);
        break;
    case DEX_SEARCH_TYPE_ICE:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_ice), &fileCount);
        break;
    case DEX_SEARCH_TYPE_DRAGON:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_dragon), &fileCount);
        break;
    case DEX_SEARCH_TYPE_DARK:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_types_dark), &fileCount);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    ov18_021F8764(dst, count, fileList, fileCount, src, srcCount, FALSE, pokedex);
    Heap_Free(fileList);
}
#else
// clang-format off
static asm void ov18_021F831C(u32 type, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    add r7, r1, #0
    add r4, r2, #0
    add r6, r3, #0
    bl ov18_021F8970
    cmp r0, #0x11
    bls _021F8330
    b _021F843E
_021F8330:
    add r0, r0, r0
    add r0, pc
    ldrh r0, [r0, #6]
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    add pc, r0
    ov18_021F833C:
    lsl r4, r6, #0
    lsl r0, r0, #1
    lsl r4, r1, #1
    lsl r0, r3, #1
    lsl r4, r4, #1
    lsl r0, r6, #1
    lsl r4, r7, #1
    lsl r0, r1, #2
    lsl r4, r2, #2
    lsl r0, r4, #2
    lsl r4, r5, #2
    lsl r0, r7, #2
    lsl r4, r0, #3
    lsl r0, r2, #3
    lsl r4, r3, #3
    lsl r0, r5, #3
    lsl r4, r6, #3
    lsl r2, r4, #0
    ov18_021F8360:
    ldr r5, [sp, #0x28]
    add r0, r7, #0
    add r1, r6, #0
    lsl r2, r5, #1
    bl memcpy
    add sp, #0x14
    str r5, [r4, #0]
    pop {r4, r5, r6, r7, pc}
    ov18_021F8372:
    mov r0, #0x33
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F837E:
    mov r0, #0x34
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F838A:
    mov r0, #0x35
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F8396:
    mov r0, #0x36
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F83A2:
    mov r0, #0x37
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F83AE:
    mov r0, #0x38
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F83BA:
    mov r0, #0x39
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F83C6:
    mov r0, #0x3a
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F83D2:
    mov r0, #0x3b
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F83DE:
    mov r0, #0x3c
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F83EA:
    mov r0, #0x3d
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F83F6:
    mov r0, #0x3e
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F8402:
    mov r0, #0x3f
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F840E:
    mov r0, #0x40
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F841A:
    mov r0, #0x41
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F8426:
    mov r0, #0x42
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
    ov18_021F8432:
    mov r0, #0x43
    add r1, sp, #0x10
    bl ov18_021F8168
    add r5, r0, #0
    b _021F8442
_021F843E:
    bl GF_AssertFail
_021F8442:
    ldr r0, [sp, #0x28]
    str r6, [sp, #0]
    str r0, [sp, #4]
    mov r0, #0
    str r0, [sp, #8]
    ldr r0, [sp, #0x2c]
    add r1, r4, #0
    str r0, [sp, #0xc]
    ldr r3, [sp, #0x10]
    add r0, r7, #0
    add r2, r5, #0
    bl ov18_021F8764
    add r0, r5, #0
    bl Heap_Free
    add sp, #0x14
    pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif // NONMATCHING

// bodyType is the search menu's display index, not a DEX_SEARCH_BODYTYPE_* value.
static void ov18_021F8468(u32 bodyType, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex) {
    u16 *fileList;
    u32 fileCount;

    switch (bodyType) {
    case DEX_SEARCH_BODYTYPE_ALL:
        memcpy(dst, src, srcCount * sizeof(u16));
        *count = srcCount;
        return;
    case 7:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_quadruped), &fileCount);
        break;
    case 13:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_bipedal_tailless), &fileCount);
        break;
    case 11:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_bipedal_tail), &fileCount);
        break;
    case 5:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_serpentine), &fileCount);
        break;
    case 4:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_multiwing), &fileCount);
        break;
    case 12:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_biwing), &fileCount);
        break;
    case 9:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_insectoid), &fileCount);
        break;
    case 6:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_head_torso), &fileCount);
        break;
    case 1:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_head_arms), &fileCount);
        break;
    case 2:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_head_legs), &fileCount);
        break;
    case 3:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_tentacles), &fileCount);
        break;
    case 10:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_fins), &fileCount);
        break;
    case 0:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_head_only), &fileCount);
        break;
    case 8:
        fileList = ov18_021F8168(DEX_SORT_FILE(NARC_zukan_data_sort_order_body_style_multibody), &fileCount);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    ov18_021F8764(dst, count, fileList, fileCount, src, srcCount, TRUE, pokedex);
    Heap_Free(fileList);
}

static void ov18_021F8584(PokedexAppData *pokedexApp, u32 areaMask, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex) {
    if (areaMask & (1 << DEX_SEARCH_AREA_ALL)) {
        memcpy(dst, src, srcCount * sizeof(u16));
        *count = srcCount;
        return;
    }

    if (areaMask == ((1 << DEX_SEARCH_AREA_JOHTO) | (1 << DEX_SEARCH_AREA_KANTO))) {
        u32 i;

        for (i = 0; i < srcCount; i++) {
            if ((areaMask & pokedexApp->unk_1854[src[i]]) && !(pokedexApp->unk_1854[src[i]] & (1 << DEX_SEARCH_AREA_UNKNOWN)) && Pokedex_CheckMonSeenFlag(pokedex, src[i])) {
                dst[*count] = src[i];
                (*count)++;
            }
        }
    } else {
        u32 i;

        for (i = 0; i < srcCount; i++) {
            if ((pokedexApp->unk_1854[src[i]] & areaMask) && Pokedex_CheckMonSeenFlag(pokedex, src[i])) {
                dst[*count] = src[i];
                (*count)++;
            }
        }
    }
}

static void ov18_021F8640(PokedexAppData *pokedexApp, u16 min, u16 max, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex) {
    u32 i;

    if (min == 0 && max == DEX_SEARCH_SLIDER_MAX) {
        memcpy(dst, src, srcCount * sizeof(u16));
        *count = srcCount;
        return;
    }

    for (i = 0; i < srcCount; i++) {
        s32 height = ((s32 *)pokedexApp->heights)[src[i]];
        if (height >= pokedexApp->unk_1850[min].unk_0 && height <= pokedexApp->unk_1850[max].unk_0 && Pokedex_CheckMonCaughtFlag(pokedex, src[i])) {
            dst[*count] = src[i];
            (*count)++;
        }
    }
}

static void ov18_021F86D0(PokedexAppData *pokedexApp, u16 min, u16 max, u16 *dst, u32 *count, u16 *src, u32 srcCount, Pokedex *pokedex) {
    u32 i;

    if (min == 0 && max == DEX_SEARCH_SLIDER_MAX) {
        memcpy(dst, src, srcCount * sizeof(u16));
        *count = srcCount;
        return;
    }

    for (i = 0; i < srcCount; i++) {
        s32 weight = ((s32 *)pokedexApp->weights)[src[i]];
        if (weight >= pokedexApp->unk_1850[min].unk_2 && weight <= pokedexApp->unk_1850[max].unk_2 && Pokedex_CheckMonCaughtFlag(pokedex, src[i])) {
            dst[*count] = src[i];
            (*count)++;
        }
    }
}

// Appends every entry of src that is also in lookup, in src order.
static void ov18_021F8764(u16 *dst, u32 *count, u16 *lookup, u32 lookupCount, u16 *src, u32 srcCount, BOOL skipCaughtCheck, Pokedex *pokedex) {
    u32 i;
    u32 j;

    *count = 0;
    i = 0;
    if (skipCaughtCheck == TRUE) {
        for (; i < srcCount; i++) {
            for (j = 0; j < lookupCount; j++) {
                if (src[i] == lookup[j]) {
                    dst[*count] = src[i];
                    (*count)++;
                    break;
                }
            }
        }
    } else {
        for (; i < srcCount; i++) {
            for (j = 0; j < lookupCount; j++) {
                if (src[i] == lookup[j] && Pokedex_CheckMonCaughtFlag(pokedex, src[i])) {
                    dst[*count] = src[i];
                    (*count)++;
                    break;
                }
            }
        }
    }
}

u32 ov18_021F8824(PokedexAppData *pokedexApp) {
    return pokedexApp->unk_185A + pokedexApp->unk_1859 * 15;
}

u16 ov18_021F8838(PokedexAppData *pokedexApp) {
    return pokedexApp->unk_1030[ov18_021F8824(pokedexApp)].unk_0;
}

// Returns species if it is in the search result, else the first result entry.
u32 ov18_021F8850(PokedexAppData_UnkSub0878 *result, u16 species) {
    u32 i;
    u16 first = 0;

    for (i = 0; i < result->unk_7B4; i++) {
        if (first == 0) {
            first = result->unk_000[i][0];
        }
        if (species == result->unk_000[i][0]) {
            return species;
        }
    }
    return first;
}

void ov18_021F8884(PokedexAppData *pokedexApp, int a1) {
    u32 i;

    MI_CpuClear32(pokedexApp->unk_1030, sizeof(pokedexApp->unk_1030));
    if (a1 == 1) {
        for (i = 0; i < pokedexApp->unk_0878.unk_7B4; i++) {
            u32 index = Pokedex_ConvertToCurrentDexNo(pokedexApp->unk_1858, pokedexApp->unk_0878.unk_000[i][0]) - 1;
            pokedexApp->unk_1030[index].unk_0 = pokedexApp->unk_0878.unk_000[i][0];
            pokedexApp->unk_1030[index].unk_2 = pokedexApp->unk_0878.unk_000[i][1];
        }
    } else {
        for (i = 0; i < pokedexApp->unk_0878.unk_7B4; i++) {
            pokedexApp->unk_1030[i + 1].unk_0 = pokedexApp->unk_0878.unk_000[i][0];
            pokedexApp->unk_1030[i + 1].unk_2 = pokedexApp->unk_0878.unk_000[i][1];
        }
    }
}

u32 ov18_021F891C(PokedexAppData *pokedexApp, BOOL a1) {
    if (a1 == 0) {
        return pokedexApp->unk_0878.unk_7B4;
    }
    return Pokedex_ConvertToCurrentDexNo(pokedexApp->unk_1858, pokedexApp->unk_0878.unk_000[pokedexApp->unk_0878.unk_7B4 - 1][0]);
}

u32 ov18_021F8950(PokedexAppData *pokedexApp, int a1) {
    if (a1 == 0) {
        return ov18_021F891C(pokedexApp, a1) / 15;
    }
    return (ov18_021F891C(pokedexApp, a1) - 1) / 15;
}

static u32 ov18_021F8970(u32 type) {
    return type;
}

// Battle-side "new Pokedex entry" popup (see overlay_18_021F8AB8.c). overlay_18.h
// types the object as OverlayManager * for battle_command.c; it is really a
// PokedexEntryPopup.
OverlayManager *ov18_021F8974(UnkStruct_50C *unkStruct) {
    PokedexEntryPopup *popup = Heap_Alloc(unkStruct->heapID, sizeof(PokedexEntryPopup));
    memset(popup, 0, sizeof(PokedexEntryPopup));
    memcpy(popup, unkStruct, sizeof(UnkStruct_50C));
    popup->gfxNarc = NARC_New(NARC_graphic_zukan_gra, popup->heapId);
    popup->unk_240 = 0;
    popup->unk_254 = 0;
    popup->task = SysTask_CreateOnMainQueue(ov18_021F89F8, popup, 0);
    return (OverlayManager *)popup;
}

s32 ov18_021F89C8(OverlayManager *man) {
    return ((PokedexEntryPopup *)man)->unk_254;
}

void ov18_021F89D0(OverlayManager *man) {
    PokedexEntryPopup *popup = (PokedexEntryPopup *)man;

    ov18_021F91F0(popup);
    ov18_021F8F10(popup);
    ov18_021F8BEC(popup);
    NARC_Delete(popup->gfxNarc);
    SysTask_Destroy(popup->task);
    Heap_Free(popup);
}

static void ov18_021F89F8(SysTask *task, void *data) {
    PokedexEntryPopup *popup = data;

    switch (popup->unk_240) {
    case 0:
        G2_BlendNone();
        ov18_021F8AB8(popup);
        ov18_021F8B10(popup);
        ov18_021F8CCC(popup);
        ov18_021F8FA0(popup);
        ov18_021F95CC(popup);
        ov18_021F8C0C(popup);
        popup->unk_240 = 1;
        break;
    case 1:
        if (ov18_021F8C48(popup) == TRUE) {
            popup->unk_240 = 2;
        }
        break;
    case 2:
        PlayCryEx(14, (u16)popup->species, 0x1ff, 0x1ff, 0x1ff, 0);
        popup->unk_240 = 3;
        break;
    case 3:
        if (!IsCryFinished()) {
            popup->unk_254 = 1;
            popup->unk_240 = 4;
        }
        break;
    case 4:
        break;
    }

    SpriteList_RenderAndAnimateSprites(popup->spriteList);
    ov18_021F8C68(popup);
}
