	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02244CDC
	.public ov83_02244D0C
	.public ov83_022450A8

    .text

	thumb_func_start ov83_02244CDC
ov83_02244CDC: ; 0x02244CDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244D08 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02244CFA
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #0x16
	bl ov83_022450A8
_02244CFA:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #0
	bl ov83_02244D0C
	pop {r4, pc}
	nop
_02244D08: .word 0x000005DC
	thumb_func_end ov83_02244CDC

