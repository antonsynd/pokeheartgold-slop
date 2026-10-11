	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240DB0
	.public ov83_02240DE0
	.public ov83_02241368

    .text

	thumb_func_start ov83_02240DB0
ov83_02240DB0: ; 0x02240DB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240DDC ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02240DCE
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #0xc
	bl ov83_02241368
_02240DCE:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #0
	bl ov83_02240DE0
	pop {r4, pc}
	nop
_02240DDC: .word 0x000005DC
	thumb_func_end ov83_02240DB0

