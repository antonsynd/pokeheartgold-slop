	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02244C58
	.public ov83_02246AA4
	.public ov83_02246CC0

    .text

	thumb_func_start ov83_02244C58
ov83_02244C58: ; 0x02244C58
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02247944
	mov r1, #1
	mov r0, #6
	mvn r1, r1
	lsl r0, r0, #8
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov83_02246AA4
	add r0, r4, #0
	bl ov83_02246CC0
	pop {r4, pc}
	thumb_func_end ov83_02244C58

