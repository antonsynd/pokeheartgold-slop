	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02222B30
	.extern ov07_02222AF8
	.extern ov07_02222B14

	.text

	.text
	thumb_func_start ov07_02222B30
ov07_02222B30: ; 0x02222B30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02222B42
	bl GF_AssertFail
_02222B42:
	mov r0, #1
	str r0, [r5, #8]
	mov r2, #0
	str r2, [r5, #0xc]
	str r4, [r5, #0x18]
	str r6, [r5, #0x10]
	ldr r0, _02222B68 ; =ov07_02222AF8
	str r7, [r5, #0x14]
	add r1, r5, #0
	bl SysTask_CreateOnVWaitQueue
	str r0, [r5, #4]
	ldr r0, _02222B6C ; =ov07_02222B14
	add r1, r5, #0
	mov r2, #0
	bl SysTask_CreateOnVBlankQueue
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02222B68: .word ov07_02222AF8
_02222B6C: .word ov07_02222B14
	thumb_func_end ov07_02222B30

