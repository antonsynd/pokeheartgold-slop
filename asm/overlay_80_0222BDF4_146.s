	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222F3FC
	.public ov80_0223BD4C

	.text

	thumb_func_start ov80_0222F3FC
ov80_0222F3FC: ; 0x0222F3FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r5, _0222F43C ; =ov80_0223BD4C
	add r6, r2, #0
	add r3, r0, #0
	add r7, r1, #0
	add r4, sp, #0
	mov r2, #6
_0222F40C:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0222F40C
	ldr r0, [r5]
	add r2, sp, #0
	str r0, [r4]
	add r0, sp, #0
	strh r7, [r0]
	strh r6, [r0, #2]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [r3, #0x34]
	ldr r1, [r3, #0x38]
	bl SpriteSystem_NewSprite
	add r4, r0, #0
	bl ManagedSprite_TickFrame
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0222F43C: .word ov80_0223BD4C
	thumb_func_end ov80_0222F3FC

