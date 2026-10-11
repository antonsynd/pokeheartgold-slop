	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02244DA0

    .text

	thumb_func_start ov83_02244DA0
ov83_02244DA0: ; 0x02244DA0
	push {r4, r5, r6, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl ov80_02237D8C
	cmp r0, #1
	bne _02244DD6
	cmp r4, #0
	bne _02244DBC
	mov r0, #0x28
	str r0, [r5]
	b _02244DEE
_02244DBC:
	cmp r4, #1
	bne _02244DC6
	mov r0, #0x68
	str r0, [r5]
	b _02244DEE
_02244DC6:
	cmp r4, #2
	bne _02244DD0
	mov r0, #0xa8
	str r0, [r5]
	b _02244DEE
_02244DD0:
	mov r0, #0xe8
	str r0, [r5]
	b _02244DEE
_02244DD6:
	cmp r4, #0
	bne _02244DE0
	mov r0, #0x48
	str r0, [r5]
	b _02244DEE
_02244DE0:
	cmp r4, #1
	bne _02244DEA
	mov r0, #0x88
	str r0, [r5]
	b _02244DEE
_02244DEA:
	mov r0, #0xc8
	str r0, [r5]
_02244DEE:
	mov r0, #0x58
	str r0, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_02244DA0

