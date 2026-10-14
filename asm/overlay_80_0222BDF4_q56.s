	.include "macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrtCmd_042
	.extern FrontierScript_ReadVar

	.text

	.text
	thumb_func_start FrtCmd_042
FrtCmd_042: ; 0x0222C820
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r4, [r6]
	ldr r0, [r4]
	bl sub_0209680C
	add r5, r0, #0
	add r0, r6, #0
	bl FrontierScriptContext_ReadWord
	ldr r1, [r6, #0x1c]
	add r0, r1, r0
	str r0, [r6, #0x1c]
	str r1, [sp, #4]
	ldr r1, [r4, #0x34]
	mov r0, #0xb8
	bl NARC_New
	add r7, r0, #0
_0222C848:
	add r0, r6, #0
	bl FrontierScript_ReadVar
	add r4, r0, #0
	ldr r0, _0222C880 ; =0x0000FD13
	cmp r4, r0
	beq _0222C86E
	str r4, [sp]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	ldr r3, [r5, #4]
	add r2, r7, #0
	bl ov80_02239AF8
	add r0, r5, #0
	add r1, r4, #0
	bl ov80_0223962C
	b _0222C848
_0222C86E:
	add r0, r7, #0
	bl NARC_Delete
	ldr r0, [sp, #4]
	str r0, [r6, #0x1c]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222C880: .word 0x0000FD13
	thumb_func_end FrtCmd_042

