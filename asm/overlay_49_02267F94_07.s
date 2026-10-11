	.include "asm/macros.inc"
	.include "overlay_49_02267F94.inc"
	.include "global.inc"
	.public ov49_02268490
	.extern ov49_022686C0
	.extern ov49_022686E4
	.extern ov49_022686F0
	.extern ov49_0226A7D8
	.extern ov49_0226A7E0

    .text

	.text
	thumb_func_start ov49_02268490
ov49_02268490: ; 0x02268490
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x60
	add r6, r2, #0
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x60
	add r4, r0, #0
	bl memset
	mov r1, #0xa
	ldr r2, _022684EC ; =ov49_0226A7E0
	mul r1, r5
	add r0, r4, #0
	add r1, r2, r1
	bl ov49_022686C0
	ldr r2, _022684F0 ; =ov49_0226A7D8
	lsl r1, r6, #1
	add r0, r4, #0
	add r1, r2, r1
	bl ov49_022686E4
	mov r1, #0
	add r2, r4, #0
	mov r0, #0x3c
_022684C6:
	add r1, r1, #1
	str r0, [r2, #0x48]
	add r2, r2, #4
	cmp r1, #2
	blt _022684C6
	mov r2, #0
	add r1, r4, #0
	mov r0, #0x3c
_022684D6:
	add r2, r2, #1
	str r0, [r1, #0x50]
	add r1, r1, #4
	cmp r2, #4
	blt _022684D6
	add r0, r4, #0
	bl ov49_022686F0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_022684EC: .word ov49_0226A7E0
_022684F0: .word ov49_0226A7D8
	thumb_func_end ov49_02268490

