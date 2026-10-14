	.include "macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02258A80
	.extern ov48_02258B7C

	.text

	.text
	thumb_func_start ov48_02258A80
ov48_02258A80: ; 0x02258A80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #0x62
	add r1, r2, #0
	str r2, [sp, #0x10]
	bl NARC_New
	mov r2, #0
	str r2, [r5]
	str r2, [sp]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r3, [sp, #0x10]
	mov r1, #0x12
	str r0, [sp, #0x24]
	bl GfGfxLoader_LoadFromOpenNarc_GetSizeOut
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	mov r1, #6
	bl _u32_div_f
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	mov r6, #1
	add r4, r0, #6
	cmp r7, #1
	ble _02258AEE
_02258ABC:
	ldrh r0, [r4]
	cmp r0, #2
	beq _02258AE6
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp, #8]
	mov r3, #4
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r5]
	add r0, r5, #0
	bl ov48_02258B7C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_02258AE6:
	add r6, r6, #1
	add r4, r4, #6
	cmp r6, r7
	blt _02258ABC
_02258AEE:
	ldr r0, [sp, #0x20]
	bl Heap_Free
	mov r7, #1
	bl LocationGmmDatCountGet
	str r0, [sp, #0x18]
	cmp r0, #1
	ble _02258B72
_02258B00:
	add r0, r7, #0
	bl LocationGmmDatGetEarthPlaceDatId
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl GfGfxLoader_LoadFromOpenNarc_GetSizeOut
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	mov r6, #1
	lsr r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r4, r0, #4
	ldr r0, [sp, #0x14]
	cmp r0, #1
	ble _02258B64
_02258B2E:
	add r0, r7, #0
	bl LocationGmmDatGetCountryMsgNo
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp, #8]
	mov r3, #2
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r5]
	add r0, r5, #0
	bl ov48_02258B7C
	ldr r0, [r5]
	add r6, r6, #1
	add r0, r0, #1
	str r0, [r5]
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	cmp r6, r0
	blt _02258B2E
_02258B64:
	ldr r0, [sp, #0x1c]
	bl Heap_Free
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	cmp r7, r0
	blt _02258B00
_02258B72:
	ldr r0, [sp, #0x24]
	bl NARC_Delete
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov48_02258A80

