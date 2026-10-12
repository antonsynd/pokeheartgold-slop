	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222C33C
	.extern ov80_0222BE24

	.text

	.text
	thumb_func_start ov80_0222C33C
ov80_0222C33C: ; 0x0222C33C
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x78
	ldrh r1, [r1]
	ldr r4, [r0]
	bl ov80_0222BE24
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _0222C354
	mov r0, #0
	pop {r4, pc}
_0222C354:
	ldrh r1, [r0]
	ldr r0, _0222C364 ; =0x0000EEEE
	cmp r1, r0
	beq _0222C360
	mov r0, #1
	pop {r4, pc}
_0222C360:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0222C364: .word 0x0000EEEE
	thumb_func_end ov80_0222C33C

