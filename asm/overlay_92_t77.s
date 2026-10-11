	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225FC9C
	.extern ov92_02260428
	.extern ov92_02260628
	.extern ov92_02260A38
	.extern ov92_02263C34
	.extern ov92_02263C3C
	.extern ov92_02263C5C
	.extern ov92_02263C68

	.text

	.text
	thumb_func_start ov92_0225FC9C
ov92_0225FC9C: ; 0x0225FC9C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #0x10
	add r1, sp, #0xc
	bl System_GetTouchHeldCoords
	ldr r0, _0225FE78 ; =0x00002B84
	mov r1, #0
	str r1, [r5, r0]
	add r0, #0x30
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225FCC4
	ldr r0, _0225FE7C ; =ov92_02263C3C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl TouchscreenHitbox_FindHitboxAtPoint
	b _0225FCCE
_0225FCC4:
	ldr r0, _0225FE80 ; =ov92_02263C34
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl TouchscreenHitbox_FindHitboxAtPoint
_0225FCCE:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0225FD72
	ldr r3, _0225FE84 ; =0x00001FD4
	mov r0, #0
	mov r2, #0xc3
	str r0, [r5, r3]
	add r1, r3, #4
	lsl r2, r2, #2
	str r0, [r5, r1]
	ldr r1, [r5, r2]
	cmp r1, #0
	beq _0225FD2E
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #0xfe
	add r0, r5, r0
	lsl r1, r1, #0x16
	bl ov92_02260628
	mov r0, #0x32
	lsl r0, r0, #4
	mov r1, #0x3f
	add r0, r5, r0
	lsl r1, r1, #0x18
	bl ov92_02260628
	ldr r4, _0225FE88 ; =ov92_02263C5C
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0x4d
	str r0, [r3]
	add r0, r2, #0
	ldr r2, _0225FE8C ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
	ldr r0, _0225FE78 ; =0x00002B84
	mov r1, #1
	add sp, #0x2c
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, pc}
_0225FD2E:
	add r1, r2, #4
	str r0, [r5, r1]
	add r2, #8
	str r0, [r5, r2]
	add r1, r3, #4
	ldr r2, [r5, r1]
	ldr r1, [r5, r3]
	ldr r3, _0225FE90 ; =0x3FF0A3D7
	str r2, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	bl ov92_02260428
	ldr r0, _0225FE94 ; =0x00001FD8
	ldr r2, [r5, r0]
	sub r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _0225FE98 ; =0x3E6147AE
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r3, r1, #0
	bl ov92_02260428
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
_0225FD72:
	ldr r0, _0225FE9C ; =0x00001FCC
	mov r1, #0x28
	ldr r0, [r5, r0]
	asr r4, r0, #0xc
	mov r0, #0x64
	sub r0, r0, r4
	bl _s32_div_f
	bl _fflt
	add r6, r0, #0
	cmp r4, #0x5f
	blt _0225FD8E
	ldr r6, _0225FEA0 ; =0x3DCCCCCD
_0225FD8E:
	add r0, r6, #0
	bl _f2d
	ldr r2, _0225FEA4 ; =0xC28F5C29
	ldr r3, _0225FEA8 ; =0x3FCC28F5
	bl _dgeq
	blo _0225FDA2
	ldr r4, _0225FE98 ; =0x3E6147AE
	b _0225FDBA
_0225FDA2:
	add r0, r6, #0
	bl _f2d
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _0225FEA4 ; =0xC28F5C29
	ldr r1, _0225FEA8 ; =0x3FCC28F5
	bl _dsub
	bl _d2f
	add r4, r0, #0
_0225FDBA:
	ldr r0, _0225FE84 ; =0x00001FD4
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0225FDCC
	ldr r1, [sp, #0x10]
	str r1, [r5, r0]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r1, [r5, r0]
_0225FDCC:
	ldr r3, _0225FE94 ; =0x00001FD8
	ldr r0, [r5, r3]
	sub r3, r3, #4
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0x1e
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov92_02260428
	ldr r3, _0225FE94 ; =0x00001FD8
	ldr r0, [r5, r3]
	sub r3, r3, #4
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov92_02260428
	ldr r4, _0225FEAC ; =ov92_02263C68
	add r3, sp, #0x14
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0x4d
	str r0, [r3]
	add r0, r2, #0
	ldr r2, _0225FE8C ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
	ldr r0, _0225FE78 ; =0x00002B84
	mov r2, #1
	add r1, r0, #0
	str r2, [r5, r0]
	add r1, #0x10
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _0225FE3E
	add r0, #0x10
	str r2, [r5, r0]
_0225FE3E:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0225FE66
	ldr r0, _0225FEB0 ; =0x0000058A
	bl IsSEPlaying
	cmp r0, #0
	bne _0225FE54
	ldr r0, _0225FEB0 ; =0x0000058A
	bl PlaySE
_0225FE54:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov92_02260A38
_0225FE66:
	ldr r1, [sp, #0x10]
	ldr r0, _0225FE84 ; =0x00001FD4
	str r1, [r5, r0]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_0225FE78: .word 0x00002B84
_0225FE7C: .word ov92_02263C3C
_0225FE80: .word ov92_02263C34
_0225FE84: .word 0x00001FD4
_0225FE88: .word ov92_02263C5C
_0225FE8C: .word 0x00001FC8
_0225FE90: .word 0x3FF0A3D7
_0225FE94: .word 0x00001FD8
_0225FE98: .word 0x3E6147AE
_0225FE9C: .word 0x00001FCC
_0225FEA0: .word 0x3DCCCCCD
_0225FEA4: .word 0xC28F5C29
_0225FEA8: .word 0x3FCC28F5
_0225FEAC: .word ov92_02263C68
_0225FEB0: .word 0x0000058A
	thumb_func_end ov92_0225FC9C

