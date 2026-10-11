	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02244D0C
	.public ov83_02244DA0
	.public ov83_0224691C
	.public ov83_02246938

    .text

	thumb_func_start ov83_02244D0C
ov83_02244D0C: ; 0x02244D0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	bne _02244D22
	ldr r0, _02244D98 ; =0x00000508
	mov r2, #1
	ldr r4, [r5, r0]
	mov r1, #0
	b _02244D2A
_02244D22:
	ldr r0, _02244D9C ; =0x0000050C
	mov r2, #2
	ldr r4, [r5, r0]
	mov r1, #0x11
_02244D2A:
	ldrb r0, [r5, #0x15]
	cmp r7, r0
	blo _02244D50
	add r0, r4, #0
	bl ov83_022475D4
	add r0, r4, #0
	mov r1, #0xe0
	mov r2, #0xa0
	bl ov83_02247568
	cmp r6, #0
	bne _02244D92
	add r0, r5, #0
	mov r1, #0
	bl ov83_02246938
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02244D50:
	add r0, r4, #0
	add r1, r2, #0
	bl ov83_022475D4
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	add r3, r7, #0
	bl ov83_02244DA0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov83_02247568
	cmp r6, #0
	bne _02244D92
	ldrb r1, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	cmp r1, r0
	blo _02244D8A
	add r0, r5, #0
	mov r1, #1
	bl ov83_02246938
_02244D8A:
	add r0, r5, #0
	mov r1, #0
	bl ov83_0224691C
_02244D92:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244D98: .word 0x00000508
_02244D9C: .word 0x0000050C
	thumb_func_end ov83_02244D0C

