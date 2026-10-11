	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225F74C
	.public ov91_0225F7A8
	.public ov91_0226014C
	.public ov91_022601AC
	.public ov91_02260CC8
	.public ov91_022613C8
	.public ov91_02261928

	.text

	thumb_func_start ov91_0225F74C
ov91_0225F74C: ; 0x0225F74C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x13
	ldr r1, _0225F798 ; =0x000019CC
	lsl r0, r0, #6
	ldr r2, [r5]
	add r0, r4, r0
	add r1, r5, r1
	bl ov91_0226014C
	mov r0, #0x13
	ldr r1, _0225F798 ; =0x000019CC
	lsl r0, r0, #6
	ldr r2, [r5]
	add r0, r4, r0
	add r1, r5, r1
	bl ov91_022601AC
	ldr r0, _0225F79C ; =0x00006A90
	add r0, r4, r0
	bl ov91_02260CC8
	add r0, r5, #0
	add r1, r4, #0
	bl ov91_0225F7A8
	ldr r0, _0225F7A0 ; =0x000006F4
	add r1, r4, #0
	add r0, r4, r0
	bl ov91_022613C8
	ldr r0, _0225F7A4 ; =0x00006B78
	add r0, r4, r0
	bl ov91_02261928
	pop {r3, r4, r5, pc}
	nop
_0225F798: .word 0x000019CC
_0225F79C: .word 0x00006A90
_0225F7A0: .word 0x000006F4
_0225F7A4: .word 0x00006B78
	thumb_func_end ov91_0225F74C

