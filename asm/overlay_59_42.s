	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022388C4
	.public ov59_02239EA8
	.public ov59_0223A350
	.public ov59_0223A3B0
	.public ov59_0223A678

	.text

	thumb_func_start ov59_0223A3B0
ov59_0223A3B0: ; 0x0223A3B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223A40C ; =gSystem
	ldr r1, [r0, #0x48]
	ldr r0, _0223A410 ; =0x00000CF3
	tst r0, r1
	beq _0223A3C2
	mov r0, #0
	str r0, [r4, #0x40]
_0223A3C2:
	ldr r0, _0223A40C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0223A3D6
	add r0, r4, #0
	mov r1, #8
	bl ov59_0223A350
	pop {r4, pc}
_0223A3D6:
	mov r0, #1
	tst r0, r1
	beq _0223A3EC
	add r0, r4, #0
	bl ov59_02239EA8
	add r1, r0, #0
	add r0, r4, #0
	bl ov59_0223A350
	pop {r4, pc}
_0223A3EC:
	add r0, r4, #0
	bl ov59_0223A678
	cmp r0, #0
	beq _0223A406
	ldr r0, _0223A414 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov59_022388C4
	mov r0, #5
	pop {r4, pc}
_0223A406:
	mov r0, #5
	pop {r4, pc}
	nop
_0223A40C: .word gSystem
_0223A410: .word 0x00000CF3
_0223A414: .word 0x000005DC
	thumb_func_end ov59_0223A3B0

