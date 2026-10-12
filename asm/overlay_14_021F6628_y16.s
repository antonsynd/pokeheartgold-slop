#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F685C
	.public ov14_021F68C0
	.extern ov14_021F6698

    .text

	.text
	thumb_func_start ov14_021F685C
ov14_021F685C: ; 0x021F685C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r3, #0
	cmp r2, #6
	bhi _021F68B2
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F6872: ; jump table
	.short _021F6880 - _021F6872 - 2 ; case 0
	.short _021F6884 - _021F6872 - 2 ; case 1
	.short _021F68A0 - _021F6872 - 2 ; case 2
	.short _021F68A4 - _021F6872 - 2 ; case 3
	.short _021F68A8 - _021F6872 - 2 ; case 4
	.short _021F68AC - _021F6872 - 2 ; case 5
	.short _021F68B0 - _021F6872 - 2 ; case 6
_021F6880:
	mov r4, #0x12
	b _021F68B2
_021F6884:
	add r2, r5, #0
	add r2, #0x21
	ldrb r1, [r5, #0x1f]
	ldrb r2, [r2]
	mov r4, #0
	bl ov14_021E60C0
	add r2, r0, #0
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	ldr r0, [r0, #0x24]
	bl BufferBoxMonNickname
	b _021F68B2
_021F68A0:
	mov r4, #5
	b _021F68B2
_021F68A4:
	mov r4, #0x13
	b _021F68B2
_021F68A8:
	mov r4, #0xd
	b _021F68B2
_021F68AC:
	mov r4, #0x1d
	b _021F68B2
_021F68B0:
	mov r4, #0x1e
_021F68B2:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F6698
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021F685C

	thumb_func_start ov14_021F68C0
ov14_021F68C0: ; 0x021F68C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	cmp r1, #7
	bhi _021F6918
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F68D6: ; jump table
	.short _021F6918 - _021F68D6 - 2 ; case 0
	.short _021F6918 - _021F68D6 - 2 ; case 1
	.short _021F68E6 - _021F68D6 - 2 ; case 2
	.short _021F68F8 - _021F68D6 - 2 ; case 3
	.short _021F690A - _021F68D6 - 2 ; case 4
	.short _021F690E - _021F68D6 - 2 ; case 5
	.short _021F6912 - _021F68D6 - 2 ; case 6
	.short _021F6916 - _021F68D6 - 2 ; case 7
_021F68E6:
	ldr r3, [r5, #0x34]
	ldr r2, _021F6924 ; =0x000088C8
	ldr r0, [r3, #0x24]
	ldrh r2, [r3, r2]
	mov r1, #0
	mov r4, #0x1a
	bl BufferItemName
	b _021F6918
_021F68F8:
	ldr r3, [r5, #0x34]
	ldr r2, _021F6924 ; =0x000088C8
	ldr r0, [r3, #0x24]
	ldrh r2, [r3, r2]
	mov r1, #0
	mov r4, #0x1b
	bl BufferItemName
	b _021F6918
_021F690A:
	mov r4, #0x18
	b _021F6918
_021F690E:
	mov r4, #0x22
	b _021F6918
_021F6912:
	mov r4, #0xe
	b _021F6918
_021F6916:
	mov r4, #0x3b
_021F6918:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F6698
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F6924: .word 0x000088C8
	thumb_func_end ov14_021F68C0

