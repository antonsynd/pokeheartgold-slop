	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225EBE0
	.public ov92_0225ED68
	.public ov92_0225ED80
	.public ov92_0225EEBC
	.public ov92_0225F878
	.public ov92_0225FAB8
	.public ov92_0225FC9C
	.public ov92_0225FEB4
	.public ov92_0225FF1C

	.text

	thumb_func_start ov92_0225FAB8
ov92_0225FAB8: ; 0x0225FAB8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, _0225FC1C ; =0x00002B9C
	ldr r2, [r4]
	add r3, r4, r1
	lsl r2, r2, #2
	ldr r5, [r3, r2]
	cmp r5, #3
	bls _0225FACC
	b _0225FC18
_0225FACC:
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0225FAD8: ; jump table
	.short _0225FAE0 - _0225FAD8 - 2 ; case 0
	.short _0225FB52 - _0225FAD8 - 2 ; case 1
	.short _0225FB8C - _0225FAD8 - 2 ; case 2
	.short _0225FBEA - _0225FAD8 - 2 ; case 3
_0225FAE0:
	mov r1, #0
	bl ov92_0225ED68
	cmp r0, #0
	beq _0225FB28
	ldr r0, _0225FC20 ; =0x00002AFC
	mov r1, #0
	strh r1, [r4, r0]
	add r0, r4, #0
	bl ov92_0225EEBC
	add r0, r4, #0
	bl ov92_0225FEB4
	ldr r0, [r4]
	ldr r1, _0225FC1C ; =0x00002B9C
	lsl r0, r0, #2
	mov r2, #1
	add r0, r4, r0
	str r2, [r0, r1]
	add r2, r4, r1
	ldr r1, [r4]
	mov r0, #0x18
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #4
	bl sub_02037030
	ldr r0, _0225FC24 ; =0x00002B18
	mov r1, #0
	str r1, [r4, r0]
	sub r0, #0x1a
	strh r1, [r4, r0]
	ldr r0, _0225FC28 ; =0x000021A4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0225FB28:
	add r0, r4, #0
	bl ov92_0225ED80
	add r0, r4, #0
	bl ov92_0225FC9C
	add r0, r4, #0
	bl ov92_0225FF1C
	add r0, r4, #0
	bl ov92_0225F878
	mov r0, #0x2b
	lsl r0, r0, #8
	add r2, r4, r0
	ldr r0, [r4]
	lsl r1, r0, #1
	ldrsh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	pop {r3, r4, r5, pc}
_0225FB52:
	add r0, r1, #0
	sub r0, #0xa0
	ldrsh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #0
	sub r0, #0xa0
	strh r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xa0
	ldrsh r0, [r4, r0]
	cmp r0, #0x5a
	blt _0225FB74
	ldr r0, [r4]
	mov r2, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r2, [r0, r1]
_0225FB74:
	ldr r1, _0225FC24 ; =0x00002B18
	mov r2, #0
	add r0, r1, #0
	str r2, [r4, r1]
	sub r0, #0x1a
	strh r2, [r4, r0]
	ldr r0, [r4]
	sub r1, #0x18
	lsl r0, r0, #1
	add r0, r4, r0
	strh r2, [r0, r1]
	pop {r3, r4, r5, pc}
_0225FB8C:
	add r0, r1, #0
	sub r0, #0xa0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _0225FBE4
	add r2, r1, #0
	mov r0, #0
	sub r2, #0x84
	str r0, [r4, r2]
	add r2, r1, #0
	sub r2, #0x9e
	strh r0, [r4, r2]
	add r2, r1, #0
	sub r2, #0xa0
	strh r0, [r4, r2]
	ldr r2, [r4]
	lsl r2, r2, #1
	add r3, r4, r2
	add r2, r1, #0
	sub r2, #0x9c
	strh r0, [r3, r2]
	add r0, r1, #0
	sub r0, #0xa4
	ldr r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xa8
	ldr r0, [r4, r0]
	cmp r2, r0
	beq _0225FBCA
	sub r1, #0xa8
	str r2, [r4, r1]
_0225FBCA:
	add r0, r4, #0
	bl ov92_0225EBE0
	ldr r1, _0225FC1C ; =0x00002B9C
	mov r0, #0x18
	add r2, r4, r1
	ldr r1, [r4]
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #4
	bl sub_02037030
	pop {r3, r4, r5, pc}
_0225FBE4:
	mov r0, #0
	str r0, [r3, r2]
	pop {r3, r4, r5, pc}
_0225FBEA:
	add r2, r1, #0
	sub r2, #0xa0
	ldrsh r2, [r4, r2]
	add r3, r2, #1
	add r2, r1, #0
	sub r2, #0xa0
	strh r3, [r4, r2]
	add r2, r1, #0
	sub r2, #0xa0
	ldrsh r2, [r4, r2]
	cmp r2, #0x1d
	blo _0225FC18
	mov r2, #0
	sub r1, #0xa0
	strh r2, [r4, r1]
	bl ov92_0225EBE0
	ldr r0, [r4]
	mov r2, #0
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0225FC1C ; =0x00002B9C
	str r2, [r1, r0]
_0225FC18:
	pop {r3, r4, r5, pc}
	nop
_0225FC1C: .word 0x00002B9C
_0225FC20: .word 0x00002AFC
_0225FC24: .word 0x00002B18
_0225FC28: .word 0x000021A4
	thumb_func_end ov92_0225FAB8

