	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258CF0
	.public ov90_02259F44
	.public ov90_02259FC8

	.text

	thumb_func_start ov90_02259F44
ov90_02259F44: ; 0x02259F44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #8
	str r0, [sp]
	add r4, r1, #0
	add r0, r5, #0
	ldr r1, [r5, #0x1c]
	ldr r2, _02259F74 ; =0xFFF01000
	add r0, #0x1c
	mov r3, #0
	bl ov90_02258CF0
	mov r0, #0
	strh r0, [r5, #0x30]
	ldr r0, _02259F78 ; =0x0000057F
	strh r4, [r5, #0x32]
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	asr r1, r1, #0xc
	neg r1, r1
	bl ov90_02259FC8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02259F74: .word 0xFFF01000
_02259F78: .word 0x0000057F
	thumb_func_end ov90_02259F44

