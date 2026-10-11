	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02245584
	.public ov83_0224563C
	.extern ov83_02244ABC
	.extern ov83_02244AD8
	.extern ov83_02244B40
	.extern ov83_02244DF4
	.extern ov83_02245068
	.extern ov83_02245288
	.extern ov83_02245318
	.extern ov83_02245390
	.extern ov83_022453DC
	.extern ov83_02245824
	.extern ov83_02245838

    .text

	.text
	thumb_func_start ov83_02245584
ov83_02245584: ; 0x02245584
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	add r5, r0, #0
	add r1, #2
	add r2, sp, #8
	add r3, #2
	bl ov83_02244DF4
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _022455C8
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #6]
	ldrh r3, [r3, #4]
	add r0, r5, #0
	add r2, r2, #4
	add r3, r3, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov83_02244AD8
	b _02245630
_022455C8:
	bl sub_0203769C
	cmp r0, #0
	add r2, sp, #4
	bne _02245602
	ldrh r0, [r2, #4]
	add r1, r4, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r2, #6]
	add r0, r5, #0
	bl ov83_02244AD8
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ov83_02244B40
	b _02245630
_02245602:
	ldrh r0, [r2, #4]
	add r1, r4, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r2, #6]
	add r0, r5, #0
	bl ov83_02244B40
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ov83_02244AD8
_02245630:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_02245584

	thumb_func_start ov83_0224563C
ov83_0224563C: ; 0x0224563C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02245740 ; =0x000005E3
	add r7, r1, #0
	add r6, r2, #0
	bl PlaySE
	ldrb r0, [r4, #0x15]
	add r1, r7, #0
	str r0, [sp]
	bl ov83_0224776C
	str r0, [sp, #4]
	cmp r6, #4
	bhi _02245686
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245668: ; jump table
	.short _02245672 - _02245668 - 2 ; case 0
	.short _02245676 - _02245668 - 2 ; case 1
	.short _02245686 - _02245668 - 2 ; case 2
	.short _02245680 - _02245668 - 2 ; case 3
	.short _02245684 - _02245668 - 2 ; case 4
_02245672:
	mov r5, #1
	b _02245686
_02245676:
	ldrb r0, [r4, #0x12]
	bl ov83_02245068
	add r5, r0, #0
	b _02245686
_02245680:
	mov r5, #2
	b _02245686
_02245684:
	mov r5, #5
_02245686:
	bl sub_0203769C
	cmp r0, #0
	bne _022456BA
	ldr r0, [sp]
	cmp r7, r0
	bhs _022456A8
	add r0, r4, #0
	mov r1, #5
	bl ov83_02244ABC
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r5, #0
	bl ov80_02237FA4
	b _022456E4
_022456A8:
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02245744 ; =0x000005BA
	ldrh r1, [r4, r0]
	sub r1, r1, r5
	strh r1, [r4, r0]
	b _022456E4
_022456BA:
	ldr r0, [sp]
	cmp r7, r0
	bhs _022456D2
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02245744 ; =0x000005BA
	ldrh r1, [r4, r0]
	sub r1, r1, r5
	strh r1, [r4, r0]
	b _022456E4
_022456D2:
	add r0, r4, #0
	mov r1, #5
	bl ov83_02244ABC
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r5, #0
	bl ov80_02237FA4
_022456E4:
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_022453DC
	add r0, r4, #0
	bl ov83_02245390
	cmp r6, #4
	bhi _0224573C
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245704: ; jump table
	.short _0224570E - _02245704 - 2 ; case 0
	.short _0224571A - _02245704 - 2 ; case 1
	.short _0224573C - _02245704 - 2 ; case 2
	.short _02245728 - _02245704 - 2 ; case 3
	.short _02245734 - _02245704 - 2 ; case 4
_0224570E:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02245824
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224571A:
	ldrb r2, [r4, #0x12]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02245838
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02245728:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02245288
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02245734:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02245318
_0224573C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02245740: .word 0x000005E3
_02245744: .word 0x000005BA
	thumb_func_end ov83_0224563C

