	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223A7DC
	.extern ov57_0223866C
	.extern ov57_022387C0
	.extern ov57_02238AF0
	.extern ov57_02239240
	.extern ov57_02239728
	.extern ov57_02239B0C
	.extern ov57_02239BAC
	.extern ov57_02239BCC
	.extern ov57_0223A034
	.extern ov57_0223B828
	.extern ov57_0223B940
	.extern ov57_0223B948

	.text

	.text
	thumb_func_start ov57_0223A7DC
ov57_0223A7DC: ; 0x0223A7DC
	push {r4, lr}
	ldr r1, _0223A8F0 ; =0x00000404
	add r4, r0, #0
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _0223A7F2
	cmp r2, #1
	beq _0223A820
	cmp r2, #2
	beq _0223A8B4
	b _0223A8EC
_0223A7F2:
	add r0, r1, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0223A80C
	add r0, r1, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r1, #0xc
	sub r0, r0, #1
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
_0223A80C:
	mov r0, #0
	add r1, #0xc
	str r0, [r4, r1]
	bl ov57_02239BCC
	ldr r0, _0223A8F0 ; =0x00000404
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223A8EC
_0223A820:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223A8EC
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #3
	add r1, r0, #0
	bl SetBgPriority
	mov r0, #7
	mov r1, #3
	bl SetBgPriority
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add r0, r4, #0
	mov r1, #0
	bl ov57_0223A034
	add r0, r4, #0
	mov r1, #0
	bl ov57_02239240
	add r0, r4, #0
	mov r1, #0
	bl ov57_022387C0
	add r0, r4, #0
	add r0, #0xec
	mov r1, #1
	bl sub_0200E5D4
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #3
	mov r2, #7
	mov r3, #0
	bl ov57_02239728
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r4, r0
	bl CopyWindowToVram
	add r0, r4, #0
	mov r1, #1
	bl ov57_0223866C
	ldr r2, _0223A8F4 ; =0x04000304
	ldr r1, _0223A8F8 ; =0xFFFF7FFF
	ldrh r0, [r2]
	and r0, r1
	strh r0, [r2]
	add r0, r4, #0
	asr r1, r1, #0x10
	bl ov57_02238AF0
	add r0, r4, #0
	mov r1, #0
	bl ov57_0223B948
	bl ov57_02239BAC
	ldr r0, _0223A8F0 ; =0x00000404
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223A8EC
_0223A8B4:
	bl ov57_0223B940
	cmp r0, #1
	beq _0223A8EC
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223A8EC
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r1, #0
	add r0, r4, #0
	mov r2, #0xff
	add r3, r1, #0
	bl ov57_0223B828
	add r0, r4, #0
	bl ov57_02239B0C
	ldr r0, _0223A8F0 ; =0x00000404
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0223A8EC:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0223A8F0: .word 0x00000404
_0223A8F4: .word 0x04000304
_0223A8F8: .word 0xFFFF7FFF
	thumb_func_end ov57_0223A7DC

