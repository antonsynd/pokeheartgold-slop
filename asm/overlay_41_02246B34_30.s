	.include "asm/macros.inc"
	.include "overlay_41_02246B34.inc"
	.include "global.inc"
	.public ov41_022475F4
	.public ov41_02247628

    .text

	.text
	thumb_func_start ov41_022475F4
ov41_022475F4: ; 0x022475F4
	push {r4, lr}
	mov r0, #0x6b
	add r4, r1, #0
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02247624
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov41_0224895C
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov41_022487F8
	mov r0, #0x6b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_02247624:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_022475F4

	thumb_func_start ov41_02247628
ov41_02247628: ; 0x02247628
	push {r4, lr}
	mov r0, #0x6b
	add r4, r1, #0
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _02247658
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov41_0224895C
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov41_022487F8
	mov r0, #0x6b
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
_02247658:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02247628

