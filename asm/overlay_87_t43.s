	.include "asm/macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E73E0
	.public ov87_021E7460
	.public ov87_021E7490
	.extern ov87_021E7FEC
	.extern ov87_021E8014
	.extern ov87_021E827C
	.extern ov87_021E838C

	.text

	.text
	thumb_func_start ov87_021E73E0
ov87_021E73E0: ; 0x021E73E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x3a
	lsl r0, r0, #4
	add r4, r1, #0
	ldrb r1, [r5, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	cmp r1, #8
	blo _021E73FC
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E73FC:
	sub r0, #0x74
	add r0, r5, r0
	str r0, [sp]
	ldr r1, [sp]
	lsl r0, r4, #2
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov87_021E8014
	mov r0, #0x3a
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	lsl r2, r4, #3
	ldr r4, _021E7458 ; =ov87_021E838C
	lsl r1, r0, #0x18
	lsr r6, r1, #0x19
	ldrsb r7, [r4, r6]
	mov r4, #0xfe
	bic r0, r4
	add r4, r6, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	ldr r1, _021E745C ; =ov87_021E827C
	lsl r4, r4, #0x19
	add r1, r1, r2
	lsr r4, r4, #0x18
	ldr r2, [sp, #8]
	orr r4, r0
	mov r0, #0x3a
	ldr r3, [sp, #0xc]
	lsl r0, r0, #4
	strb r4, [r5, r0]
	ldrsb r1, [r6, r1]
	ldr r4, [sp]
	ldr r0, [sp, #4]
	add r1, r3, r1
	ldr r0, [r4, r0]
	add r2, r2, r7
	bl ov87_021E7FEC
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7458: .word ov87_021E838C
_021E745C: .word ov87_021E827C
	thumb_func_end ov87_021E73E0

	thumb_func_start ov87_021E7460
ov87_021E7460: ; 0x021E7460
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r3, [sp]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r4, r1, #0
	lsl r1, r4, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0x58]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x58]
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov87_021E7460

	thumb_func_start ov87_021E7490
ov87_021E7490: ; 0x021E7490
	push {r3, r4}
	mov r4, #0
	mov r2, #0xe5
	add r3, r4, #0
	lsl r2, r2, #2
_021E749A:
	add r1, r0, r3
	ldrb r1, [r1, r2]
	cmp r1, #1
	bne _021E74A8
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
_021E74A8:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #9
	blo _021E749A
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov87_021E7490

