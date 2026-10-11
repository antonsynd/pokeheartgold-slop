	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222C4B8
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_02230410
	.public ov40_02230638
	.public ov40_022306A0
	.public ov40_022307DC
	.public ov40_02230964
	.public ov40_02232D44
	.public ov40_02232ED4
	.public ov40_02232F50
	.public ov40_02232F88
	.public ov40_02245134

	.text

	thumb_func_start ov40_02232D44
ov40_02232D44: ; 0x02232D44
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _02232D58
	b _02232EAC
_02232D58:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02232D64: ; jump table
	.short _02232D70 - _02232D64 - 2 ; case 0
	.short _02232D90 - _02232D64 - 2 ; case 1
	.short _02232DB2 - _02232D64 - 2 ; case 2
	.short _02232E0E - _02232D64 - 2 ; case 3
	.short _02232E7E - _02232D64 - 2 ; case 4
	.short _02232E9C - _02232D64 - 2 ; case 5
_02232D70:
	mov r1, #6
	mov r2, #7
	bl ov40_022307DC
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02232EC2
_02232D90:
	bl ov40_02232F50
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02232EC8 ; =ov40_02245134
	ldr r2, _02232ECC ; =ov40_02232ED4
	mov r1, #3
	add r3, r4, #0
	bl TouchHitboxController_Create
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02232EC2
_02232DB2:
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ov40_02230638
	add r0, r5, #0
	add r0, #0x9c
	bl ov40_02230410
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov40_022307DC
	add r5, #0x9c
	add r0, r5, #0
	mov r1, #0
	bl ov40_022306A0
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02232EC2
_02232E0E:
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
	beq _02232E64
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #1
	bl ov40_022306A0
	add r0, r4, #0
	bl ov40_02232F88
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02232E56
	mov r0, #0xff
	b _02232E5A
_02232E56:
	ldr r0, [r4, #8]
	add r0, r0, #1
_02232E5A:
	str r0, [r4, #8]
	mov r0, #0x66
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_02232E64:
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
	b _02232EC2
_02232E7E:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02232EC2
_02232E9C:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02232EC2
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02232EC2
_02232EAC:
	ldr r0, _02232ED0 ; =0x000006D8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov40_0222C4B8
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
_02232EC2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02232EC8: .word ov40_02245134
_02232ECC: .word ov40_02232ED4
_02232ED0: .word 0x000006D8
	thumb_func_end ov40_02232D44

