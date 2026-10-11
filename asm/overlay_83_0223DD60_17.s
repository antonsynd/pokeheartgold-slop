	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240238

    .text

	thumb_func_start ov83_02240238
ov83_02240238: ; 0x02240238
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov80_02237D8C
	cmp r0, #0
	bne _02240252
	mov r1, #0x24
	b _02240254
_02240252:
	mov r1, #4
_02240254:
	lsl r0, r4, #6
	add r4, r1, r0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #9
	mov r1, #0
	lsl r2, r4, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl FillWindowPixelRect
	str r6, [sp]
	str r4, [sp, #4]
	mov r3, #1
	ldr r0, _0224028C ; =0x00000504
	str r3, [sp, #8]
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #3
	bl PrintUIntOnWindow
	add r0, r6, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0224028C: .word 0x00000504
	thumb_func_end ov83_02240238

