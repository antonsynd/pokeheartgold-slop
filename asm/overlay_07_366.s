	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022252F8
	.extern ov07_0221BFC0
	.extern ov07_0221C410
	.extern ov07_0221C468
	.extern ov07_0221C470
	.extern ov07_0221C4A8
	.extern ov07_0221FA48
	.extern ov07_0221FAB0
	.extern ov07_02222004
	.extern ov07_0222525C
	.extern ov07_0223197C
	.extern ov07_02231FA0
	.extern ov07_02231FE4
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_022252F8
ov07_022252F8: ; 0x022252F8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x68
	add r5, r0, #0
	bl ov07_022324D8
	add r4, r0, #0
	str r5, [r4, #0x60]
	add r0, r5, #0
	mov r1, #0
	bl ov07_0221C4A8
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov07_0221C4A8
	add r1, r4, #0
	add r1, #0x64
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #2
	bl ov07_0221C4A8
	add r1, r4, #0
	add r1, #0x66
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #3
	bl ov07_0221C4A8
	add r1, r4, #0
	add r7, r0, #0
	add r0, r5, #0
	add r1, #0x20
	bl ov07_02231FE4
	mov r6, #0xff
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	bgt _02225362
	add r0, r6, #3
	cmp r7, r0
	blt _022253B8
	beq _0222536C
	add r0, r6, #5
	cmp r7, r0
	beq _02225376
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	beq _02225392
	b _022253B8
_02225362:
	add r0, r6, #0
	add r0, #0x11
	cmp r7, r0
	beq _0222539C
	b _022253B8
_0222536C:
	add r0, r5, #0
	bl ov07_0221C468
	add r6, r0, #0
	b _022253BC
_02225376:
	add r0, r5, #0
	bl ov07_0221FAB0
	cmp r0, #1
	bne _022253BC
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	add r0, r5, #0
	bl ov07_0223197C
	add r6, r0, #0
	b _022253BC
_02225392:
	add r0, r5, #0
	bl ov07_0221C470
	add r6, r0, #0
	b _022253BC
_0222539C:
	add r0, r5, #0
	bl ov07_0221FAB0
	cmp r0, #1
	bne _022253BC
	add r0, r5, #0
	bl ov07_0221C470
	add r1, r0, #0
	add r0, r5, #0
	bl ov07_0223197C
	add r6, r0, #0
	b _022253BC
_022253B8:
	bl GF_AssertFail
_022253BC:
	cmp r6, #0xff
	bne _022253C8
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
_022253C8:
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FA48
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _022253DE
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
_022253DE:
	add r1, r4, #0
	add r1, #0x10
	bl ov07_02231FA0
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_02222004
	cmp r0, #0
	bgt _02225412
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	sub r0, #0x65
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x64
	strh r2, [r0]
	mov r0, #0x66
	ldrsh r1, [r4, r0]
	sub r0, #0x67
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x66
	strh r2, [r0]
_02225412:
	add r0, r5, #0
	bl ov07_0221BFC0
	cmp r0, #1
	bne _0222542C
	mov r0, #0x66
	ldrsh r1, [r4, r0]
	sub r0, #0x67
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x66
	strh r2, [r0]
_0222542C:
	ldr r0, [r4, #0x60]
	ldr r1, _02225440 ; =ov07_0222525C
	add r2, r4, #0
	bl ov07_0221C410
	add r1, r4, #0
	bl ov07_0222525C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02225440: .word ov07_0222525C
	thumb_func_end ov07_022252F8

