	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_022400BC
	.public ov83_02240170
	.public ov83_022401A4
	.public ov83_02240D64

    .text

	thumb_func_start ov83_022400BC
ov83_022400BC: ; 0x022400BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _02240168 ; =0x000007A4
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r7, r3, #0
	bl Party_GetMonByIndex
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _022400E2
	mov r0, #0x24
	b _022400E4
_022400E2:
	mov r0, #4
_022400E4:
	cmp r7, #0
	bne _0224010A
	lsl r1, r4, #6
	add r2, r0, r1
	lsl r2, r2, #0x10
	lsr r7, r2, #0x10
	add r2, r0, #0
	add r2, #0x18
	add r2, r2, r1
	add r0, #0x20
	lsl r2, r2, #0x10
	add r0, r0, r1
	lsr r2, r2, #0x10
	lsl r0, r0, #0x10
	str r2, [sp, #0x10]
	lsr r0, r0, #0x10
	mov r4, #1
	str r0, [sp, #0x14]
	b _02240116
_0224010A:
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #0x24
	mov r7, #4
	mov r4, #0
	str r0, [sp, #0x14]
_02240116:
	ldr r0, [sp, #0xc]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	str r6, [sp]
	add r1, r0, #0
	str r7, [sp, #4]
	ldr r0, _0224016C ; =0x00000504
	str r4, [sp, #8]
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #1
	bl PrintUIntOnWindow
	str r4, [sp]
	ldr r0, _0224016C ; =0x00000504
	ldr r3, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r6, #0
	bl sub_0200CDAC
	ldr r0, [sp, #0xc]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #4]
	ldr r0, _0224016C ; =0x00000504
	str r4, [sp, #8]
	ldr r0, [r5, r0]
	mov r3, #0
	bl PrintUIntOnWindow
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02240168: .word 0x000007A4
_0224016C: .word 0x00000504
	thumb_func_end ov83_022400BC

	thumb_func_start ov83_02240170
ov83_02240170: ; 0x02240170
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r6, r1, #0
	mov r1, #1
	bl ov80_02237B24
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _0224019A
_02240186:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov83_022401A4
	add r4, r4, #1
	cmp r4, r7
	blt _02240186
_0224019A:
	add r0, r6, #0
	bl ScheduleWindowCopyToVram
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_02240170

	thumb_func_start ov83_022401A4
ov83_022401A4: ; 0x022401A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r3, [sp, #0x14]
	ldrb r0, [r5, #9]
	str r1, [sp, #0x10]
	add r6, r2, #0
	bl ov80_02237D8C
	cmp r0, #0
	bne _022401C0
	mov r4, #0x28
	mov r7, #0x50
	b _022401C4
_022401C0:
	mov r4, #8
	mov r7, #0x30
_022401C4:
	ldr r0, _02240230 ; =0x000007A4
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _022401E0
	lsl r0, r6, #6
	add r6, r4, r0
	mov r4, #1
	add r7, r7, r0
	b _022401E6
_022401E0:
	mov r6, #4
	mov r4, #0
	mov r7, #0x30
_022401E6:
	ldr r0, [sp, #0x18]
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, _02240234 ; =0x00000504
	str r4, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200CE7C
	ldr r0, [sp, #0x18]
	mov r1, #0x6f
	mov r2, #0
	bl GetMonData
	mov r1, #0
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov83_02240D64
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02240230: .word 0x000007A4
_02240234: .word 0x00000504
	thumb_func_end ov83_022401A4

