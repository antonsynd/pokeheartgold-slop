#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02231018

	.text

	.text
	thumb_func_start ov45_02231018
ov45_02231018: ; 0x02231018
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r7, #0
	add r5, r2, #0
	str r7, [sp]
	add r1, sp, #0x18
	str r1, [sp, #4]
	ldr r3, [sp, #0xc]
	mov r1, #0x12
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r4, [sp, #0x30]
	bl GfGfxLoader_LoadFromOpenNarc_GetSizeOut
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #6
	bl _u32_div_f
	cmp r5, r0
	blt _0223104A
	bl GF_AssertFail
_0223104A:
	mov r0, #6
	add r1, r5, #0
	mul r1, r0
	ldrh r0, [r6, r1]
	cmp r0, #2
	beq _02231060
	add r1, r6, r1
	mov r0, #4
	ldrsh r0, [r1, r0]
	mov r7, #1
	str r0, [r4]
_02231060:
	add r0, r6, #0
	bl Heap_Free
	cmp r7, #0
	bne _022310AC
	add r0, r5, #0
	bl LocationGmmDatIndexGetByCountryMsgNo
	bl LocationGmmDatGetEarthPlaceDatId
	mov r2, #0
	add r1, r0, #0
	str r2, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0xc]
	bl GfGfxLoader_LoadFromOpenNarc_GetSizeOut
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	lsr r1, r0, #2
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bge _0223109C
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #2
	ldrsh r0, [r1, r0]
	b _022310A4
_0223109C:
	bl GF_AssertFail
	mov r0, #2
	ldrsh r0, [r5, r0]
_022310A4:
	str r0, [r4]
	add r0, r5, #0
	bl Heap_Free
_022310AC:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov45_02231018

