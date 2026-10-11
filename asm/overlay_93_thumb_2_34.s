	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02261164
	.extern ov93_02262444
	.extern ov93_02262C7A
	.extern ov93_02262E9C
	.extern ov93_02262ED0
	.extern ov93_02262F04

	.text

	.text
	thumb_func_start ov93_02261164
ov93_02261164: ; 0x02261164
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r4, _022612CC ; =ov93_02262E9C
	add r5, r0, #0
	str r1, [sp]
	add r3, sp, #0xc
	mov r2, #6
_02261172:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02261172
	ldr r0, [r4]
	ldr r4, [sp]
	str r0, [r3]
	mov r0, #0
	ldr r7, _022612D0 ; =ov93_02262C7A
	str r0, [sp, #8]
_02261186:
	ldr r0, [sp]
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	bl GF_SinDegFX32
	asr r1, r0, #0x1f
	mov r2, #0x4c
	mov r3, #0
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _022612D4 ; =0
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [sp]
	add r6, #0x80
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	bl GF_CosDegFX32
	asr r1, r0, #0x1f
	mov r2, #0x44
	mov r3, #0
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022612D4 ; =0
	adc r1, r2
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	mov r0, #0x62
	sub r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, sp, #0xc
	bl SpriteSystem_NewSprite
	ldr r2, [sp, #4]
	lsl r1, r6, #0x10
	sub r2, #0x18
	lsl r2, r2, #0x10
	mov r3, #0x16
	str r0, [r4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldrh r1, [r7, #2]
	ldr r0, [r4]
	bl ManagedSprite_SetAnim
	ldr r0, [r4]
	ldr r0, [r0]
	bl Sprite_TickFrame
	ldr r0, [r4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _022612D8 ; =ov93_02262ED0
	bl SpriteSystem_NewSprite
	mov r1, #0
	mov r3, #0x16
	add r2, r1, #0
	lsl r3, r3, #0x10
	str r0, [r4, #4]
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl Sprite_TickFrame
	ldr r0, [r4, #4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _022612DC ; =ov93_02262F04
	bl SpriteSystem_NewSprite
	ldr r2, [sp, #4]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	mov r3, #0x16
	str r0, [r4, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [r4, #8]
	mov r1, #1
	bl ManagedSprite_SetOamMode
	ldr r0, [r4, #8]
	mov r1, #1
	bl ManagedSprite_SetAffineOverwriteMode
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r1, [sp, #8]
	ldr r0, [r4, #8]
	add r1, #0x22
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #8]
	ldr r0, [r0]
	bl Sprite_TickFrame
	ldr r0, [r4, #8]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x30
	bl ov93_02262444
	ldr r0, [sp, #8]
	add r4, #0x4c
	add r0, r0, #1
	add r7, r7, #2
	str r0, [sp, #8]
	cmp r0, #3
	bge _022612B4
	b _02261186
_022612B4:
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0, #8]
	bl ManagedSprite_SetDrawFlag
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022612CC: .word ov93_02262E9C
_022612D0: .word ov93_02262C7A
_022612D4: .word 0
_022612D8: .word ov93_02262ED0
_022612DC: .word ov93_02262F04
	thumb_func_end ov93_02261164

