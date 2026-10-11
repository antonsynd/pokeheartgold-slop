#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3614
	.extern ov14_021F8098

    .text

	.text
	thumb_func_start ov14_021F3614
ov14_021F3614: ; 0x021F3614
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r3, _021F36D4 ; =ov14_021F8098
	add r7, r2, #0
	add r2, sp, #0x14
	add r6, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x32
	mov r0, #0xa
	lsl r1, r1, #6
	bl Heap_AllocAtEnd
	add r5, r0, #0
	ldr r1, [r4]
	add r0, sp, #0x24
	mov r2, #2
	mov r3, #0
	bl GetBoxmonSpriteCharAndPlttNarcIds
	ldrb r0, [r4, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F3658
	ldrh r1, [r4, #4]
	ldr r0, _021F36D8 ; =0x00000147
	cmp r1, r0
	bne _021F3658
	add r0, #0xa7
	b _021F365A
_021F3658:
	ldrh r0, [r4, #4]
_021F365A:
	str r5, [sp]
	ldr r1, [r4, #8]
	mov r2, #0xa
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	add r1, sp, #0x14
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x12]
	add r3, sp, #0x14
	bl sub_02014510
	mov r0, #0xbf
	lsl r0, r0, #2
	add r4, r6, r0
	lsl r6, r7, #2
	ldr r0, [r4, r6]
	ldr r0, [r0]
	bl Sprite_GetImageProxy
	mov r1, #2
	bl NNS_G2dGetImageLocation
	mov r1, #0x32
	add r7, r0, #0
	add r0, r5, #0
	lsl r1, r1, #6
	bl DC_FlushRange
	mov r2, #0x32
	add r0, r5, #0
	add r1, r7, #0
	lsl r2, r2, #6
	bl GXS_LoadOBJ
	ldr r0, [r4, r6]
	ldr r0, [r0]
	bl Sprite_GetPaletteProxy
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r1, sp, #0x14
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x14]
	mov r2, #5
	bl GfGfxLoader_GXLoadPal
	add r0, r5, #0
	bl Heap_Free
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F36D4: .word ov14_021F8098
_021F36D8: .word 0x00000147
	thumb_func_end ov14_021F3614

