	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E5EB4
	.public ov99_021E5F74
	.extern ov99_021E95D8
	.extern ov99_021E95DC
	.extern ov99_021E9690

	.text

	.text
	thumb_func_start ov99_021E5EB4
ov99_021E5EB4: ; 0x021E5EB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0
	beq _021E5EC6
	mov r6, #0xff
	mvn r6, r6
	b _021E5ECA
_021E5EC6:
	mov r6, #1
	lsl r6, r6, #8
_021E5ECA:
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r1, _021E5F68 ; =ov99_021E95D8
	str r0, [sp, #0xc]
	lsl r4, r4, #3
	ldr r0, [r5, #8]
	ldr r1, [r1, r4]
	ldr r2, [r5, #4]
	mov r3, #2
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r1, _021E5F6C ; =ov99_021E95DC
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	ldr r1, [r1, r4]
	ldr r2, [r5, #4]
	mov r3, #5
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #0
	add r3, r6, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r5, #4]
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	bl BgSetPosTextAndCommit
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	neg r0, r6
	lsl r0, r0, #0x10
	ldr r7, _021E5F70 ; =ov99_021E9690
	mov r4, #0
	asr r6, r0, #0x10
_021E5F46:
	mov r0, #0xc
	mul r0, r4
	ldr r0, [r7, r0]
	add r1, r6, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021E5F46
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E5F68: .word ov99_021E95D8
_021E5F6C: .word ov99_021E95DC
_021E5F70: .word ov99_021E9690
	thumb_func_end ov99_021E5EB4

	thumb_func_start ov99_021E5F74
ov99_021E5F74: ; 0x021E5F74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _021E5FE0
	ldr r0, [r5, #4]
	mov r1, #2
	bl Bg_GetXpos
	asr r6, r0, #2
	cmp r0, r6
	bne _021E5F90
	mov r6, #0
_021E5F90:
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #0
	add r3, r6, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5, #4]
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	bl ScheduleSetBgPosText
	ldr r7, _021E5FE4 ; =ov99_021E9690
	mov r4, #0
_021E5FAC:
	mov r0, #0xc
	mul r0, r4
	add r2, r7, r0
	ldr r1, [r2, #4]
	ldr r0, [r7, r0]
	ldr r2, [r2, #8]
	lsl r0, r0, #2
	add r0, r5, r0
	sub r1, r1, r6
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021E5FAC
	cmp r6, #0
	bne _021E5FE0
	mov r0, #0
	add r5, #0x8c
	str r0, [r5]
_021E5FE0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5FE4: .word ov99_021E9690
	thumb_func_end ov99_021E5F74

