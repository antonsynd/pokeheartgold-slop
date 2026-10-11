	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_022448AC
	.public ov83_02244A74
	.public ov83_02244A98
	.public ov83_02245068
	.public ov83_02245554

    .text

	thumb_func_start ov83_02245554
ov83_02245554: ; 0x02245554
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov83_02245068
	add r2, r0, #0
	mov r1, #0
	add r0, r5, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02244A98
	add r0, r5, #0
	mov r1, #0x19
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	add r0, r5, #0
	bl ov83_02244A74
	strb r4, [r5, #0xe]
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_02245554

