	.include "asm/macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E78D8
	.extern ov87_021E803C
	.extern ov87_021E80A8

	.text

	.text
	thumb_func_start ov87_021E78D8
ov87_021E78D8: ; 0x021E78D8
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021E7980 ; =0x000003A2
	add r5, r0, #0
	add r3, r2, #0
	mov r0, #0
	sub r3, #0x42
_021E78E4:
	add r4, r5, r0
	ldrb r4, [r4, r2]
	add r4, r5, r4
	ldrb r4, [r4, r3]
	cmp r4, #4
	beq _021E78F6
	add r0, r0, #1
	cmp r0, #3
	blt _021E78E4
_021E78F6:
	cmp r0, #3
	bne _021E78FE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E78FE:
	cmp r1, #0
	ldrb r0, [r5, #0x14]
	bne _021E794A
	cmp r0, #0
	bne _021E790E
	ldr r0, _021E7984 ; =0x00000563
	bl PlaySE
_021E790E:
	ldrb r0, [r5, #0x14]
	cmp r0, #4
	bhs _021E791A
	add r0, r0, #1
	strb r0, [r5, #0x14]
	b _021E7970
_021E791A:
	mov r7, #0x36
	mov r4, #0
	add r6, r5, #0
	lsl r7, r7, #4
_021E7922:
	ldr r0, _021E7980 ; =0x000003A2
	add r1, r5, r4
	ldrb r0, [r1, r0]
	add r0, r5, r0
	ldrb r0, [r0, r7]
	cmp r0, #4
	bne _021E793E
	ldr r1, _021E7988 ; =0x0000039F
	mov r0, #0x35
	lsl r0, r0, #4
	ldrb r1, [r5, r1]
	ldr r0, [r6, r0]
	bl ov87_021E803C
_021E793E:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #3
	blt _021E7922
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E794A:
	cmp r0, #0
	beq _021E7954
	sub r0, r0, #1
	strb r0, [r5, #0x14]
	b _021E7970
_021E7954:
	mov r4, #0
	mov r6, #0x35
	add r7, r4, #0
	lsl r6, r6, #4
_021E795C:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl ov87_021E80A8
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021E795C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7970:
	ldrb r1, [r5, #0x14]
	lsl r0, r1, #4
	orr r1, r0
	ldr r0, _021E798C ; =0x0400004D
	strb r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7980: .word 0x000003A2
_021E7984: .word 0x00000563
_021E7988: .word 0x0000039F
_021E798C: .word 0x0400004D
	thumb_func_end ov87_021E78D8

