	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02248120
	.public ov71_02248140
	.extern ov71_02247424

	.text

	.text
	thumb_func_start ov71_02248120
ov71_02248120: ; 0x02248120
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0224813C
	bl SysTask_GetData
	bl ov71_02247424
	ldr r0, [r4, #0x78]
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #0x78]
_0224813C:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov71_02248120

	thumb_func_start ov71_02248140
ov71_02248140: ; 0x02248140
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0
	ble _02248162
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	add r2, r1, r0
	str r2, [r4, #4]
	ldr r0, _02248178 ; =0x04000050
	mov r1, #1
	asr r2, r2, #0xc
	bl G2x_SetBlendBrightness_
	pop {r4, pc}
_02248162:
	ldr r2, [r4, #8]
	ldr r0, _02248178 ; =0x04000050
	mov r1, #1
	asr r2, r2, #0xc
	bl G2x_SetBlendBrightness_
	ldr r0, [r4]
	bl ov71_02248120
	pop {r4, pc}
	nop
_02248178: .word 0x04000050
	thumb_func_end ov71_02248140

