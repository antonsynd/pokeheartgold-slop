	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_0225FBF0
	.extern ov93_0225FCA4
	.extern ov93_02262CEC
	.extern ov93_02262CEE
	.extern ov93_02262FD4

	.text

	.text
	thumb_func_start ov93_0225FBF0
ov93_0225FBF0: ; 0x0225FBF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp, #0x10]
	mov r0, #0xc9
	mov r1, #0x75
	add r5, r2, #0
	add r4, r3, #0
	bl NARC_New
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x75
	str r1, [sp, #0xc]
	ldr r1, _0225FC7C ; =ov93_02262CEC
	lsl r6, r5, #3
	ldrh r1, [r1, r6]
	add r2, r7, #0
	mov r3, #7
	str r0, [sp, #0x14]
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r1, _0225FC80 ; =ov93_02262CEE
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x75
	str r0, [sp, #0xc]
	ldrh r1, [r1, r6]
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, [sp, #0x10]
	mov r1, #0xc
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0225FC84 ; =ov93_02262FD4
	lsl r1, r5, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	mov r1, #1
	str r0, [r4, #0xc]
	str r5, [r4, #4]
	add r0, r4, #0
	str r1, [r4]
	add r0, #0x2c
	strb r1, [r0]
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	add r1, r4, #0
	bl ov93_0225FCA4
	ldr r0, _0225FC88 ; =0x000005EB
	bl PlaySE
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FC7C: .word ov93_02262CEC
_0225FC80: .word ov93_02262CEE
_0225FC84: .word ov93_02262FD4
_0225FC88: .word 0x000005EB
	thumb_func_end ov93_0225FBF0

