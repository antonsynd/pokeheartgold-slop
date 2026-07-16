	.include "asm/macros.inc"
	.include "overlay_49_022595CC.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_022595CC
ov49_022595CC: ; 0x022595CC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #3
	bhi _02259672
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022595E4: ; jump table
	.short _022595EC - _022595E4 - 2 ; case 0
	.short _02259616 - _022595E4 - 2 ; case 1
	.short _02259632 - _022595E4 - 2 ; case 2
	.short _02259672 - _022595E4 - 2 ; case 3
_022595EC:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov45_0223089C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov45_0223093C
	add r0, r4, #0
	mov r2, #0x7d
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #0x18
	bl ov49_02259320
	mov r0, #0x20
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
_02259616:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _02259672
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, _02259678 ; =0x0000064E
	bl PlaySE
	add sp, #0xc
	pop {r4, r5, pc}
_02259632:
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0xc
	bl ov49_0225932C
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl ov45_02230908
	add r0, r4, #0
	add r0, #0xc
	bl ov49_022593BC
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov45_022308E4
	cmp r5, #1
	bne _02259672
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	bl ov45_02230968
	mov r0, #1
	strb r0, [r4, #0xa]
_02259672:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02259678: .word 0x0000064E
	thumb_func_end ov49_022595CC

	thumb_func_start ov49_0225967C
ov49_0225967C: ; 0x0225967C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #3
	bhi _0225972A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02259694: ; jump table
	.short _0225969C - _02259694 - 2 ; case 0
	.short _022596CC - _02259694 - 2 ; case 1
	.short _0225970A - _02259694 - 2 ; case 2
	.short _0225972A - _02259694 - 2 ; case 3
_0225969C:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov45_0223089C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov45_0223093C
	add r0, r4, #0
	mov r1, #0x7d
	add r0, #0xc
	lsl r1, r1, #0xe
	mov r2, #0
	mov r3, #0x18
	bl ov49_02259320
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, _02259730 ; =0x0000064E
	bl PlaySE
_022596CC:
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0xc
	bl ov49_0225932C
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl ov45_02230908
	add r0, r4, #0
	add r0, #0xc
	bl ov49_022593BC
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov45_022308E4
	cmp r5, #1
	bne _0225972A
	mov r0, #0x20
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add sp, #0xc
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r4, r5, pc}
_0225970A:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _0225972A
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	bl ov45_02230968
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov45_0223089C
	mov r0, #1
	strb r0, [r4, #0xa]
_0225972A:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02259730: .word 0x0000064E
	thumb_func_end ov49_0225967C

	thumb_func_start ov49_02259734
ov49_02259734: ; 0x02259734
	ldr r3, _0225973C ; =ov49_02259764
	mov r2, #2
	bx r3
	nop
_0225973C: .word ov49_02259764
	thumb_func_end ov49_02259734

	thumb_func_start ov49_02259740
ov49_02259740: ; 0x02259740
	ldr r3, _02259748 ; =ov49_02259764
	mov r2, #3
	bx r3
	nop
_02259748: .word ov49_02259764
	thumb_func_end ov49_02259740

	thumb_func_start ov49_0225974C
ov49_0225974C: ; 0x0225974C
	ldr r3, _02259754 ; =ov49_02259764
	mov r2, #0
	bx r3
	nop
_02259754: .word ov49_02259764
	thumb_func_end ov49_0225974C

	thumb_func_start ov49_02259758
ov49_02259758: ; 0x02259758
	ldr r3, _02259760 ; =ov49_02259764
	mov r2, #1
	bx r3
	nop
_02259760: .word ov49_02259764
	thumb_func_end ov49_02259758

	thumb_func_start ov49_02259764
ov49_02259764: ; 0x02259764
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r4, r0, #0
	ldrh r0, [r4, #8]
	add r5, r2, #0
	cmp r0, #3
	bls _02259774
	b _02259916
_02259774:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02259780: ; jump table
	.short _02259788 - _02259780 - 2 ; case 0
	.short _022597E4 - _02259780 - 2 ; case 1
	.short _0225989E - _02259780 - 2 ; case 2
	.short _02259916 - _02259780 - 2 ; case 3
_02259788:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov45_0223089C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov45_0223093C
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov45_02230974
	add r0, r4, #0
	mov r2, #1
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #0x10
	mov r3, #4
	bl ov49_02259320
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	bl ov45_02230908
	cmp r5, #3
	bhi _022597DA
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022597C8: ; jump table
	.short _022597D0 - _022597C8 - 2 ; case 0
	.short _022597D0 - _022597C8 - 2 ; case 1
	.short _022597D6 - _022597C8 - 2 ; case 2
	.short _022597D6 - _022597C8 - 2 ; case 3
_022597D0:
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x20]
	b _022597DA
_022597D6:
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x20]
_022597DA:
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
_022597E4:
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0xc
	bl ov49_0225932C
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl ov45_02230908
	cmp r5, #3
	bhi _02259854
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225980E: ; jump table
	.short _02259816 - _0225980E - 2 ; case 0
	.short _02259826 - _0225980E - 2 ; case 1
	.short _02259836 - _0225980E - 2 ; case 2
	.short _02259846 - _0225980E - 2 ; case 3
