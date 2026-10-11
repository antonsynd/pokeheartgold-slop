	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02260378
	.extern ov91_02261C12
	.extern ov91_02261C13

	.text

	.text
	thumb_func_start ov91_02260378
ov91_02260378: ; 0x02260378
	push {r3, r4, r5, lr}
	ldr r2, _022603F4 ; =0x0000022E
	add r3, r0, #0
	ldrh r0, [r3, r2]
	cmp r0, #1
	bne _022603AA
	sub r0, r2, #6
	mov r1, #2
	ldr r0, [r3, r0]
	lsl r1, r1, #0xc
	add r4, r0, r1
	mov r0, #0xa
	lsl r0, r0, #0xe
	cmp r4, r0
	bge _022603A2
	sub r0, r2, #6
	ldr r0, [r3, r0]
	add r1, r0, r1
	sub r0, r2, #6
	str r1, [r3, r0]
	b _022603E4
_022603A2:
	lsr r1, r1, #1
	sub r0, r2, #6
	str r1, [r3, r0]
	b _022603E4
_022603AA:
	sub r0, r2, #2
	ldrh r0, [r3, r0]
	cmp r0, #4
	bne _022603B6
	mov r0, #0
	b _022603B8
_022603B6:
	add r0, r0, #1
_022603B8:
	lsl r2, r0, #1
	ldr r0, _022603F8 ; =ov91_02261C12
	mov r4, #0x8a
	ldrb r0, [r0, r2]
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	lsl r1, r0, #0xc
	cmp r5, r1
	bge _022603CE
	str r1, [r3, r4]
	b _022603E4
_022603CE:
	mov r0, #2
	lsl r0, r0, #0xc
	add r0, r5, r0
	ldr r5, _022603FC ; =ov91_02261C13
	ldrb r2, [r5, r2]
	lsl r2, r2, #0xc
	cmp r0, r2
	bge _022603E2
	str r0, [r3, r4]
	b _022603E4
_022603E2:
	str r1, [r3, r4]
_022603E4:
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r3, r1
	add r1, #0x14
	ldr r1, [r3, r1]
	bl sub_02018198
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022603F4: .word 0x0000022E
_022603F8: .word ov91_02261C12
_022603FC: .word ov91_02261C13
	thumb_func_end ov91_02260378

