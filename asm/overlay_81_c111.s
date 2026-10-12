	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242420
	.public ov81_022424AC
	.extern ov81_022409B0

	.text

	.text
	thumb_func_start ov81_02242420
ov81_02242420: ; 0x02242420
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _022424A8 ; =0x0000047C
	mov r4, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	bls _022424A4
	add r6, r5, #0
	lsl r0, r1, #0x18
	add r6, #0x50
	lsr r7, r0, #0x18
_02242438:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, r4
	bne _0224246E
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #2
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, r1
	add r2, r7, #0
	mov r3, #4
	bl ov81_022409B0
	b _0224249A
_0224246E:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r4, #2
	lsl r1, r1, #4
	lsl r2, r4, #0x18
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, r1
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov81_022409B0
_0224249A:
	ldr r0, _022424A8 ; =0x0000047C
	add r4, r4, #1
	ldr r0, [r5, r0]
	cmp r4, r0
	blo _02242438
_022424A4:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022424A8: .word 0x0000047C
	thumb_func_end ov81_02242420

	thumb_func_start ov81_022424AC
ov81_022424AC: ; 0x022424AC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	mov r6, #0xf2
	lsl r6, r6, #2
	add r2, r1, #0
	ldrh r1, [r0, r6]
	add r1, r1, #2
	cmp r2, #4
	blo _022424CC
	add r0, #0x50
	lsl r1, r1, #4
	add r0, r0, r1
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0x18
	pop {r4, r5, r6, pc}
_022424CC:
	lsl r4, r1, #4
	mov r1, #0
	str r1, [sp]
	mov r3, #0xf
	str r3, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	sub r1, r6, #4
	add r5, r0, #0
	ldr r1, [r0, r1]
	lsl r2, r2, #0x18
	add r5, #0x50
	str r1, [sp, #0x14]
	add r1, r5, r4
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov81_022409B0
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov81_022424AC

