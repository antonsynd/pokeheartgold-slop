	.include "asm/macros.inc"
	.include "overlay_69.inc"
	.include "global.inc"
	.public ov69_021E6138
	.extern ov69_021E623C

	.text

	.text
	thumb_func_start ov69_021E6138
ov69_021E6138: ; 0x021E6138
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, #0x62
	ldr r1, [r1]
	bl NARC_New
	ldr r1, [sp, #8]
	mov r2, #0
	str r2, [r1, #0xc]
	str r2, [sp]
	add r1, sp, #0x24
	str r1, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, #0x12
	ldr r3, [r3]
	str r0, [sp, #0x1c]
	bl GfGfxLoader_LoadFromOpenNarc_GetSizeOut
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	mov r1, #6
	bl _u32_div_f
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	mov r5, #1
	add r4, r0, #6
	cmp r7, #1
	ble _021E61AA
	ldr r6, [sp, #8]
	add r6, #0xc
_021E617A:
	ldrh r0, [r4]
	cmp r0, #2
	beq _021E61A2
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r2, #2
	mov r3, #4
	add r1, r0, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov69_021E623C
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
_021E61A2:
	add r5, r5, #1
	add r4, r4, #6
	cmp r5, r7
	blt _021E617A
_021E61AA:
	ldr r0, [sp, #0x18]
	bl Heap_Free
	mov r7, #1
	bl LocationGmmDatCountGet
	str r0, [sp, #0x10]
	cmp r0, #1
	ble _021E6232
	ldr r6, [sp, #8]
	add r6, #0xc
_021E61C0:
	add r0, r7, #0
	bl LocationGmmDatGetEarthPlaceDatId
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r3, [r3]
	mov r2, #0
	bl GfGfxLoader_LoadFromOpenNarc_GetSizeOut
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r5, #1
	lsr r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r4, r0, #4
	ldr r0, [sp, #0xc]
	cmp r0, #1
	ble _021E6224
_021E61F0:
	add r0, r7, #0
	bl LocationGmmDatGetCountryMsgNo
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r2, #0
	mov r3, #2
	add r1, r0, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov69_021E623C
	ldr r0, [r6]
	add r5, r5, #1
	add r0, r0, #1
	str r0, [r6]
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	cmp r5, r0
	blt _021E61F0
_021E6224:
	ldr r0, [sp, #0x14]
	bl Heap_Free
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	cmp r7, r0
	blt _021E61C0
_021E6232:
	ldr r0, [sp, #0x1c]
	bl NARC_Delete
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov69_021E6138

