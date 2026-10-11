	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_022448AC
	.public ov83_02245094
	.public ov83_02245288
	.public ov83_02245318
	.public ov83_022453C0
	.public ov83_022453DC
	.public ov83_02245A40

    .text

	thumb_func_start ov83_02245A40
ov83_02245A40: ; 0x02245A40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205C1F0
	add r7, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl FrontierSave_GetStat
	cmp r0, r4
	bhs _02245A82
	add r0, r5, #0
	bl ov83_022453C0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	mov r0, #0x10
	strb r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02245A82:
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02245AC6
	add r0, r5, #0
	add r0, #0xc0
	bl ov83_02245094
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	add r2, r4, #0
	bl ov80_02237FA4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	bl ov83_022453DC
	cmp r4, #2
	bne _02245AB6
	ldrb r1, [r5, #0xd]
	add r0, r5, #0
	bl ov83_02245288
	b _02245ABE
_02245AB6:
	ldrb r1, [r5, #0xd]
	add r0, r5, #0
	bl ov83_02245318
_02245ABE:
	mov r0, #0xd
	strb r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02245AC6:
	mov r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_02245A40

