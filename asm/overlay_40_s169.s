	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02230ED8
	.extern ov40_0222BF80
	.extern ov40_0222C4DC
	.extern ov40_0222DAF0
	.extern ov40_02230E34
	.extern ov40_02230EB4

	.text

	.text
	thumb_func_start ov40_02230ED8
ov40_02230ED8: ; 0x02230ED8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #6
	bls _02230EE6
	b _022310DA
_02230EE6:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02230EF2: ; jump table
	.short _02230F00 - _02230EF2 - 2 ; case 0
	.short _02230FA2 - _02230EF2 - 2 ; case 1
	.short _02230FE6 - _02230EF2 - 2 ; case 2
	.short _02231032 - _02230EF2 - 2 ; case 3
	.short _02231056 - _02230EF2 - 2 ; case 4
	.short _0223107E - _02230EF2 - 2 ; case 5
	.short _022310A6 - _02230EF2 - 2 ; case 6
_02230F00:
	bl ov40_0222C4DC
	cmp r0, #1
	bne _02230F12
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222BF80
	b _022310E2
_02230F12:
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
	add r0, r4, #0
	bl ov40_0222DAF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _022310E8 ; =0x0000FFFE
	mov r1, #2
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	add r0, r4, #0
	bl ov40_0222DAF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _022310EC ; =0x0000BFFF
	mov r1, #0
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	add r0, r4, #0
	bl ov40_0222DAF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _022310F0 ; =0x00003FFE
	mov r1, #3
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	add r0, r4, #0
	bl ov40_0222DAF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _022310F4 ; =0x0000FFFF
	mov r1, #1
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	ldr r0, _022310F8 ; =0x000006F4
	ldr r0, [r4, r0]
	bl sub_02087A30
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02087A30
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022310E2
_02230FA2:
	bl IsPaletteFadeFinished
	cmp r0, #0
	bne _02230FAC
	b _022310E2
_02230FAC:
	ldr r0, _022310F8 ; =0x000006F4
	mov r1, #0x80
	ldr r0, [r4, r0]
	mov r2, #0x10
	bl sub_02087948
	ldr r0, _022310F8 ; =0x000006F4
	mov r1, #0x80
	ldr r0, [r4, r0]
	mov r2, #0xd8
	bl sub_020878B8
	ldr r0, _022310F8 ; =0x000006F4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_020879E0
	ldr r0, _022310F8 ; =0x000006F4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_020878B0
	ldr r0, _022310FC ; =0x00000576
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022310E2
_02230FE6:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x19
	blt _022310E2
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x80
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x90
	bl sub_02087948
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0x60
	bl sub_020878B8
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020878B0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022310E2
_02231032:
	ldr r1, [r4, #0xc]
	add r1, r1, #1
	str r1, [r4, #0xc]
	cmp r1, #0x12
	blt _022310E2
	bl ov40_02230E34
	ldr r0, _022310F8 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020879E0
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022310E2
_02231056:
	ldr r0, [r4, #0xc]
	cmp r0, #0x10
	bge _02231078
	add r0, r0, #4
	str r0, [r4, #0xc]
	ldr r0, _022310F4 ; =0x0000FFFF
	mov r2, #0xf
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #0
	lsl r2, r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _022310E2
_02231078:
	add r0, r1, #1
	str r0, [r4, #8]
	b _022310E2
_0223107E:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ble _022310A0
	sub r0, r0, #4
	str r0, [r4, #0xc]
	ldr r0, _022310F4 ; =0x0000FFFF
	mov r2, #0xf
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #0
	lsl r2, r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _022310E2
_022310A0:
	add r0, r1, #1
	str r0, [r4, #8]
	b _022310E2
_022310A6:
	bl System_GetTouchHeld
	cmp r0, #1
	bne _022310E2
	add r0, r4, #0
	bl ov40_02230EB4
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	ldr r0, _022310F8 ; =0x000006F4
	ldr r0, [r4, r0]
	bl sub_02087A54
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02087A54
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022310E2
_022310DA:
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222BF80
_022310E2:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_022310E8: .word 0x0000FFFE
_022310EC: .word 0x0000BFFF
_022310F0: .word 0x00003FFE
_022310F4: .word 0x0000FFFF
_022310F8: .word 0x000006F4
_022310FC: .word 0x00000576
	thumb_func_end ov40_02230ED8

