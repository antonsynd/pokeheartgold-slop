	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223B478
	.public ov57_0223B504
	.public ov57_0223B578
	.public ov57_0223B620
	.public ov57_0223B6F0
	.extern ov57_02238DAC
	.extern ov57_0223B12C
	.extern ov57_0223B828
	.extern ov57_0223B90C
	.extern ov57_0223B948
	.extern ov57_0223BEB0

	.text

	.text
	thumb_func_start ov57_0223B478
ov57_0223B478: ; 0x0223B478
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223B500 ; =gSystem
	mov r1, #0x10
	ldr r0, [r0, #0x4c]
	tst r1, r0
	beq _0223B496
	ldr r0, [r4]
	mov r1, #0xc
	add r0, r0, #1
	str r0, [r4]
	bl _s32_div_f
	str r1, [r4]
	b _0223B4FC
_0223B496:
	mov r1, #0x20
	tst r1, r0
	beq _0223B4AE
	ldr r0, [r4]
	cmp r0, #0
	ble _0223B4A8
	sub r0, r0, #1
	str r0, [r4]
	b _0223B4FC
_0223B4A8:
	mov r0, #0xb
	str r0, [r4]
	b _0223B4FC
_0223B4AE:
	mov r1, #0x40
	tst r1, r0
	beq _0223B4D2
	ldr r1, [r4]
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	beq _0223B4CE
	sub r0, r1, #4
	mov r1, #0xc
	str r0, [r4]
	bl _s32_div_f
	str r1, [r4]
	b _0223B4FC
_0223B4CE:
	mov r0, #0
	pop {r4, pc}
_0223B4D2:
	mov r1, #0x80
	tst r0, r1
	beq _0223B4F8
	ldr r1, [r4]
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	cmp r0, #2
	beq _0223B4F4
	add r0, r1, #4
	mov r1, #0xc
	str r0, [r4]
	bl _s32_div_f
	str r1, [r4]
	b _0223B4FC
_0223B4F4:
	mov r0, #0
	pop {r4, pc}
_0223B4F8:
	mov r0, #0
	pop {r4, pc}
_0223B4FC:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_0223B500: .word gSystem
	thumb_func_end ov57_0223B478

	thumb_func_start ov57_0223B504
ov57_0223B504: ; 0x0223B504
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r4, #0
	str r2, [sp]
	cmp r1, #0
	bne _0223B514
	mov r4, #1
_0223B514:
	mov r0, #0xfb
	lsl r0, r0, #2
	lsl r6, r1, #2
	add r7, r5, r0
	add r1, sp, #4
	ldr r0, [r7, r6]
	add r1, #2
	add r2, sp, #4
	bl ov57_02238DAC
	mov r0, #0xc7
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #4
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [sp]
	cmp r0, #1
	bne _0223B572
	mov r0, #0xfb
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [r7, r6]
	lsl r4, r4, #2
	str r0, [r1, r4]
	ldr r0, [r1, r4]
	add r1, sp, #4
	add r1, #2
	add r2, sp, #4
	bl ov57_02238DAC
	mov r0, #0xc7
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #4
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
_0223B572:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov57_0223B504

	thumb_func_start ov57_0223B578
ov57_0223B578: ; 0x0223B578
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	bl System_GetTouchNew
	cmp r0, #0
	bne _0223B58E
	mov r0, #0
	add sp, #0x18
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0223B58E:
	mov r0, #0xfe
	add r6, sp, #0x10
	strb r0, [r6, #2]
	mov r0, #0x18
	add r7, sp, #0x10
	str r0, [sp, #8]
	strb r0, [r6, #5]
	mov r0, #0
	str r0, [sp, #0xc]
	add r7, #2
_0223B5A2:
	ldr r0, [sp, #8]
	mov r4, #0
	strb r0, [r6, #4]
	mov r5, #0x28
_0223B5AA:
	add r0, r7, #0
	strb r5, [r6, #3]
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0223B5C0
	ldr r0, [sp, #0xc]
	add sp, #0x18
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
_0223B5C0:
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #4
	blt _0223B5AA
	ldr r0, [sp, #8]
	add r0, #0x38
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _0223B5A2
	ldr r0, _0223B618 ; =ov57_0223BEB0
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0223B614
	lsr r1, r0, #0x16
	add r0, sp, #0x10
	strh r1, [r0]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _0223B61C ; =gSystem + 0x40
	add r0, #0xe4
	ldrh r2, [r3, #0x20]
	str r0, [sp, #4]
	ldrh r3, [r3, #0x22]
	ldr r0, [r0]
	mov r1, #3
	bl DoesPixelAtScreenXYMatchPtrVal
	cmp r0, #0
	bne _0223B610
	mov r4, #0
	mvn r4, r4
	b _0223B612
_0223B610:
	add r4, #0xc
_0223B612:
	add r0, r4, #0
_0223B614:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223B618: .word ov57_0223BEB0
_0223B61C: .word gSystem + 0x40
	thumb_func_end ov57_0223B578

	thumb_func_start ov57_0223B620
ov57_0223B620: ; 0x0223B620
	push {r4, lr}
	add r4, r0, #0
	bl ov57_0223B12C
	ldr r0, _0223B6D8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0223B668
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0xff
	beq _0223B646
	ldr r0, _0223B6DC ; =0x000005F2
	bl PlaySE
	mov r0, #4
	pop {r4, pc}
_0223B646:
	add r0, r4, #0
	mov r1, #0
	bl ov57_0223B948
	ldr r0, _0223B6E0 ; =0x000005E2
	bl PlaySE
	mov r0, #0x11
	mov r1, #0x26
	lsl r0, r0, #6
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl ov57_0223B90C
	mov r0, #6
	pop {r4, pc}
_0223B668:
	mov r0, #2
	tst r0, r1
	beq _0223B6A2
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0xff
	beq _0223B682
	ldr r0, _0223B6DC ; =0x000005F2
	bl PlaySE
	mov r0, #4
	pop {r4, pc}
_0223B682:
	add r0, r4, #0
	mov r1, #0
	bl ov57_0223B948
	ldr r0, _0223B6E4 ; =0x000005DD
	bl PlaySE
	ldr r0, _0223B6E8 ; =0x00000444
	mov r1, #0x99
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl ov57_0223B90C
	mov r0, #7
	pop {r4, pc}
_0223B6A2:
	mov r0, #3
	lsl r0, r0, #0xa
	tst r0, r1
	beq _0223B6D2
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0xff
	beq _0223B6BE
	ldr r0, _0223B6DC ; =0x000005F2
	bl PlaySE
	mov r0, #4
	pop {r4, pc}
_0223B6BE:
	ldr r0, _0223B6E4 ; =0x000005DD
	bl PlaySE
	ldr r0, _0223B6EC ; =0x0000043C
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov57_0223B90C
	mov r0, #5
	pop {r4, pc}
_0223B6D2:
	mov r0, #4
	pop {r4, pc}
	nop
_0223B6D8: .word gSystem
_0223B6DC: .word 0x000005F2
_0223B6E0: .word 0x000005E2
_0223B6E4: .word 0x000005DD
_0223B6E8: .word 0x00000444
_0223B6EC: .word 0x0000043C
	thumb_func_end ov57_0223B620

	thumb_func_start ov57_0223B6F0
ov57_0223B6F0: ; 0x0223B6F0
	push {r3, lr}
	mov r1, #1
	mov r2, #0
	mov r3, #3
	bl ov57_0223B828
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov57_0223B6F0

