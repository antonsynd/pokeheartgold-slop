#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EC078
	.public ov01_021EC0C0
	.public ov01_021EC114

	.text

	.text
	thumb_func_start ov01_021EC078
ov01_021EC078: ; 0x021EC078
	push {r3, lr}
	sub sp, #0x18
	add r2, r0, #0
	ldr r0, _021EC0BC ; =0x0000FFFF
	cmp r1, r0
	beq _021EC0B8
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r3, [r2, #4]
	mov r2, #0xc
	mul r2, r1
	ldr r1, [r3, r2]
	mov r2, #4
	bl NARC_AllocAndReadWholeMember
	add r1, sp, #0x14
	str r0, [sp]
	bl NNS_G2dGetUnpackedPaletteData
	ldr r1, [sp, #0x14]
	mov r0, #2
	ldr r1, [r1, #0xc]
	mov r2, #0x20
	mov r3, #0xc0
	bl BG_LoadPlttData
	ldr r0, [sp]
	bl Heap_Free
	mov r0, #0
	str r0, [sp]
_021EC0B8:
	add sp, #0x18
	pop {r3, pc}
	.balign 4, 0
_021EC0BC: .word 0x0000FFFF
	thumb_func_end ov01_021EC078

	thumb_func_start ov01_021EC0C0
ov01_021EC0C0: ; 0x021EC0C0
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _021EC110 ; =0x0000FFFF
	cmp r1, r0
	beq _021EC10C
	mov r2, #0xc
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r3, [r4, #4]
	mul r2, r1
	add r1, r3, r2
	ldr r0, [r4, r0]
	ldr r1, [r1, #4]
	mov r2, #4
	bl NARC_AllocAndReadWholeMember
	add r1, sp, #0x14
	str r0, [sp, #8]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r3, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r3, #0x14]
	ldr r0, [r0, #8]
	ldr r3, [r3, #0x10]
	mov r1, #2
	bl BG_LoadCharTilesData
	ldr r0, [sp, #8]
	bl Heap_Free
	mov r0, #0
	str r0, [sp, #8]
_021EC10C:
	add sp, #0x1c
	pop {r3, r4, pc}
	.balign 4, 0
_021EC110: .word 0x0000FFFF
	thumb_func_end ov01_021EC0C0

	thumb_func_start ov01_021EC114
ov01_021EC114: ; 0x021EC114
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	ldr r0, _021EC1B8 ; =0x0000FFFF
	add r5, r1, #0
	cmp r5, r0
	beq _021EC1B4
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r1, #0xc
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r2, [r4, #4]
	mul r1, r5
	add r1, r2, r1
	ldr r0, [r4, r0]
	ldr r1, [r1, #8]
	mov r2, #4
	bl NARC_AllocAndReadWholeMember
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _021EC14A
	bl GF_AssertFail
_021EC14A:
	ldr r0, [sp, #0x14]
	add r1, sp, #0x18
	bl NNS_G2dGetUnpackedScreenData
	ldr r3, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	add r2, r3, #0
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	ldr r0, [r0, #8]
	mov r1, #2
	add r2, #0xc
	bl BgCopyOrUncompressTilemapBufferRangeToVram
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r3, [sp, #0x18]
	ldr r0, [r4, r0]
	add r2, r3, #0
	ldr r0, [r0, #8]
	ldr r3, [r3, #8]
	mov r1, #2
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	add r0, #0xfe
	ldr r0, [r4, r0]
	mov r2, #0
	ldr r0, [r0, #8]
	mov r1, #2
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	ldr r0, [r0, #8]
	bl BgCommitTilemapBufferToVram
	ldr r0, [sp, #0x14]
	bl Heap_Free
	mov r0, #0
	str r0, [sp, #0x14]
_021EC1B4:
	add sp, #0x24
	pop {r4, r5, pc}
	.balign 4, 0
_021EC1B8: .word 0x0000FFFF
	thumb_func_end ov01_021EC114

