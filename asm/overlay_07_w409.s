	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222719C
	.extern ov07_0221C448

	.text

	.text
	thumb_func_start ov07_0222719C
ov07_0222719C: ; 0x0222719C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r2, r0, #0
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	bne _022271B8
	ldr r0, [r6, #4]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r6, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
_022271B8:
	sub r0, r0, #1
	str r0, [r6, #0x2c]
	mov r4, #0
	add r5, r6, #0
_022271C0:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _022271CA
	bl ManagedSprite_TickFrame
_022271CA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022271C0
	ldr r0, [r6, #0xc]
	bl SpriteSystem_DrawSprites
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov07_0222719C

