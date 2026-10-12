	.include "asm/macros.inc"
	.include "overlay_80_022310C4.inc"
	.include "global.inc"
	.public ov80_022317D0
	.public ov80_02231804
	.public ov80_02231828
	.extern ov80_0223157C

    .text

	.text
	thumb_func_start ov80_022317D0
ov80_022317D0: ; 0x022317D0
	push {r3, lr}
	sub sp, #0x30
	add r2, r0, #0
	ldrb r3, [r2, #5]
	add r0, sp, #0
	lsl r3, r3, #1
	add r1, r1, r3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x17
	add r1, r2, r1
	ldrh r1, [r1, #0x18]
	mov r2, #0xb
	mov r3, #0xcc
	bl ov80_02229F04
	bl Heap_Free
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov80_0222A30C
	add sp, #0x30
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov80_022317D0

	thumb_func_start ov80_02231804
ov80_02231804: ; 0x02231804
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #4]
	ldr r0, _02231824 ; =0x00000704
	add r2, r4, r0
	lsl r0, r1, #3
	add r0, r1, r0
	add r0, r2, r0
	bl sub_02030C34
	add r0, r4, #0
	mov r1, #1
	bl ov80_0223157C
	pop {r4, pc}
	nop
_02231824: .word 0x00000704
	thumb_func_end ov80_02231804

	thumb_func_start ov80_02231828
ov80_02231828: ; 0x02231828
	mov r1, #1
	strb r1, [r0, #6]
	ldrh r1, [r0, #0xa]
	cmp r1, #0x12
	bhs _02231836
	add r1, r1, #1
	strh r1, [r0, #0xa]
_02231836:
	ldr r3, _02231840 ; =ov80_0223157C
	mov r1, #0
	strb r1, [r0, #5]
	bx r3
	nop
_02231840: .word ov80_0223157C
	thumb_func_end ov80_02231828

