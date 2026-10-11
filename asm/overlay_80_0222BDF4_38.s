	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_040
	.public ov80_0222C7B0

	.text

	thumb_func_start FrtCmd_040
FrtCmd_040: ; 0x0222C750
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5]
	ldr r0, [r4]
	bl sub_0209680C
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl FrontierScript_ReadVar
	add r7, r0, #0
	add r0, r5, #0
	bl FrontierScriptContext_ReadWord
	add r6, r0, #0
	ldr r0, [r4]
	add r1, r7, #0
	bl ov80_02239938
	str r0, [sp, #8]
	cmp r0, #0
	bne _0222C782
	bl GF_AssertFail
_0222C782:
	add r0, r4, #0
	add r0, #0x59
	str r0, [sp]
	ldr r0, [r4, #0x34]
	ldr r3, [sp, #0xc]
	str r0, [sp, #4]
	ldr r2, [r5, #0x1c]
	ldr r1, [sp, #8]
	ldr r3, [r3, #0x30]
	add r0, r7, #0
	add r2, r2, r6
	bl ov80_0222C7B0
	add r0, r4, #0
	add r0, #0x59
	ldrb r0, [r0]
	add r4, #0x59
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_040

