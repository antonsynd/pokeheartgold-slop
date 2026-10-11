	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222BE24

	.text

	thumb_func_start ov80_0222BE24
ov80_0222BE24: ; 0x0222BE24
	push {r3, lr}
	mov r3, #2
	lsl r3, r3, #0xe
	cmp r1, r3
	bhs _0222BE32
	mov r0, #0
	pop {r3, pc}
_0222BE32:
	add r2, r3, #0
	add r2, #8
	cmp r1, r2
	bhs _0222BE44
	sub r1, r1, r3
	add r0, #8
	lsl r1, r1, #1
	add r0, r0, r1
	pop {r3, pc}
_0222BE44:
	add r2, r3, #0
	add r2, #0x10
	cmp r1, r2
	bhs _0222BE58
	add r3, #8
	ldr r0, [r0]
	sub r1, r1, r3
	bl ov80_0222AB2C
	pop {r3, pc}
_0222BE58:
	add r2, r3, #0
	add r2, #0x14
	cmp r1, r2
	bhs _0222BE6C
	add r3, #0x10
	sub r1, r1, r3
	add r0, #0x78
	lsl r1, r1, #1
	add r0, r0, r1
	pop {r3, pc}
_0222BE6C:
	ldr r0, _0222BE94 ; =0x0000FD13
	cmp r1, r0
	bne _0222BE76
	mov r0, #0
	pop {r3, pc}
_0222BE76:
	ldr r0, _0222BE98 ; =0x0000EEEE
	cmp r1, r0
	bne _0222BE80
	mov r0, #0
	pop {r3, pc}
_0222BE80:
	add r0, r0, #1
	cmp r1, r0
	bne _0222BE8A
	mov r0, #0
	pop {r3, pc}
_0222BE8A:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_0222BE94: .word 0x0000FD13
_0222BE98: .word 0x0000EEEE
	thumb_func_end ov80_0222BE24

