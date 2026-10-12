	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239784
	.extern ov72_0223A41C
	.extern ov72_0223A588

	.text

	.text
	thumb_func_start ov72_02239784
ov72_02239784: ; 0x02239784
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl ov72_0223A588
	add r4, r0, #0
	beq _022397E0
	cmp r4, #0
	ble _022397D2
	add r0, sp, #0
	add r1, sp, #0x10
	bl ov00_021ECB94
	add r0, r5, #0
	add r0, #0x9c
	add r1, r5, #0
	add r2, r5, #0
	str r4, [r0]
	add r1, #0x94
	add r2, #0x9c
	ldr r0, [r5]
	ldr r1, [r1]
	ldr r2, [r2]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r0, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, sp, #0
	bl sub_0202D720
	cmp r0, #0
	beq _022397CC
	mov r0, #0x14
	str r0, [r5, #0x1c]
	b _022397E0
_022397CC:
	mov r0, #0x10
	str r0, [r5, #0x1c]
	b _022397E0
_022397D2:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov72_0223A41C
	mov r0, #0x15
	str r0, [r5, #0x1c]
_022397E0:
	mov r0, #3
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov72_02239784

