	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223D544
	.extern ov40_0222FC4C
	.extern ov40_02236158
	.extern ov40_0223615C
	.extern ov40_02238EB8
	.extern ov40_02238EBC
	.extern ov40_0223A324
	.extern ov40_0223A360
	.extern ov40_02242DF0
	.extern ov40_02242E14
	.extern ov40_02242E48

	.text

	.text
	thumb_func_start ov40_0223D544
ov40_0223D544: ; 0x0223D544
	push {r4, lr}
	sub sp, #0x40
	add r4, r0, #0
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Save_SysInfo_Get
	bl Save_SysInfo_GetDwcProfileId
	str r0, [sp]
	mov r0, #0x6d
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, _0223D5A4 ; =ov40_02236158
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223D5A8 ; =ov40_0223615C
	str r4, [sp, #0x3c]
	str r0, [sp, #0x14]
	ldr r0, _0223D5AC ; =ov40_02238EB8
	add r4, #0x68
	str r0, [sp, #0x18]
	ldr r0, _0223D5B0 ; =ov40_02238EBC
	str r0, [sp, #0x1c]
	ldr r0, _0223D5B4 ; =ov40_0223A324
	str r0, [sp, #0x20]
	ldr r0, _0223D5B8 ; =ov40_0223A360
	str r0, [sp, #0x24]
	ldr r0, _0223D5BC ; =ov40_02242DF0
	str r0, [sp, #0x28]
	ldr r0, _0223D5C0 ; =ov40_0222FC4C
	str r0, [sp, #0x2c]
	ldr r0, _0223D5C4 ; =ov40_02242E14
	str r0, [sp, #0x30]
	ldr r0, _0223D5C8 ; =ov40_02242E48
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl ov39_02227208
	add sp, #0x40
	pop {r4, pc}
	.balign 4, 0
_0223D5A4: .word ov40_02236158
_0223D5A8: .word ov40_0223615C
_0223D5AC: .word ov40_02238EB8
_0223D5B0: .word ov40_02238EBC
_0223D5B4: .word ov40_0223A324
_0223D5B8: .word ov40_0223A360
_0223D5BC: .word ov40_02242DF0
_0223D5C0: .word ov40_0222FC4C
_0223D5C4: .word ov40_02242E14
_0223D5C8: .word ov40_02242E48
	thumb_func_end ov40_0223D544

