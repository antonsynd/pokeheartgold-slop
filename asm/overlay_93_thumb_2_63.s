	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02262444
	.extern ov93_02262F38

	.text

	.text
	thumb_func_start ov93_02262444
ov93_02262444: ; 0x02262444
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r6, #0
_0226244C:
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	ldr r2, _02262480 ; =ov93_02262F38
	bl SpriteSystem_NewSprite
	add r4, r0, #0
	mov r1, #0x1b
	bl ManagedSprite_SetAnim
	add r0, r4, #0
	mov r1, #1
	bl ManagedSprite_SetOamMode
	add r0, r4, #0
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4]
	bl Sprite_TickFrame
	add r6, r6, #1
	stmia r5!, {r4}
	cmp r6, #2
	blt _0226244C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262480: .word ov93_02262F38
	thumb_func_end ov93_02262444

