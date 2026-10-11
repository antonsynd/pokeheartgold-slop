	.include "asm/macros.inc"
	.include "overlay_41_02246B34.inc"
	.include "global.inc"
	.public ov41_022474D4
	.extern ov41_02247598
	.extern ov41_022475B4
	.extern ov41_022475D4
	.extern ov41_022475F4
	.extern ov41_02247628

    .text

	.text
	thumb_func_start ov41_022474D4
ov41_022474D4: ; 0x022474D4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x4e
	ldr r2, _02247550 ; =0x000006EC
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	add r2, r4, r2
	bl ov41_0224A27C
	mov r0, #0x4e
	lsl r0, r0, #4
	mov r1, #0
	ldr r2, _02247554 ; =ov41_022475B4
	add r0, r4, r0
	add r3, r4, #0
	str r1, [sp]
	bl ov41_0224A5D4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02247558 ; =ov41_022475D4
	add r0, r4, r0
	mov r1, #1
	add r3, r4, #0
	bl ov41_0224A5D4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _0224755C ; =ov41_022475F4
	add r0, r4, r0
	mov r1, #2
	add r3, r4, #0
	bl ov41_0224A5D4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02247560 ; =ov41_02247628
	add r0, r4, r0
	mov r1, #3
	add r3, r4, #0
	bl ov41_0224A5D4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02247564 ; =ov41_02247598
	add r0, r4, r0
	mov r1, #4
	add r3, r4, #0
	bl ov41_0224A5D4
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02247550: .word 0x000006EC
_02247554: .word ov41_022475B4
_02247558: .word ov41_022475D4
_0224755C: .word ov41_022475F4
_02247560: .word ov41_02247628
_02247564: .word ov41_02247598
	thumb_func_end ov41_022474D4

