	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02259050
	.public ov48_022594D0
	.public ov48_02259874
	.public ov48_022599A0
	.public ov48_02259C44

	.text

	thumb_func_start ov48_02259050
ov48_02259050: ; 0x02259050
	push {r4, lr}
	add r4, r0, #0
	bl Thunk_G3X_Reset
	ldr r0, _0225908C ; =0x0000C3CC
	add r0, r4, r0
	bl ov48_02259C44
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov48_02259874
	mov r1, #0x89
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0xac
	add r1, r4, r1
	bl ov48_022599A0
	add r4, #0x20
	add r0, r4, #0
	bl ov48_022594D0
	mov r0, #0
	mov r1, #1
	bl RequestSwap3DBuffers
	pop {r4, pc}
	nop
_0225908C: .word 0x0000C3CC
	thumb_func_end ov48_02259050

