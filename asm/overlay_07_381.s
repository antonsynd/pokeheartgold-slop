	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02225CC4
	.extern ov07_0221C410
	.extern ov07_0221C4A8
	.extern ov07_0221FAA0
	.extern ov07_02225AE0
	.extern ov07_02225B38
	.extern ov07_02225BC4
	.extern ov07_02225C50
	.extern ov07_02231FE4
	.extern ov07_02232020
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_02225CC4
ov07_02225CC4: ; 0x02225CC4
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, #0x50
	add r5, r0, #0
	bl ov07_022324D8
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov07_02231FE4
	add r0, r5, #0
	mov r1, #3
	bl ov07_0221C4A8
	strh r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #4
	bl ov07_0221C4A8
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #0
	bl ov07_0221C4A8
	add r6, r0, #0
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x28
	add r3, sp, #4
	bl ov07_02232020
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_02225AE0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl ov07_0221C4A8
	cmp r0, #0
	beq _02225D46
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FAA0
	mov r3, #0x50
	sub r0, r3, r0
	str r0, [r4, #0x3c]
	mov r1, #0
	str r1, [r4, #0x40]
	str r1, [sp]
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	bl Pokepic_SetVisible
	ldr r0, [r4, #4]
	ldr r1, _02225DB8 ; =ov07_02225C50
	add r2, r4, #0
	bl ov07_0221C410
	add sp, #8
	pop {r4, r5, r6, pc}
_02225D46:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl Pokepic_GetAttr
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FAA0
	mov r3, #0x50
	sub r0, r3, r0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02225D86
	ldr r0, [r4, #0x3c]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x30]
	add r2, r1, #0
	bl Pokepic_SetVisible
	ldr r0, [r4, #4]
	ldr r1, _02225DBC ; =ov07_02225BC4
	add r2, r4, #0
	bl ov07_0221C410
	add sp, #8
	pop {r4, r5, r6, pc}
_02225D86:
	mov r0, #0
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x40]
	add r2, r1, r0
	str r2, [r4, #0x44]
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl Pokepic_SetAttr
	ldr r0, [r4, #0x3c]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x30]
	add r2, r1, #0
	mov r3, #0x50
	bl Pokepic_SetVisible
	ldr r0, [r4, #4]
	ldr r1, _02225DC0 ; =ov07_02225B38
	add r2, r4, #0
	bl ov07_0221C410
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02225DB8: .word ov07_02225C50
_02225DBC: .word ov07_02225BC4
_02225DC0: .word ov07_02225B38
	thumb_func_end ov07_02225CC4

