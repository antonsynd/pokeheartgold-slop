	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E8828
	.extern ov99_021E87D0
	.extern ov99_021E89A4
	.extern ov99_021E8FEC
	.extern ov99_021E9020
	.extern ov99_021E9038
	.extern ov99_021EA35A

	.text

	.text
	thumb_func_start ov99_021E8828
ov99_021E8828: ; 0x021E8828
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl ov99_021E89A4
	add r0, r5, #0
	bl ov99_021E9038
	add r0, r5, #0
	bl ov99_021E87D0
	ldr r6, _021E88D0 ; =ov99_021EA35A
	mov r4, #0
_021E8842:
	ldr r0, [r5, #0x10]
	add r1, r4, #7
	bl ov98_0221EE84
	ldr r0, [r5, #0x10]
	add r1, r4, #7
	bl ov98_0221EEDC
	add r2, r5, #0
	add r2, #0xb0
	ldr r2, [r2]
	ldr r0, [r5, #0x10]
	ldrb r2, [r6, r2]
	add r1, r4, #7
	bl ov98_0221EEEC
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #5
	blt _021E8842
	add r0, r5, #0
	mov r1, #0
	bl ov99_021E8FEC
	ldr r0, [r5, #4]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #0x10]
	mov r1, #3
	bl ov98_0221EE84
	ldr r0, [r5, #0x10]
	mov r1, #6
	bl ov98_0221EE84
	ldr r0, [r5, #0x10]
	mov r1, #0x11
	bl ov98_0221EE84
	ldr r0, [r5, #0x10]
	mov r1, #0x12
	bl ov98_0221EE84
	add r0, r5, #0
	bl ov99_021E9020
	mov r3, #1
	str r3, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #2
	mov r2, #0x3f
	bl ov98_0221EC08
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #0x40
	mov r3, #0
	bl ov98_0221EC08
	mov r0, #0
	add r5, #0xb4
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E88D0: .word ov99_021EA35A
	thumb_func_end ov99_021E8828

