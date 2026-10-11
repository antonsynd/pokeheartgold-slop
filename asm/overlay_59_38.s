	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022388C4
	.public ov59_02239EA8
	.public ov59_0223A07C
	.public ov59_0223A0B8
	.public ov59_0223A678

	.text

	thumb_func_start ov59_0223A0B8
ov59_0223A0B8: ; 0x0223A0B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223A114 ; =gSystem
	ldr r1, [r0, #0x48]
	ldr r0, _0223A118 ; =0x00000CF3
	tst r0, r1
	beq _0223A0CA
	mov r0, #0
	str r0, [r4, #0x40]
_0223A0CA:
	ldr r0, _0223A114 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0223A0DE
	add r0, r4, #0
	mov r1, #8
	bl ov59_0223A07C
	pop {r4, pc}
_0223A0DE:
	mov r0, #1
	tst r0, r1
	beq _0223A0F4
	add r0, r4, #0
	bl ov59_02239EA8
	add r1, r0, #0
	add r0, r4, #0
	bl ov59_0223A07C
	pop {r4, pc}
_0223A0F4:
	add r0, r4, #0
	bl ov59_0223A678
	cmp r0, #0
	beq _0223A10E
	ldr r0, _0223A11C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov59_022388C4
	mov r0, #3
	pop {r4, pc}
_0223A10E:
	mov r0, #3
	pop {r4, pc}
	nop
_0223A114: .word gSystem
_0223A118: .word 0x00000CF3
_0223A11C: .word 0x000005DC
	thumb_func_end ov59_0223A0B8

