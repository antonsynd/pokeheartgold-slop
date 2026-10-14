	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0224462C
	.extern ov40_0222BF80
	.extern ov40_0222DA00
	.extern ov40_0222DA84
	.extern ov40_0222FCCC
	.extern ov40_0222FDC4
	.extern ov40_022306E0
	.extern ov40_022306F0
	.extern ov40_02230944
	.extern ov40_0224428C
	.extern ov40_022442CC
	.extern ov40_022442F0
	.extern ov40_022443B4
	.extern ov40_02244494
	.extern ov40_02245CA0
	.extern ov40_02245CA4

	.text

	.text
	thumb_func_start ov40_0224462C
ov40_0224462C: ; 0x0224462C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #6
	bls _02244640
	b _02244808
_02244640:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224464C: ; jump table
	.short _0224465A - _0224464C - 2 ; case 0
	.short _022446A6 - _0224464C - 2 ; case 1
	.short _022446FC - _0224464C - 2 ; case 2
	.short _0224473E - _0224464C - 2 ; case 3
	.short _02244782 - _0224464C - 2 ; case 4
	.short _0224478E - _0224464C - 2 ; case 5
	.short _022447D8 - _0224464C - 2 ; case 6
_0224465A:
	bl ov40_022443B4
	add r0, r4, #0
	mov r1, #0
	bl ov40_0224428C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x54
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
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
	b _0224481E
_022446A6:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _022446E2
	ldr r2, _02244824 ; =0x0000086C
	ldr r1, _02244828 ; =0x0000011A
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov40_022442F0
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022446E2:
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
	b _0224481E
_022446FC:
	ldr r0, _0224482C ; =ov40_02245CA0
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0224471E
	add r0, r4, #0
	bl ov40_02230944
	ldr r1, _02244830 ; =0x0000011B
	add r0, r4, #0
	mov r2, #0
	bl ov40_022442F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_0224471E:
	ldr r0, _02244834 ; =ov40_02245CA4
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0224481E
	add r0, r4, #0
	bl ov40_02230944
	mov r0, #1
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl ov40_022442CC
	mov r0, #4
	str r0, [r4, #8]
	b _0224481E
_0224473E:
	ldr r0, _0224482C ; =ov40_02245CA0
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _02244760
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	bl ov40_022306E0
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_02244760:
	ldr r0, _02244834 ; =ov40_02245CA4
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0224481E
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	bl ov40_022442CC
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_02244782:
	bl ov40_02244494
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_0224478E:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _022447BE
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _022447B8
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
	b _022447BE
_022447B8:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022447BE:
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
	b _0224481E
_022447D8:
	bl ov40_022306F0
	cmp r0, #0
	beq _022447FE
	add r0, r4, #0
	bl ov40_0222FDC4
	add r0, r4, #0
	bl ov40_0222FCCC
	ldr r1, _02244838 ; =0x0000011D
	add r0, r4, #0
	mov r2, #0
	bl ov40_022442F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_022447FE:
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
	b _0224481E
_02244808:
	bl System_GetTouchNew
	cmp r0, #0
	beq _0224481E
	add r0, r4, #0
	bl ov40_022442CC
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
_0224481E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02244824: .word 0x0000086C
_02244828: .word 0x0000011A
_0224482C: .word ov40_02245CA0
_02244830: .word 0x0000011B
_02244834: .word ov40_02245CA4
_02244838: .word 0x0000011D
	thumb_func_end ov40_0224462C

