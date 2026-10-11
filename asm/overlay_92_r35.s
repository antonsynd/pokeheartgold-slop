	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225DE70
	.extern ov92_0225DDD8
	.extern ov92_02263B54

	.text

	.text
	thumb_func_start ov92_0225DE70
ov92_0225DE70: ; 0x0225DE70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r1, [r5, #0x14]
	add r4, sp, #0xc
	ldr r0, [r1, #8]
	ldr r7, [r1, #0xc]
	ldr r1, _0225DEE8 ; =ov92_02263B54
	str r0, [sp, #8]
	ldrh r2, [r1]
	add r0, sp, #0xc
	mov r6, #0
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
_0225DE96:
	mov r0, #1
	str r0, [sp]
	ldr r0, _0225DEEC ; =0x0000232C
	mov r1, #0
	str r0, [sp, #4]
	ldrsh r1, [r4, r1]
	add r0, sp, #0x14
	mov r2, #0xe0
	mov r3, #1
	bl ov92_0225DDD8
	mov r0, #0
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	add r1, r7, #0
	add r2, sp, #0x14
	bl SpriteSystem_NewSprite
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl ManagedSprite_TickTwoFrames
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetPaletteOverrideOffset
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #4
	blt _0225DE96
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225DEE8: .word ov92_02263B54
_0225DEEC: .word 0x0000232C
	thumb_func_end ov92_0225DE70

