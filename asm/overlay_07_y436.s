	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02227248
	.extern ov07_0221BFD0
	.extern ov07_0221C448
	.extern ov07_0221FAF8
	.extern ov07_02222CCC
	.extern ov07_02222D3C
	.extern ov07_02222D88

	.text

	.text
	thumb_func_start ov07_02227248
ov07_02227248: ; 0x02227248
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0222725C
	cmp r0, #1
	beq _022272A4
	b _022272BC
_0222725C:
	mov r0, #0
	str r0, [r5]
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl ov07_0221FAF8
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl ov07_02222D88
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl ov07_0221BFD0
	mov r1, #0xc8
	str r1, [sp]
	mov r3, #2
	str r4, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #0xa0
	add r2, r1, #0
	add r2, #0xb5
	lsl r3, r3, #0x10
	bl ov07_02222CCC
	str r0, [r5, #0x24]
	ldrb r0, [r5, #8]
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r5, #8]
	pop {r3, r4, r5, r6, pc}
_022272A4:
	ldr r0, [r5]
	add r1, r0, #1
	str r1, [r5]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _022272CA
	ldr r0, [r5, #0x24]
	bl ov07_02222D3C
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
_022272BC:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ov07_0221C448
	add r0, r5, #0
	bl Heap_Free
_022272CA:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov07_02227248

