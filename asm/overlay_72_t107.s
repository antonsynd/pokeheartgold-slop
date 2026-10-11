	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223AF48
	.extern ov72_0223B7FC

	.text

	.text
	thumb_func_start ov72_0223AF48
ov72_0223AF48: ; 0x0223AF48
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x2d
	ldrb r1, [r1]
	lsl r2, r1, #2
	ldr r1, _0223AF6C ; =ov72_0223B7FC
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _0223AF66
	add r4, #0x33
	ldrb r0, [r4]
	add r0, r0, #1
	pop {r4, pc}
_0223AF66:
	mov r0, #0
	pop {r4, pc}
	nop
_0223AF6C: .word ov72_0223B7FC
	thumb_func_end ov72_0223AF48

