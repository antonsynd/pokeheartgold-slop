	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E60D4
	.extern ov111_021E6B8C
	.extern ov111_021E6BA0
	.extern ov111_021E6BB8

	.text

	.text
	thumb_func_start ov111_021E60D4
ov111_021E60D4: ; 0x021E60D4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r5, r0, #0
	ldr r0, [r5]
	bl SpriteSystem_Alloc
	str r0, [r5, #0xc]
	bl SpriteManager_New
	add r2, sp, #0x2c
	ldr r3, _021E6164 ; =ov111_021E6BB8
	str r0, [r5, #0x10]
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r6, _021E6168 ; =ov111_021E6B8C
	stmia r2!, {r0, r1}
	add r3, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r4, #0
	str r0, [r3]
	mov r3, #0x20
	str r3, [sp, #0x18]
	ldr r0, [r5, #0xc]
	bl SpriteSystem_Init
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r2, #0x20
	bl SpriteSystem_InitSprites
	ldr r4, _021E616C ; =ov111_021E6BA0
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	bl SpriteSystem_InitManagerWithCapacities
	ldr r0, [r5, #0xc]
	bl SpriteSystem_GetRenderer
	mov r2, #0x83
	mov r1, #0
	lsl r2, r2, #0xe
	bl G2dRenderer_SetSubSurfaceCoords
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E6164: .word ov111_021E6BB8
_021E6168: .word ov111_021E6B8C
_021E616C: .word ov111_021E6BA0
	thumb_func_end ov111_021E60D4

