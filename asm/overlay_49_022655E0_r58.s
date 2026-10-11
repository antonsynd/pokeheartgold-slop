	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02266AF0
	.public ov49_02266B28
	.extern ov49_02265968
	.extern ov49_02265980
	.extern ov49_022659D0
	.extern ov49_02266C6C
	.extern ov49_02266D04
	.extern ov49_0226786C
	.extern ov49_0226A74C
	.extern ov49_0226A750
	.extern ov49_0226A754

    .text

	.text
	thumb_func_start ov49_02266AF0
ov49_02266AF0: ; 0x02266AF0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl ov49_02258F70
	cmp r0, #1
	bne _02266B04
	mov r0, #0
	pop {r4, r5, r6, pc}
_02266B04:
	mov r4, #0
_02266B06:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02265968
	cmp r0, #1
	bne _02266B1C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov49_022659D0
_02266B1C:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02266B06
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_02266AF0

	thumb_func_start ov49_02266B28
ov49_02266B28: ; 0x02266B28
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl ov49_02258DAC
	ldr r1, [r4, #8]
	cmp r1, r0
	bne _02266B44
	ldr r0, [r5, #8]
	bl ov49_0225CC44
_02266B44:
	ldr r0, [r4, #8]
	bl ov49_02258E34
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r5, #0xc]
	asr r3, r1, #3
	lsr r3, r3, #0x1c
	add r3, r1, r3
	lsl r1, r3, #0xc
	mov r3, #6
	ldrsh r2, [r2, r3]
	lsr r1, r1, #0x10
	asr r3, r2, #3
	lsr r3, r3, #0x1c
	add r3, r2, r3
	lsl r2, r3, #0xc
	lsr r2, r2, #0x10
	bl ov49_022589C4
	cmp r0, #0x2a
	bne _02266B84
	mov r1, #1
	b _02266B86
_02266B84:
	mov r1, #0
_02266B86:
	ldr r0, _02266C58 ; =0x00000965
	cmp r6, #1
	strb r1, [r4, r0]
	beq _02266B96
	cmp r6, #2
	beq _02266BB0
	cmp r6, #3
	b _02266BE2
_02266B96:
	ldr r3, _02266C5C ; =ov49_0226A74C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0226786C
	b _02266C2A
_02266BB0:
	ldr r3, _02266C5C ; =ov49_0226A74C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	ldr r3, _02266C60 ; =ov49_0226A750
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov49_02265980
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #2
	bl ov49_0226786C
	mov r2, #1
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0226786C
	b _02266C2A
_02266BE2:
	ldr r3, _02266C5C ; =ov49_0226A74C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	ldr r3, _02266C60 ; =ov49_0226A750
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov49_02265980
	ldr r3, _02266C64 ; =ov49_0226A754
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov49_02265980
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0226786C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov49_0226786C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	mov r3, #1
	bl ov49_0226786C
_02266C2A:
	ldr r0, _02266C68 ; =0x00000955
	mov r1, #0
	strb r6, [r4, r0]
	ldr r0, [r4, #8]
	bl ov49_02259130
	ldr r0, _02266C58 ; =0x00000965
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02266C4A
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02266C6C
	add sp, #8
	pop {r4, r5, r6, pc}
_02266C4A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02266D04
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02266C58: .word 0x00000965
_02266C5C: .word ov49_0226A74C
_02266C60: .word ov49_0226A750
_02266C64: .word ov49_0226A754
_02266C68: .word 0x00000955
	thumb_func_end ov49_02266B28

