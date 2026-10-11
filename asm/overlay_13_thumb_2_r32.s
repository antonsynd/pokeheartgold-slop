	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02222B34
	.public ov13_02222BC0
	.extern ov13_02245A28

	.text

	.text
	thumb_func_start ov13_02222B34
ov13_02222B34: ; 0x02222B34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xa]
	add r4, r1, #0
	add r1, r4, #4
	str r0, [r4]
	add r0, r5, #0
	add r0, #0xc
	mov r2, #0x20
	bl MIi_CpuCopy16
	ldrh r0, [r5, #0x36]
	add r1, r4, #0
	add r1, #0x30
	str r0, [r4, #0x24]
	add r0, r5, #4
	mov r2, #6
	bl MIi_CpuCopy16
	mov r1, #0
	ldr r2, _02222BBC ; =ov13_02245A28
	add r0, r1, #0
	mov r6, #0x80
_02222B62:
	ldrh r7, [r5, #0x30]
	ldrh r3, [r2]
	tst r3, r7
	beq _02222B8C
	ldrb r7, [r2, #2]
	add r3, r4, r1
	add r3, #0x3c
	strb r7, [r3]
	ldrh r7, [r5, #0x2e]
	ldrh r3, [r2]
	tst r3, r7
	beq _02222B8A
	add r3, r4, r1
	add r3, #0x3c
	ldrb r3, [r3]
	add r7, r3, #0
	add r3, r4, r1
	orr r7, r6
	add r3, #0x3c
	strb r7, [r3]
_02222B8A:
	add r1, r1, #1
_02222B8C:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, #0xc
	blt _02222B62
	str r1, [r4, #0x38]
	ldrh r0, [r5, #0x32]
	str r0, [r4, #0x4c]
	ldrh r1, [r5, #0x2c]
	mov r0, #3
	and r0, r1
	cmp r0, #1
	bne _02222BAA
	mov r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_02222BAA:
	cmp r0, #2
	bne _02222BB4
	mov r0, #2
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_02222BB4:
	mov r0, #0
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222BBC: .word ov13_02245A28
	thumb_func_end ov13_02222B34

	thumb_func_start ov13_02222BC0
ov13_02222BC0: ; 0x02222BC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	add r1, #0xc
	mov r2, #0x20
	bl MIi_CpuClear16
	ldr r0, [r5]
	add r1, r4, #0
	strh r0, [r4, #0xa]
	ldrh r2, [r4, #0xa]
	add r0, r5, #4
	add r1, #0xc
	bl MI_CpuCopy8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov13_02222BC0

