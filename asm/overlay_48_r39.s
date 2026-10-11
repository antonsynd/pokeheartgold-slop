	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_022598EC
	.extern ov48_02258A80
	.extern ov48_0225B178

	.text

	.text
	thumb_func_start ov48_022598EC
ov48_022598EC: ; 0x022598EC
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp, #4]
	ldr r2, [sp, #0x34]
	str r0, [sp]
	str r2, [sp, #0x34]
	bl ov48_02258A80
	ldr r1, _02259974 ; =0x0000C178
	ldr r0, [sp]
	ldr r4, _02259978 ; =ov48_0225B178
	add r5, r0, r1
	ldr r1, _0225997C ; =0x0000C010
	mov r7, #0
	add r6, r0, r1
_0225990C:
	mov r1, #0x51
	ldr r2, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r4]
	ldr r3, [sp, #0x34]
	add r0, r5, #0
	bl sub_02018030
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020181B0
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x10
	add r6, #0x78
	cmp r7, #3
	blt _0225990C
	ldr r0, [sp, #0x2c]
	ldr r2, _02259980 ; =0x0000C004
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _0225995A
	mov r3, #3
	ldr r0, [sp]
	lsl r3, r3, #8
	str r3, [r0, r2]
	add r1, r2, #4
	str r3, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0xc
	add r2, #8
	str r1, [r0, r2]
	add sp, #8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
_0225995A:
	mov r3, #1
	ldr r0, [sp]
	lsl r3, r3, #0xc
	str r3, [r0, r2]
	add r1, r2, #4
	str r3, [r0, r1]
	add r2, #8
	str r3, [r0, r2]
	add sp, #8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
_02259974: .word 0x0000C178
_02259978: .word ov48_0225B178
_0225997C: .word 0x0000C010
_02259980: .word 0x0000C004
	thumb_func_end ov48_022598EC

