	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E8C04
	.public ov99_021E8C50
	.extern ov99_021E8C88
	.extern ov99_021E8D5C
	.extern ov99_021E8D88
	.extern ov99_021E8EBC
	.extern ov99_021E8F50
	.extern ov99_021EA3AC

	.text

	.text
	thumb_func_start ov99_021E8C04
ov99_021E8C04: ; 0x021E8C04
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r5, _021E8C4C ; =ov99_021EA3AC
	add r3, sp, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	ldr r0, [r4, #0xc]
	mov r2, #0x25
	bl ov98_0221E5E0
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov99_021E8C88
	add r0, r4, #0
	bl ov99_021E8D5C
	add r0, r4, #0
	bl ov99_021E8D88
	add r0, r4, #0
	bl ov99_021E8EBC
	add r0, r4, #0
	bl ov99_021E8C50
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021E8C4C: .word ov99_021EA3AC
	thumb_func_end ov99_021E8C04

	thumb_func_start ov99_021E8C50
ov99_021E8C50: ; 0x021E8C50
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021E8C60
	mov r5, #0
	b _021E8C76
_021E8C60:
	mov r0, #0xac
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	bne _021E8C74
	mov r5, #1
	b _021E8C76
_021E8C74:
	mov r5, #0
_021E8C76:
	add r0, r4, #0
	bl ov99_021E8F50
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov99_021E8C50

