	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221D740
	.extern ov07_02234BF0

	.text

	.text
	thumb_func_start ov07_0221D740
ov07_0221D740: ; 0x0221D740
	push {r4, lr}
	sub sp, #0x18
	ldr r3, _0221D7B4 ; =ov07_02234BF0
	add r2, sp, #0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x18]
	add r0, r0, #4
	str r0, [r4, #0x18]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r0, #0xac
	ldr r0, [r0]
	bl SpriteManager_New
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r1, [r4, r1]
	add r0, #0xac
	ldr r0, [r0]
	mov r2, #5
	bl SpriteSystem_InitSprites
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r0, #0xac
	ldr r0, [r0]
	bl SpriteSystem_GetRenderer
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl G2dRenderer_SetSubSurfaceCoords
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	mov r1, #0x4e
	add r0, #0xac
	lsl r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r4, r1]
	add r2, sp, #0
	bl SpriteSystem_InitManagerWithCapacities
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_0221D7B4: .word ov07_02234BF0
	thumb_func_end ov07_0221D740

