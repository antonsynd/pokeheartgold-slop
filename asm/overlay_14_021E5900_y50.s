#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7740

    .text

	.text
	thumb_func_start ov14_021E7740
ov14_021E7740: ; 0x021E7740
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r0, [sp]
	mov r0, #0x13
	mov r1, #0xf
	mov r2, #1
	add r3, sp, #0x30
	bl GfGfxLoader_GetScrnData
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x48]
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
_021E776E:
	ldr r0, [sp, #0x20]
	mov r1, #0x15
	mul r1, r0
	ldr r0, [sp, #0x24]
	lsl r1, r1, #1
	add r6, r0, r1
	ldr r0, [sp, #0x20]
	ldr r4, [sp, #0x14]
	add r0, r0, #1
	lsl r0, r0, #0x18
	mov r5, #0
	lsr r7, r0, #0x18
_021E7786:
	lsl r0, r5, #1
	ldrh r1, [r6, r0]
	ldr r0, _021E7800 ; =0x00000FFF
	lsl r3, r4, #0x18
	and r1, r0
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x2c
	add r1, r0, r1
	ldr r0, [sp, #0x18]
	lsr r3, r3, #0x18
	add r1, r0, r1
	add r0, sp, #0x2c
	strh r1, [r0]
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r1, #3
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0x14]
	bl LoadRectToBgTilemapRect
	add r4, r4, #1
	cmp r4, #0x40
	blo _021E77BC
	mov r4, #0
_021E77BC:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x15
	blo _021E7786
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	cmp r0, #0x14
	blo _021E776E
	ldr r0, [sp, #0x28]
	bl Heap_Free
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	lsl r3, r4, #0x18
	ldr r0, [r0, #0x34]
	ldr r2, _021E7804 ; =0x00001001
	ldr r0, [r0, #0x14]
	mov r1, #3
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7800: .word 0x00000FFF
_021E7804: .word 0x00001001
	thumb_func_end ov14_021E7740

