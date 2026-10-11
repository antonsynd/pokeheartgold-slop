	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_022412DC

    .text

	thumb_func_start ov83_022412DC
ov83_022412DC: ; 0x022412DC
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	mov r1, #0x3a
	add r2, r4, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x42
	add r2, r4, #0
	bl GetMonData
	cmp r6, r0
	beq _022412FC
	mov r4, #1
_022412FC:
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x43
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	beq _02241318
	mov r4, #1
_02241318:
	add r0, r5, #0
	mov r1, #0x3c
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x44
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	beq _02241334
	mov r4, #1
_02241334:
	add r0, r5, #0
	mov r1, #0x3d
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x45
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	beq _02241350
	mov r4, #1
_02241350:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_022412DC

