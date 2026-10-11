	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02267AF0
	.extern ov49_02265BE8
	.extern ov49_0226A678
	.extern ov49_0226A67C

    .text

	.text
	thumb_func_start ov49_02267AF0
ov49_02267AF0: ; 0x02267AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #2
	ldrsh r1, [r5, r0]
	mov r0, #0xc
	add r6, r2, #0
	mul r0, r1
	mov r1, #0x30
	bl _s32_div_f
	add r4, r0, #0
	ldr r0, _02267C14 ; =0x00000954
	ldr r1, [r5, r0]
	cmp r4, r1
	beq _02267BF4
	str r4, [r5, r0]
	cmp r4, #0
	beq _02267B42
	mov r0, #0x30
	add r2, r6, #0
	mul r2, r0
	ldr r0, _02267C18 ; =ov49_0226A678
	lsl r1, r4, #2
	add r0, r0, r2
	add r2, r1, r0
	ldrh r0, [r1, r0]
	add r1, sp, #8
	strh r0, [r1, #4]
	ldrh r0, [r2, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	mov r1, #0x78
	add r0, #0xc
	mul r1, r2
	add r0, r0, r1
	mov r1, #0
	bl sub_020182A0
_02267B42:
	mov r0, #0x30
	add r2, r6, #0
	mul r2, r0
	ldr r0, _02267C1C ; =ov49_0226A67C
	lsl r1, r4, #2
	add r0, r0, r2
	add r2, r1, r0
	ldrh r1, [r1, r0]
	add r0, sp, #8
	strh r1, [r0]
	ldrh r4, [r2, #2]
	strh r4, [r0, #2]
	cmp r4, #0
	beq _02267BE2
	beq _02267B74
	lsl r7, r4, #0xc
	add r0, r7, #0
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02267B84
_02267B74:
	lsl r7, r4, #0xc
	add r0, r7, #0
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02267B84:
	add r1, sp, #8
	ldrh r6, [r1]
	bl _ffix
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov49_02265BE8
	cmp r4, #0
	beq _02267BB0
	add r0, r7, #0
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02267BBE
_02267BB0:
	add r0, r7, #0
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02267BBE:
	bl _ffix
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov49_02265BE8
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r6
	add r0, r1, r0
	mov r1, #1
	bl sub_020182A0
	b _02267BF4
_02267BE2:
	ldrh r1, [r0]
	add r2, r5, #0
	mov r0, #0x78
	mul r0, r1
	add r2, #0xc
	add r0, r2, r0
	mov r1, #0
	bl sub_020182A0
_02267BF4:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x30
	bge _02267C00
	add r0, r0, #1
	strh r0, [r5, #2]
_02267C00:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x30
	blt _02267C0E
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02267C0E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02267C14: .word 0x00000954
_02267C18: .word ov49_0226A678
_02267C1C: .word ov49_0226A67C
	thumb_func_end ov49_02267AF0

