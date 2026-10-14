	.include "macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F2530
	.extern ov18_021E6D10
	.extern ov18_021F118C

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F2530
ov18_021F2530: ; 0x021F2530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp]
	add r6, r0, #0
	ldr r0, [sp]
	str r2, [sp, #4]
	cmp r0, #0
	beq _021F254C
	ldr r0, [r6]
	ldr r0, [r0]
	bl Pokedex_GetInternationalViewFlag
	cmp r0, #0
	bne _021F257A
_021F254C:
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, [sp, #4]
	add r7, r0, #6
	cmp r4, r7
	bhs _021F263E
	lsl r0, r4, #2
	add r5, r6, r0
	mov r6, #0x67
	lsl r6, r6, #4
_021F2562:
	ldr r0, [r5, r6]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r5, r5, #4
	cmp r4, r7
	blo _021F2562
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021F257A:
	ldr r0, [sp, #4]
	mov r7, #0
	add r0, r0, #5
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [sp, #4]
	cmp r5, r0
	blo _021F263E
	lsl r0, r5, #2
	add r4, r6, r0
_021F258E:
	ldr r0, [sp, #4]
	sub r0, r5, r0
	str r0, [sp, #8]
	bl sub_020912AC
	bl sub_02091294
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldr r1, [sp]
	lsl r2, r2, #0x10
	add r0, r6, #0
	lsr r2, r2, #0x10
	bl ov18_021E6D10
	cmp r0, #1
	beq _021F25B6
	ldr r0, [sp, #0xc]
	cmp r0, #2
	bne _021F2624
_021F25B6:
	ldr r0, _021F2644 ; =0x0000185C
	ldrb r0, [r6, r0]
	bl LanguageToDexFlag
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	bl sub_020912AC
	add r2, r0, #0
	ldr r0, [sp, #0x10]
	cmp r2, r0
	bne _021F25D8
	add r0, r6, #0
	add r1, r5, #0
	bl ov18_021F118C
	b _021F25E2
_021F25D8:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r2, #6
	bl ov18_021F118C
_021F25E2:
	mov r0, #0x67
	lsl r0, r0, #4
	add r1, sp, #0x14
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0x14
	bl ManagedSprite_GetPositionXY
	mov r1, #5
	sub r2, r1, r7
	mov r1, #0x18
	mul r1, r2
	mov r0, #0x67
	lsl r0, r0, #4
	add r1, #0x7c
	lsl r1, r1, #0x10
	add r3, sp, #0x14
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	b _021F2630
_021F2624:
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_021F2630:
	sub r0, r5, #1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [sp, #4]
	sub r4, r4, #4
	cmp r5, r0
	bhs _021F258E
_021F263E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2644: .word 0x0000185C
	thumb_func_end ov18_021F2530