_02259816:
	add r0, r4, #0
	add r0, #0xc
	bl ov49_022593BC
	ldr r1, [r4, #0x20]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	b _02259854
_02259826:
	add r0, r4, #0
	add r0, #0xc
	bl ov49_022593BC
	ldr r1, [r4, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x18]
	b _02259854
_02259836:
	add r0, r4, #0
	add r0, #0xc
	bl ov49_022593BC
	ldr r1, [r4, #0x20]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	b _02259854
_02259846:
	add r0, r4, #0
	add r0, #0xc
	bl ov49_022593BC
	ldr r1, [r4, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x10]
_02259854:
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	bl ov45_022308E4
	cmp r6, #1
	bne _02259916
	add r0, r5, #0
	bl ov42_022282A4
	mov r1, #4
	str r1, [r4, #0x1c]
	cmp r0, #3
	bhi _02259894
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225987A: ; jump table
	.short _02259888 - _0225987A - 2 ; case 0
	.short _02259894 - _0225987A - 2 ; case 1
	.short _0225988E - _0225987A - 2 ; case 2
	.short _02259882 - _0225987A - 2 ; case 3
_02259882:
	ldr r0, [r4, #0x1c]
	add r0, r0, #2
	str r0, [r4, #0x1c]
_02259888:
	ldr r0, [r4, #0x1c]
	add r0, r0, #2
	str r0, [r4, #0x1c]
_0225988E:
	ldr r0, [r4, #0x1c]
	add r0, r0, #2
	str r0, [r4, #0x1c]
_02259894:
	ldrh r0, [r4, #8]
	add sp, #0x28
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r4, r5, r6, pc}
_0225989E:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _02259916
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4]
	bl ov42_022282DC
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	add r1, r5, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ov42_02228270
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	add r0, r5, #0
	bl ov42_022282A4
	add r1, sp, #0
	mov r5, sp
	add r2, r0, #0
	ldrh r3, [r1, #8]
	sub r5, r5, #4
	add r0, r4, #0
	strh r3, [r5]
	ldrh r1, [r1, #0xa]
	strh r1, [r5, #2]
	ldr r1, [r5]
	bl ov49_02258E04
	ldr r0, [r4, #4]
	bl ov45_02230968
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov45_0223089C
	mov r0, #1
	strb r0, [r4, #0xa]
_02259916:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_02259764

	thumb_func_start ov49_0225991C
ov49_0225991C: ; 0x0225991C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _02259930
	cmp r0, #1
	beq _02259950
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02259930:
	ldr r0, [r5, #4]
	mov r1, #0
	bl ov45_0223089C
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0x10
	bl ov45_02230908
	mov r0, #0x1c
	str r0, [r5, #0xc]
	ldrh r0, [r5, #8]
	add sp, #0xc
	add r0, r0, #1
	strh r0, [r5, #8]
	pop {r3, r4, r5, r6, pc}
_02259950:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _0225995C
	mov r0, #0x1c
	str r0, [r5, #0xc]
_0225995C:
	add r3, r5, #0
	add r3, #0x10
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0xc]
	sub r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r0, #0
	ble _022599DE
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
	mov r0, #0xb4
	mul r0, r1
	mov r1, #6
	bl _s32_div_f
	add r4, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDegNoWrap
	ldr r2, _022599F4 ; =0xFFFFE000
	asr r1, r0, #0x1f
	asr r3, r2, #0xd
	bl _ll_mul
	mov r3, #2
	mov r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #8]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #8]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDegNoWrap
	mov r2, #0xa
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	add r3, r6, #0
	bl _ll_mul
	mov r3, #2
	add r4, r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #4]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #4]
_022599DE:
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl ov45_022308E4
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov45_02230920
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_022599F4: .word 0xFFFFE000
	thumb_func_end ov49_0225991C

	thumb_func_start ov49_022599F8
ov49_022599F8: ; 0x022599F8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov45_0223089C
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov45_02230908
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov45_022308E4
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_022599F8

	thumb_func_start ov49_02259A20
ov49_02259A20: ; 0x02259A20
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	mov r3, #0
	strb r3, [r0, #3]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strb r3, [r0]
	add r0, r1, #0
	ldr r3, _02259A38 ; =ov45_02230700
	add r1, r2, #0
	bx r3
	nop
_02259A38: .word ov45_02230700
	thumb_func_end ov49_02259A20

	thumb_func_start ov49_02259A3C
ov49_02259A3C: ; 0x02259A3C
	mov r2, #1
	strb r2, [r0]
	ldrb r2, [r0, #1]
	strb r2, [r0, #2]
	ldrb r2, [r0, #1]
	sub r1, r1, r2
	strb r1, [r0, #3]
	mov r1, #0
	strh r1, [r0, #4]
	mov r1, #0x3c
	strh r1, [r0, #6]
	bx lr
	thumb_func_end ov49_02259A3C

	thumb_func_start ov49_02259A54
ov49_02259A54: ; 0x02259A54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	bne _02259A64
	mov r0, #1
	pop {r3, r4, r5, pc}
_02259A64:
	mov r0, #4
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #4]
	ldrsh r1, [r5, r0]
	mov r0, #6
	ldrsh r0, [r5, r0]
	cmp r1, r0
	blt _02259A7A
	mov r0, #0
	strb r0, [r5]
_02259A7A:
	mov r0, #4
	ldrsh r1, [r5, r0]
	mov r0, #3
	ldrsb r0, [r5, r0]
	mul r0, r1
	mov r1, #6
	ldrsh r1, [r5, r1]
	bl _s32_div_f
	strb r0, [r5, #1]
	mov r0, #2
	ldrb r1, [r5, #1]
	ldrsb r0, [r5, r0]
	add r0, r1, r0
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	add r0, r4, #0
	bl ov45_02230700
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02259A54

	thumb_func_start ov49_02259AA4
ov49_02259AA4: ; 0x02259AA4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl OverlayManager_GetArgs
	mov r2, #0x3a
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x77
	lsl r2, r2, #0xc
	bl Heap_Create
	mov r2, #0x3d
	mov r0, #3
	mov r1, #0x78
	lsl r2, r2, #0xc
	bl Heap_Create
	mov r1, #0xfe
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x77
	bl OverlayManager_CreateAndGetData
	mov r2, #0xfe
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	add r0, r5, #0
	add r0, #0xc
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x34]
	bl ov45_0222A53C
	strb r0, [r4, #2]
	ldr r0, [r4, #0x34]
	bl ov45_0222A53C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02259B02
	bl GF_AssertFail
_02259B02:
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl TextFlags_SetAutoScrollParam
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, [r5]
	bl Save_PlayerData_GetProfile
	mov r1, #0xfd
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x3c
	mov r2, #0x77
	bl ov49_0225A5EC
	mov r0, #0x77
	bl ov49_02258958
	mov r1, #0xfa
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, #0xc
	ldr r0, [r4, r1]
	bl PlayerProfile_GetTrainerGender
	add r1, r0, #0
	mov r0, #0x78
	mov r2, #0xfa
	str r0, [sp]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	mov r0, #0x18
	mov r3, #0x77
	bl ov49_02258AB4
	mov r2, #0x3e
	lsl r2, r2, #4
	str r0, [r4, r2]
	mov r0, #0x78
	str r0, [sp]
	add r2, #8
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r4, r2]
	mov r3, #0x77
	bl ov49_0225DF18
	mov r1, #0xf9
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x77
	bl ov49_0225CB78
	mov r1, #0xfb
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0xf4
	add r0, r4, r1
	add r1, r4, #0
	ldr r2, [r5]
	add r1, #0x3c
	mov r3, #0x77
	bl ov49_0225AAC8
	mov r0, #0xc6
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r2, [r5]
	add r0, r4, r0
	add r1, #0x3c
	mov r3, #0x77
	bl ov49_0225ACA8
	mov r0, #0xce
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x77
	bl ov49_0225AD20
	mov r0, #0x39
	lsl r0, r0, #4
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x77
	bl ov49_0225B214
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x77
	bl ov49_0225B0D4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0x77
	bl ov49_0225B308
	mov r1, #0x3a
	lsl r1, r1, #4
	add r0, r4, r1
	sub r1, #0xc4
	add r1, r4, r1
	mov r2, #0x77
	bl ov49_0225B198
	mov r0, #0x77
	str r0, [sp]
	mov r3, #0xfd
	mov r0, #0x61
	lsl r3, r3, #2
	lsl r0, r0, #2
	add r2, r4, #0
	ldr r1, [r4, #0x38]
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r2, #0x3c
	bl ov49_0225B450
	ldr r0, [r4, #0x34]
	bl ov45_0222A5C0
	add r5, r0, #0
	bl ov45_0222AADC
	cmp r0, #1
	bne _02259C2E
	mov r0, #0x61
	mov r2, #0xb7
	lsl r0, r0, #2
	add r1, r4, #0
	lsl r2, r2, #2
	add r0, r4, r0
	add r1, #0x3c
	add r2, r4, r2
	mov r3, #0x77
	str r5, [sp]
	bl ov49_0225B9AC
_02259C2E:
	add r0, r4, #0
	mov r1, #0x77
	bl ov49_0225EEAC
	mov r1, #0x3f
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov49_0225F1A8
	add r0, r4, #0
	bl ov49_0225F1F0
	mov r0, #0x77
	str r0, [sp]
	mov r0, #0x78
	mov r3, #0xfa
	str r0, [sp, #4]
	lsl r3, r3, #2
	add r2, r3, #4
	ldr r1, [r4, r3]
	sub r3, #8
	ldr r0, [r4, #0x34]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov49_022652E8
	mov r1, #0xf5
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x77
	add r1, r4, #0
	bl ov49_02268764
	mov r1, #0xf7
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _02259C8C ; =ov49_0225A5C8
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02259C8C: .word ov49_0225A5C8
	thumb_func_end ov49_02259AA4

	thumb_func_start ov49_02259C90
ov49_02259C90: ; 0x02259C90
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r6, #0
	bl OverlayManager_GetArgs
	ldr r0, [r5]
	cmp r0, #8
	bhi _02259D58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02259CB6: ; jump table
	.short _02259CC8 - _02259CB6 - 2 ; case 0
	.short _02259CEA - _02259CB6 - 2 ; case 1
	.short _02259CFE - _02259CB6 - 2 ; case 2
	.short _02259D7A - _02259CB6 - 2 ; case 3
	.short _02259DF8 - _02259CB6 - 2 ; case 4
	.short _02259E08 - _02259CB6 - 2 ; case 5
	.short _02259E58 - _02259CB6 - 2 ; case 6
	.short _02259E76 - _02259CB6 - 2 ; case 7
	.short _02259ED0 - _02259CB6 - 2 ; case 8
_02259CC8:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x77
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02259EE2
_02259CEA:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02259D58
	mov r0, #0
	strb r0, [r4, #3]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02259EE2
_02259CFE:
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _02259D26
	bl ov45_0222D844
	cmp r0, #1
	beq _02259D1A
	ldr r0, [r4, #0x34]
	bl ov45_0222A1FC
	cmp r0, #0
	beq _02259D26
_02259D1A:
	ldrb r1, [r4, #4]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4, #4]
_02259D26:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _02259D42
	ldr r0, [r4, #0x34]
	bl ov45_0222A33C
	cmp r0, #1
	bne _02259D42
	mov r0, #1
	strb r0, [r4, #6]
	add r0, r4, #0
	mov r1, #8
	bl ov49_0225A038
_02259D42:
	ldrb r0, [r4]
	cmp r0, #1
	beq _02259D5A
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _02259D5A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _02259D5A
_02259D58:
	b _02259EE2
_02259D5A:
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	beq _02259D68
	mov r0, #3
	str r0, [r5]
	b _02259EE2
_02259D68:
	ldrb r0, [r4, #6]
	cmp r0, #1
	bne _02259D74
	mov r0, #5
	str r0, [r5]
	b _02259EE2
_02259D74:
	mov r0, #7
	str r0, [r5]
	b _02259EE2
_02259D7A:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225AC74
	mov r0, #0xce
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	add r2, r1, #0
	bl ov49_0225B014
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B124
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov49_0225B200
	bl sub_020393C8
	cmp r0, #0
	beq _02259DBE
	mov r1, #0x39
	lsl r1, r1, #4
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov49_0225B284
	b _02259DF2
_02259DBE:
	bl sub_020397FC
	cmp r0, #0
	beq _02259DDC
	bl ov45_0222E7CC
	mov r1, #0x39
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov49_0225B2C0
	b _02259DF2
_02259DDC:
	ldr r0, [r4, #0x34]
	bl ov45_0222A1FC
	mov r1, #0x39
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov49_0225B2F0
_02259DF2:
	mov r0, #4
	str r0, [r5]
	b _02259EE2
_02259DF8:
	ldr r0, _02259EF4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02259EE2
	mov r0, #7
	str r0, [r5]
	b _02259EE2
_02259E08:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225AC74
	mov r0, #0xce
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	add r2, r1, #0
	bl ov49_0225B014
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B124
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov49_0225B200
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	mov r2, #0x46
	bl ov49_0225B388
	add r1, r0, #0
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225AB44
	mov r0, #6
	str r0, [r5]
	mov r0, #0x3c
	str r0, [r4, #8]
	b _02259EE2
_02259E58:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225AC5C
	cmp r0, #0
	beq _02259EE2
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _02259EE2
	mov r0, #7
	str r0, [r5]
	b _02259EE2
_02259E76:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B898
	cmp r0, #5
	bne _02259EA8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x77
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02259EE2
_02259EA8:
	cmp r0, #0
	bne _02259EE2
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x77
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02259EE2
_02259ED0:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02259EE2
	mov r0, #0
	strb r0, [r4, #3]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02259EE2:
	add r0, r4, #0
	bl ov49_0225A98C
	add r0, r4, #0
	bl ov49_0225AA2C
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02259EF4: .word gSystem
	thumb_func_end ov49_02259C90

	thumb_func_start ov49_02259EF8
ov49_02259EF8: ; 0x02259EF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r5, #0
	bl OverlayManager_GetArgs
	ldrb r1, [r4, #1]
	str r1, [r0, #0x18]
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_02268850
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0226535C
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_0225EEF8
	mov r0, #0x61
	mov r1, #0xc6
	lsl r0, r0, #2
	lsl r1, r1, #2
	add r2, r4, #0
	add r0, r4, r0
	add r1, r4, r1
	add r2, #0x3c
	bl ov49_0225B4E4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B35C
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225AB14
	mov r0, #0xc6
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225ACBC
	mov r0, #0xce
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	bl ov49_0225AE4C
	mov r0, #0x39
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov49_0225B244
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov49_0225B200
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B0D8
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225CBDC
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225E2B4
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_02258B20
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_02258994
	add r0, r4, #0
	add r0, #0x3c
	bl ov49_0225A7D0
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0x77
	bl Heap_Destroy
	mov r0, #0x78
	bl Heap_Destroy
	mov r0, #0
	bl sub_0200616C
	mov r0, #0
	bl sub_02006300
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_02259EF8

	thumb_func_start ov49_02259FE8
ov49_02259FE8: ; 0x02259FE8
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end ov49_02259FE8

	thumb_func_start ov49_02259FEC
ov49_02259FEC: ; 0x02259FEC
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end ov49_02259FEC

	thumb_func_start ov49_02259FF0
ov49_02259FF0: ; 0x02259FF0
	mov r1, #0x3e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov49_02259FF0

	thumb_func_start ov49_02259FF8
ov49_02259FF8: ; 0x02259FF8
	mov r1, #0xf9
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov49_02259FF8

	thumb_func_start ov49_0225A000
ov49_0225A000: ; 0x0225A000
	mov r1, #0xfa
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov49_0225A000

	thumb_func_start ov49_0225A008
ov49_0225A008: ; 0x0225A008
	mov r1, #0xfb
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov49_0225A008

	thumb_func_start ov49_0225A010
ov49_0225A010: ; 0x0225A010
	mov r1, #0x3f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov49_0225A010

	thumb_func_start ov49_0225A018
ov49_0225A018: ; 0x0225A018
	ldrb r3, [r0, #4]
	mov r2, #0xf
	lsl r1, r1, #0x18
	bic r3, r2
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r0, #4]
	bx lr
	thumb_func_end ov49_0225A018

	thumb_func_start ov49_0225A02C
ov49_0225A02C: ; 0x0225A02C
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end ov49_0225A02C

	thumb_func_start ov49_0225A030
ov49_0225A030: ; 0x0225A030
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov49_0225A030

	thumb_func_start ov49_0225A034
ov49_0225A034: ; 0x0225A034
	strb r1, [r0]
	bx lr
	thumb_func_end ov49_0225A034

	thumb_func_start ov49_0225A038
ov49_0225A038: ; 0x0225A038
	strb r1, [r0, #1]
	bx lr
	thumb_func_end ov49_0225A038

	thumb_func_start ov49_0225A03C
ov49_0225A03C: ; 0x0225A03C
	strb r1, [r0, #5]
	bx lr
	thumb_func_end ov49_0225A03C

	thumb_func_start ov49_0225A040
ov49_0225A040: ; 0x0225A040
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end ov49_0225A040

	thumb_func_start ov49_0225A044
ov49_0225A044: ; 0x0225A044
	mov r1, #1
	strb r1, [r0, #7]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225A044

	thumb_func_start ov49_0225A04C
ov49_0225A04C: ; 0x0225A04C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _0225A05C
	bl GF_AssertFail
_0225A05C:
	add r0, r5, r4
	strb r6, [r0, #0xc]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A04C

	thumb_func_start ov49_0225A064
ov49_0225A064: ; 0x0225A064
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225A064

	thumb_func_start ov49_0225A06C
ov49_0225A06C: ; 0x0225A06C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _0225A07C
	bl GF_AssertFail
_0225A07C:
	add r0, r5, r4
	add r0, #0x20
	strb r6, [r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_0225A06C

	thumb_func_start ov49_0225A084
ov49_0225A084: ; 0x0225A084
	add r0, r0, r1
	add r0, #0x20
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov49_0225A084

	thumb_func_start ov49_0225A08C
ov49_0225A08C: ; 0x0225A08C
	mov r2, #0xbe
	lsl r2, r2, #2
	ldr r3, _0225A098 ; =ov49_0225AB44
	add r0, r0, r2
	bx r3
	nop
_0225A098: .word ov49_0225AB44
	thumb_func_end ov49_0225A08C

	thumb_func_start ov49_0225A09C
ov49_0225A09C: ; 0x0225A09C
	mov r2, #0xbe
	lsl r2, r2, #2
	ldr r3, _0225A0A8 ; =ov49_0225ABA4
	add r0, r0, r2
	bx r3
	nop
_0225A0A8: .word ov49_0225ABA4
	thumb_func_end ov49_0225A09C

	thumb_func_start ov49_0225A0AC
ov49_0225A0AC: ; 0x0225A0AC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225A0B8 ; =ov49_0225AC5C
	add r0, r0, r1
	bx r3
	nop
_0225A0B8: .word ov49_0225AC5C
	thumb_func_end ov49_0225A0AC

	thumb_func_start ov49_0225A0BC
ov49_0225A0BC: ; 0x0225A0BC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225A0C8 ; =ov49_0225AC08
	add r0, r0, r1
	bx r3
	nop
_0225A0C8: .word ov49_0225AC08
	thumb_func_end ov49_0225A0BC

	thumb_func_start ov49_0225A0CC
ov49_0225A0CC: ; 0x0225A0CC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225A0D8 ; =ov49_0225AC24
	add r0, r0, r1
	bx r3
	nop
_0225A0D8: .word ov49_0225AC24
	thumb_func_end ov49_0225A0CC

	thumb_func_start ov49_0225A0DC
ov49_0225A0DC: ; 0x0225A0DC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225A0E8 ; =ov49_0225AC4C
	add r0, r0, r1
	bx r3
	nop
_0225A0E8: .word ov49_0225AC4C
	thumb_func_end ov49_0225A0DC

	thumb_func_start ov49_0225A0EC
ov49_0225A0EC: ; 0x0225A0EC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225A0F8 ; =ov49_0225AC74
	add r0, r0, r1
	bx r3
	nop
_0225A0F8: .word ov49_0225AC74
	thumb_func_end ov49_0225A0EC

	thumb_func_start ov49_0225A0FC
ov49_0225A0FC: ; 0x0225A0FC
	mov r2, #0xc6
	lsl r2, r2, #2
	ldr r3, _0225A108 ; =ov49_0225ACC4
	add r0, r0, r2
	bx r3
	nop
_0225A108: .word ov49_0225ACC4
	thumb_func_end ov49_0225A0FC

	thumb_func_start ov49_0225A10C
ov49_0225A10C: ; 0x0225A10C
	push {r3, lr}
	mov r2, #0xce
	lsl r2, r2, #2
	add r0, r0, r2
	mov r2, #0x78
	mov r3, #0
	bl ov49_0225AEA8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A10C

	thumb_func_start ov49_0225A120
ov49_0225A120: ; 0x0225A120
	push {r3, lr}
	add r3, r2, #0
	mov r2, #0xce
	lsl r2, r2, #2
	add r0, r0, r2
	mov r2, #0x78
	bl ov49_0225AEA8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A120

	thumb_func_start ov49_0225A134
ov49_0225A134: ; 0x0225A134
	mov r1, #0xce
	lsl r1, r1, #2
	ldr r3, _0225A140 ; =ov49_0225AEE0
	add r0, r0, r1
	bx r3
	nop
_0225A140: .word ov49_0225AEE0
	thumb_func_end ov49_0225A134

	thumb_func_start ov49_0225A144
ov49_0225A144: ; 0x0225A144
	mov r3, #0xce
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225A150 ; =ov49_0225AEF8
	bx r3
	nop
_0225A150: .word ov49_0225AEF8
	thumb_func_end ov49_0225A144

