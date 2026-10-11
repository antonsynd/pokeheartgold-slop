	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02225F18
	.extern ov07_0221C448

	.text

	.text
	thumb_func_start ov07_02225F18
ov07_02225F18: ; 0x02225F18
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r3, [r4, #0x24]
	cmp r3, r0
	beq _02225F2C
	ldr r1, [r4, #0x28]
	cmp r1, r0
	bne _02225F3C
_02225F2C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
_02225F3C:
	mov r1, #0x20
	ldrsh r2, [r4, r1]
	cmp r2, #0
	bge _02225F5E
	add r2, r3, r2
	cmp r2, #0
	ble _02225F56
	str r2, [r4, #0x24]
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x28]
	add r0, r2, r0
	str r0, [r4, #0x28]
	b _02225F76
_02225F56:
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x28]
	b _02225F76
_02225F5E:
	add r2, r3, r2
	cmp r2, #0xf
	bge _02225F70
	str r2, [r4, #0x24]
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x28]
	add r0, r2, r0
	str r0, [r4, #0x28]
	b _02225F76
_02225F70:
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x28]
_02225F76:
	ldr r0, [r4, #0x1c]
	bl ManagedSprite_TickFrame
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	lsl r0, r0, #4
	orr r1, r0
	ldr r0, _02225F90 ; =0x0400004D
	strb r1, [r0]
	ldr r0, [r4, #0xc]
	bl SpriteSystem_DrawSprites
	pop {r4, pc}
	.balign 4, 0
_02225F90: .word 0x0400004D
	thumb_func_end ov07_02225F18

