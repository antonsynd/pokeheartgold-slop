#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221C46C
	.extern ov65_0221BFBC

	.text

	.text
	thumb_func_start ov65_0221C46C
ov65_0221C46C: ; 0x0221C46C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x20]
	mov r7, #0
	bl Party_GetCount
	cmp r0, #0
	bgt _0221C482
	b _0221C584
_0221C482:
	ldr r1, _0221C5C4 ; =0x000007CC
	ldr r0, [sp, #0x20]
	add r0, r0, r1
	str r0, [sp, #0x1c]
_0221C48A:
	ldr r0, [sp, #0xc]
	ldr r2, _0221C5C8 ; =0x000006A2
	add r0, r7, r0
	str r0, [sp, #0x10]
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	lsl r1, r0, #4
	ldr r0, [sp, #0x20]
	add r4, r0, r1
	ldr r1, [sp, #0x18]
	ldrb r2, [r4, r2]
	add r5, r0, r1
	ldr r0, _0221C5CC ; =0x0000069C
	ldr r1, _0221C5D0 ; =0x000006A1
	ldrh r0, [r4, r0]
	ldrb r1, [r4, r1]
	bl GetMonIconNaixEx
	add r1, r0, #0
	mov r0, #0x1a
	str r0, [sp]
	ldr r6, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r0, #0x14
	mov r2, #0
	add r3, r6, r3
	bl GfGfxLoader_GetCharData
	ldr r1, _0221C5D4 ; =0x0000079C
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x30
	ldr r0, [r5, r0]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r0, [sp, #0x10]
	ldr r1, _0221C5CC ; =0x0000069C
	str r0, [sp]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _0221C5C8 ; =0x000006A2
	str r0, [sp, #4]
	ldr r3, _0221C5D0 ; =0x000006A1
	ldr r0, _0221C5C4 ; =0x000007CC
	ldrh r1, [r4, r1]
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	ldr r0, [r5, r0]
	bl ov65_0221BFBC
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, _0221C5D8 ; =0x0000069E
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0221C51A
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	b _0221C542
_0221C51A:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #2
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r1, [sp, #0x14]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xeb
	ldr r1, [sp, #0x14]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, _0221C5D8 ; =0x0000069E
	ldrh r1, [r4, r1]
	add r1, r1, #2
	bl Sprite_SetAnimCtrlSeq
_0221C542:
	ldr r0, _0221C5DC ; =0x000006A8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0221C558
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	b _0221C578
_0221C558:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #2
	ldr r0, [sp, #0x20]
	add r4, r0, r1
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x15
	bl Sprite_SetAnimCtrlSeq
_0221C578:
	ldr r0, [sp, #8]
	add r7, r7, #1
	bl Party_GetCount
	cmp r7, r0
	blt _0221C48A
_0221C584:
	cmp r7, #6
	bge _0221C5C0
	ldr r0, [sp, #0xc]
	mov r6, #0xeb
	lsl r1, r0, #2
	ldr r0, [sp, #0x20]
	lsl r6, r6, #2
	add r1, r0, r1
	lsl r0, r7, #2
	add r5, r6, #0
	add r4, r1, r0
	add r5, #0x30
_0221C59C:
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r4, r6]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r4, r5]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #6
	blt _0221C59C
_0221C5C0:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0221C5C4: .word 0x000007CC
_0221C5C8: .word 0x000006A2
_0221C5CC: .word 0x0000069C
_0221C5D0: .word 0x000006A1
_0221C5D4: .word 0x0000079C
_0221C5D8: .word 0x0000069E
_0221C5DC: .word 0x000006A8
	thumb_func_end ov65_0221C46C

