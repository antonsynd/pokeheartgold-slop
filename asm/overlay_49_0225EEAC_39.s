	.include "asm/macros.inc"
	.include "overlay_49_0225EEAC.inc"
	.include "global.inc"
	.public ov49_0225FCA8
	.extern ov49_0225EF88
	.extern ov49_0225EF8C
	.extern ov49_0225EF90
	.extern ov49_0225EF98
	.extern ov49_0225F334
	.extern ov49_02269B38

    .text

	.text
	thumb_func_start ov49_0225FCA8
ov49_0225FCA8: ; 0x0225FCA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov49_02259FE8
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_02259FEC
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov49_02259FF0
	str r0, [sp, #0xc]
	bl ov49_02258DAC
	add r6, r0, #0
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #5
	bhi _0225FDC2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FCE6: ; jump table
	.short _0225FCF2 - _0225FCE6 - 2 ; case 0
	.short _0225FD16 - _0225FCE6 - 2 ; case 1
	.short _0225FD3C - _0225FCE6 - 2 ; case 2
	.short _0225FD6C - _0225FCE6 - 2 ; case 3
	.short _0225FD86 - _0225FCE6 - 2 ; case 4
	.short _0225FD9E - _0225FCE6 - 2 ; case 5
_0225FCF2:
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #8]
	ldrh r2, [r2]
	ldrh r3, [r3, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov49_0225F334
	add r0, r7, #0
	mov r1, #0
	bl ov45_0222A520
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FDC2
_0225FD16:
	add r0, r4, #0
	bl ov49_02259FEC
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_0225A030
	cmp r0, #0
	bne _0225FDC2
	add r0, r5, #0
	bl ov49_0225EF90
	ldrh r3, [r7, #4]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #2
	bl ov49_02258EAC
	b _0225FDC2
_0225FD3C:
	add r0, r6, #0
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _0225FDC2
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A018
	add r0, r7, #0
	bl ov45_0222A4B8
	cmp r0, #1
	bne _0225FD62
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FDC2
_0225FD62:
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _0225FDC2
_0225FD6C:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x5b
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FDC2
_0225FD86:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _0225FDC2
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FDC2
_0225FD9E:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_0225A010
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_0225A02C
	add r1, r0, #0
	ldr r2, _0225FDC8 ; =ov49_02269B38
	add r0, r5, #0
	mov r3, #0
	bl ov49_0225EF98
_0225FDC2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FDC8: .word ov49_02269B38
	thumb_func_end ov49_0225FCA8

