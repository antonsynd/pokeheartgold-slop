	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225CBE4

	.text

	.text
	thumb_func_start ov91_0225CBE4
ov91_0225CBE4: ; 0x0225CBE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r3, r1, #0
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0xd4
	add r2, r1, #0
	bl GfGfxLoader_LoadFromNarc_GetSizeOut
	str r0, [r7, #0x4c]
	ldr r0, [sp, #8]
	mov r1, #0x18
	bl _u32_div_f
	str r0, [r7, #0x48]
	ldrb r0, [r7, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _0225CC34
	add r6, r7, #0
	add r5, r7, #0
	add r6, #8
_0225CC16:
	add r0, r6, #0
	add r1, r4, #0
	bl ov90_022588CC
	str r0, [r5, #0x50]
	add r0, r6, #0
	add r1, r4, #0
	bl ov90_022588A4
	str r0, [r5, #0x60]
	ldrb r0, [r7, #0x10]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0225CC16
_0225CC34:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov91_0225CBE4

