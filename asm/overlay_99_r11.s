	.include "macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E5C4C
	.public ov99_021E5C88
	.extern _021E954C
	.extern ov99_021E9564
	.extern ov99_021E9760

	.text

	.text
	thumb_func_start ov99_021E5C4C
ov99_021E5C4C: ; 0x021E5C4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _021E5C5C
	bl GF_AssertFail
_021E5C5C:
	cmp r6, #3
	blo _021E5C64
	bl GF_AssertFail
_021E5C64:
	cmp r4, #5
	blo _021E5C6C
	bl GF_AssertFail
_021E5C6C:
	mov r0, #0x2c
	ldr r1, [r5]
	mul r0, r4
	add r1, r1, r0
	mov r0, #0xc
	mul r0, r6
	add r0, r1, r0
	ldr r0, [r0, #8]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov99_021E5C4C

	thumb_func_start ov99_021E5C88
ov99_021E5C88: ; 0x021E5C88
	push {r4, r5, r6, r7, lr}
	sub sp, #0xf4
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl BgConfig_Alloc
	add r3, sp, #4
	ldr r4, _021E5D18 ; =ov99_021E9564
	str r0, [r5, #4]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _021E5D1C ; =ov99_021E9760
	add r3, sp, #0x14
	mov r2, #0x1c
_021E5CB0:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5CB0
	ldr r4, _021E5D20 ; =_021E954C
	mov r7, #0
	add r6, sp, #0x14
_021E5CBE:
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	add r2, r6, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	bl BgClearTilemapBufferAndCommit
	ldrb r0, [r4]
	ldr r3, [r5, #0xc]
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	add r7, r7, #1
	add r6, #0x1c
	add r4, r4, #1
	cmp r7, #8
	blt _021E5CBE
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E5D24 ; =0x04000050
	mov r1, #8
	mov r2, #4
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E5D28 ; =0x04001050
	mov r1, #8
	mov r2, #2
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
	ldr r1, [r5, #0xc]
	mov r0, #0xb1
	bl NARC_New
	str r0, [r5, #8]
	add sp, #0xf4
	pop {r4, r5, r6, r7, pc}
	nop
_021E5D18: .word ov99_021E9564
_021E5D1C: .word ov99_021E9760
_021E5D20: .word _021E954C
_021E5D24: .word 0x04000050
_021E5D28: .word 0x04001050
	thumb_func_end ov99_021E5C88

