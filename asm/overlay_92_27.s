	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225DDD8
	.public ov92_0225E93C

	.text

	thumb_func_start ov92_0225E93C
ov92_0225E93C: ; 0x0225E93C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0x80
	ldr r6, [r0, #8]
	ldr r4, [r0, #0xc]
	mov r0, #7
	str r0, [sp]
	ldr r0, _0225E9A4 ; =0x0000232F
	add r2, r1, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r3, #1
	bl ov92_0225DDD8
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #8
	bl SpriteSystem_NewSprite
	add r1, r5, #0
	add r1, #0xf0
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetAnim
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl ManagedSprite_TickFrame
	add r5, #0xf0
	ldr r0, [r5]
	mov r1, #7
	bl ManagedSprite_SetPaletteOverrideOffset
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_0225E9A4: .word 0x0000232F
	thumb_func_end ov92_0225E93C

