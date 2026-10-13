	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02234A38
	.extern ov40_0222BF80
	.extern ov40_0222DA00
	.extern ov40_0222DA84
	.extern ov40_0222DED0
	.extern ov40_0222DFB0
	.extern ov40_022307DC
	.extern ov40_02230944
	.extern ov40_02235FD0
	.extern ov40_02235FFC
	.extern ov40_0223610C
	.extern ov40_022451C4
	.extern ov40_02245708

	.text

	.text
	thumb_func_start ov40_02234A38
ov40_02234A38: ; 0x02234A38
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _02234A4A
	b _02234B90
_02234A4A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02234A56: ; jump table
	.short _02234A60 - _02234A56 - 2 ; case 0
	.short _02234AA6 - _02234A56 - 2 ; case 1
	.short _02234AEE - _02234A56 - 2 ; case 2
	.short _02234B1A - _02234A56 - 2 ; case 3
	.short _02234B34 - _02234A56 - 2 ; case 4
_02234A60:
	mov r1, #0x3c
	mov r2, #7
	bl ov40_022307DC
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02234BB0 ; =ov40_02245708
	ldr r2, _02234BB4 ; =ov40_02235FD0
	mov r1, #9
	add r3, r4, #0
	bl TouchHitboxController_Create
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234BAC
_02234AA6:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02234AD4
	add r0, r4, #0
	mov r1, #0x72
	bl ov40_0222DED0
	add r0, r4, #0
	bl ov40_02235FFC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02234AD4:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02234BAC
_02234AEE:
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl TouchHitboxController_IsTriggered
	ldr r0, _02234BB8 ; =ov40_022451C4
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	bne _02234B0C
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02234BAC
_02234B0C:
	add r0, r4, #0
	bl ov40_02230944
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234BAC
_02234B1A:
	bl ov40_0223610C
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl TouchHitboxController_Destroy
	add r0, r4, #0
	bl ov40_0222DFB0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02234B34:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02234B56
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _02234BAC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234BAC
_02234B56:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _02234B76
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02234B76:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02234BAC
_02234B90:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02234BA4
	add r0, r4, #0
	mov r1, #4
	bl ov40_0222BF80
	b _02234BAC
_02234BA4:
	add r0, r4, #0
	mov r1, #5
	bl ov40_0222BF80
_02234BAC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02234BB0: .word ov40_02245708
_02234BB4: .word ov40_02235FD0
_02234BB8: .word ov40_022451C4
	thumb_func_end ov40_02234A38

