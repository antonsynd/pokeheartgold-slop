	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_022597FC
	.extern ov89_0225CA38
	.extern ov89_0225CAA0
	.extern ov89_0225CAD4

	.text

	.text
	thumb_func_start ov89_022597FC
ov89_022597FC: ; 0x022597FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldr r2, _02259894 ; =ov89_0225CAA0
	bl SpriteSystem_NewSprite
	ldr r1, _02259898 ; =0x0000096C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	ldr r0, [r0]
	bl Sprite_TickFrame
	ldr r0, _02259898 ; =0x0000096C
	mov r1, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
	ldr r4, _0225989C ; =ov89_0225CAD4
	add r3, sp, #0
	mov r2, #6
_02259828:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02259828
	ldr r0, [r4]
	mov r7, #0x97
	str r0, [r3]
	mov r4, #0
	ldr r6, _022598A0 ; =ov89_0225CA38
	lsl r7, r7, #4
	b _0225988A
_0225983E:
	ldr r0, _022598A4 ; =0x0000271A
	add r2, sp, #0
	add r0, r4, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	bl SpriteSystem_NewSprite
	add r3, r0, #0
	lsl r2, r4, #2
	mov r0, #0x97
	add r1, r5, r2
	lsl r0, r0, #4
	str r3, [r1, r0]
	ldr r0, [r1, r0]
	ldrsh r1, [r6, r2]
	add r3, r6, r2
	mov r2, #2
	ldrsh r2, [r3, r2]
	mov r3, #0x11
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x97
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r0, [r0]
	bl Sprite_TickFrame
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r4, r4, #1
_0225988A:
	cmp r4, #8
	blt _0225983E
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02259894: .word ov89_0225CAA0
_02259898: .word 0x0000096C
_0225989C: .word ov89_0225CAD4
_022598A0: .word ov89_0225CA38
_022598A4: .word 0x0000271A
	thumb_func_end ov89_022597FC

