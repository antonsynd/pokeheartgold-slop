	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E73A4

	.text

	.text
	thumb_func_start ov68_021E73A4
ov68_021E73A4: ; 0x021E73A4
	push {r3, r4, r5, lr}
	add r3, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	cmp r3, #4
	bhs _021E73D2
	mov r0, #0x4b
	lsl r2, r3, #5
	lsl r0, r0, #2
	add r2, #0x20
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #0
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	b _021E7414
_021E73D2:
	cmp r3, #6
	bhs _021E73FA
	mov r0, #0x4b
	lsl r0, r0, #2
	sub r2, r3, #4
	mov r1, #0x28
	mul r1, r2
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	mov r2, #0xa8
	bl ManagedSprite_SetPositionXY
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ManagedSprite_SetAnimationFrame
	b _021E7414
_021E73FA:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc0
	mov r2, #0xa0
	bl ManagedSprite_SetPositionXY
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl ManagedSprite_SetAnimationFrame
_021E7414:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ManagedSprite_SetPaletteOverride
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov68_021E73A4

