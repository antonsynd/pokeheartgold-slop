	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E638C
	.public ov109_021E63E8
	.public ov109_021E656C
	.public ov109_021E66C4
	.extern ov109_021E628C
	.extern ov109_021E68B8
	.extern ov109_021E691C
	.extern ov109_021E6F7C
	.extern ov109_021E70C4
	.extern ov109_021E7474
	.extern ov109_021E74D4
	.extern ov109_021E7524
	.extern ov109_021E75B4
	.extern ov109_021E78DC
	.extern ov109_021E7A18

	.text

	.text
	thumb_func_start ov109_021E638C
ov109_021E638C: ; 0x021E638C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021E63E0 ; =ov109_021E7A18
	add r6, r1, #0
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021E63A6
	mov r0, #5
	pop {r4, r5, r6, pc}
_021E63A6:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021E63B2
	add r0, r5, #0
	bl ov109_021E75B4
_021E63B2:
	mov r3, #1
	str r3, [r6]
	cmp r4, #0xc
	bhs _021E63D4
	mov r0, #3
	and r0, r4
	strb r0, [r5, #0x1b]
	lsr r0, r4, #2
	strb r0, [r5, #0x1c]
	ldrb r1, [r5, #0x1b]
	ldrb r2, [r5, #0x1c]
	add r0, r5, #0
	bl ov109_021E7474
	ldr r0, _021E63E4 ; =0x000005DC
	bl PlaySE
_021E63D4:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov109_021E628C
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E63E0: .word ov109_021E7A18
_021E63E4: .word 0x000005DC
	thumb_func_end ov109_021E638C

	thumb_func_start ov109_021E63E8
ov109_021E63E8: ; 0x021E63E8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #1
	bne _021E6400
	ldr r1, _021E6564 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #0xf3
	tst r1, r2
	beq _021E6400
	bl ov109_021E75B4
_021E6400:
	ldr r0, _021E6564 ; =gSystem
	mov r1, #1
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _021E6426
	ldrb r0, [r4, #0x1c]
	ldrb r1, [r4, #0x1b]
	cmp r0, #3
	blo _021E6416
	mov r1, #0xc
	b _021E641E
_021E6416:
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_021E641E:
	add r0, r4, #0
	bl ov109_021E628C
	pop {r4, pc}
_021E6426:
	mov r1, #2
	tst r1, r0
	beq _021E6436
	add r0, r4, #0
	mov r1, #0xc
	bl ov109_021E628C
	pop {r4, pc}
_021E6436:
	mov r1, #0x20
	tst r1, r0
	beq _021E6496
	ldrb r0, [r4, #0x1c]
	ldrb r1, [r4, #0x1b]
	cmp r0, #3
	blo _021E6448
	mov r0, #0xc
	b _021E6450
_021E6448:
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021E6450:
	cmp r0, #0xc
	bne _021E6458
	mov r0, #1
	pop {r4, pc}
_021E6458:
	cmp r1, #0
	beq _021E6476
	ldr r0, _021E6568 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #0x1b]
	mov r3, #1
	sub r0, r0, #1
	strb r0, [r4, #0x1b]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	bl ov109_021E7474
	b _021E6560
_021E6476:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _021E6560
	add r0, r1, #3
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #0x1b]
	add r0, r4, #0
	mov r1, #0xd
	bl ov109_021E628C
	pop {r4, pc}
_021E6496:
	mov r1, #0x10
	tst r1, r0
	beq _021E64FA
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r4, #0x1b]
	cmp r1, #3
	blo _021E64A8
	mov r1, #0xc
	b _021E64B0
_021E64A8:
	lsl r1, r1, #2
	add r1, r0, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
_021E64B0:
	cmp r1, #0xc
	bne _021E64B8
	mov r0, #1
	pop {r4, pc}
_021E64B8:
	cmp r0, #3
	bhs _021E64D6
	ldr r0, _021E6568 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #0x1b]
	mov r3, #1
	add r0, r0, #1
	strb r0, [r4, #0x1b]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	bl ov109_021E7474
	b _021E6560
_021E64D6:
	ldrb r1, [r4, #0x1a]
	ldrb r2, [r4, #0x19]
	sub r1, r1, #1
	cmp r2, r1
	bge _021E6560
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #0x1b]
	add r0, r4, #0
	mov r1, #0xe
	bl ov109_021E628C
	pop {r4, pc}
_021E64FA:
	mov r1, #0x40
	tst r1, r0
	beq _021E6536
	ldrb r0, [r4, #0x1c]
	cmp r0, #4
	bne _021E6510
	ldrb r0, [r4, #0x1b]
	cmp r0, #3
	bhs _021E6510
	mov r0, #3
	strb r0, [r4, #0x1b]
_021E6510:
	ldr r0, _021E6568 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #0x1c]
	mov r3, #1
	add r0, r0, #3
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #0x1c]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	bl ov109_021E7474
	b _021E6560
_021E6536:
	mov r1, #0x80
	tst r0, r1
	beq _021E6560
	ldr r0, _021E6568 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #0x1c]
	mov r3, #1
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #0x1c]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	bl ov109_021E7474
_021E6560:
	mov r0, #5
	pop {r4, pc}
	.balign 4, 0
_021E6564: .word gSystem
_021E6568: .word 0x000005DC
	thumb_func_end ov109_021E63E8

	thumb_func_start ov109_021E656C
ov109_021E656C: ; 0x021E656C
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #8]
	cmp r1, #0
	beq _021E6580
	cmp r1, #1
	beq _021E65DC
	cmp r1, #2
	beq _021E6634
	b _021E66BC
_021E6580:
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	mov r3, #0
	bl ov109_021E7474
	add r0, r4, #0
	mov r1, #0
	bl ov109_021E74D4
	add r0, r4, #0
	mov r1, #1
	bl ov109_021E68B8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl ov109_021E691C
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov109_021E6F7C
	ldrb r3, [r4, #0x19]
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov109_021E70C4
	ldrb r3, [r4, #0x19]
	add r0, r4, #0
	mov r1, #3
	sub r3, r3, #1
	lsl r3, r3, #0x18
	mov r2, #1
	lsr r3, r3, #0x18
	bl ov109_021E70C4
	ldrb r1, [r4, #0x18]
	mov r0, #0xf0
	bic r1, r0
	strb r1, [r4, #0x18]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	b _021E66BC
_021E65DC:
	ldrb r3, [r4, #0x18]
	mov r2, #0xf0
	add r1, r3, #0
	bic r1, r2
	lsl r2, r3, #0x18
	lsr r2, r2, #0x1c
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r4, #0x18]
	ldrb r1, [r4, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	lsl r2, r1, #2
	ldr r1, _021E66C0 ; =ov109_021E78DC
	ldr r1, [r1, r2]
	bl ov109_021E691C
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #4
	blo _021E66BC
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov109_021E6F7C
	ldrb r3, [r4, #0x19]
	mov r1, #2
	add r0, r4, #0
	sub r3, r3, #1
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl ov109_021E70C4
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	b _021E66BC
_021E6634:
	ldrb r3, [r4, #0x18]
	mov r2, #0xf0
	add r1, r3, #0
	bic r1, r2
	lsl r2, r3, #0x18
	lsr r2, r2, #0x1c
	sub r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r4, #0x18]
	ldrb r1, [r4, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	lsl r2, r1, #2
	ldr r1, _021E66C0 ; =ov109_021E78DC
	ldr r1, [r1, r2]
	bl ov109_021E691C
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _021E66BC
	ldrb r3, [r4, #0x19]
	add r0, r4, #0
	mov r1, #3
	sub r3, r3, #1
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl ov109_021E70C4
	add r0, r4, #0
	mov r1, #0
	bl ov109_021E68B8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl ov109_021E691C
	ldrb r0, [r4, #0x19]
	mov r3, #1
	sub r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	bl ov109_021E7474
	add r0, r4, #0
	bl ov109_021E7524
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _021E66B4
	add r0, r4, #0
	mov r1, #1
	bl ov109_021E74D4
_021E66B4:
	mov r0, #0
	strh r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_021E66BC:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E66C0: .word ov109_021E78DC
	thumb_func_end ov109_021E656C

	thumb_func_start ov109_021E66C4
ov109_021E66C4: ; 0x021E66C4
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #8]
	cmp r1, #0
	beq _021E66D8
	cmp r1, #1
	beq _021E6734
	cmp r1, #2
	beq _021E678C
	b _021E6814
_021E66D8:
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	mov r3, #0
	bl ov109_021E7474
	add r0, r4, #0
	mov r1, #0
	bl ov109_021E74D4
	add r0, r4, #0
	mov r1, #1
	bl ov109_021E68B8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl ov109_021E691C
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov109_021E6F7C
	mov r1, #2
	ldrb r3, [r4, #0x19]
	add r0, r4, #0
	add r2, r1, #0
	bl ov109_021E70C4
	ldrb r3, [r4, #0x19]
	add r0, r4, #0
	mov r1, #3
	add r3, r3, #1
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl ov109_021E70C4
	ldrb r1, [r4, #0x18]
	mov r0, #0xf0
	bic r1, r0
	strb r1, [r4, #0x18]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	b _021E6814
_021E6734:
	ldrb r3, [r4, #0x18]
	mov r2, #0xf0
	add r1, r3, #0
	bic r1, r2
	lsl r2, r3, #0x18
	lsr r2, r2, #0x1c
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r4, #0x18]
	ldrb r1, [r4, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	lsl r2, r1, #2
	ldr r1, _021E6818 ; =ov109_021E78DC
	ldr r1, [r1, r2]
	bl ov109_021E691C
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #4
	blo _021E6814
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov109_021E6F7C
	ldrb r3, [r4, #0x19]
	add r0, r4, #0
	mov r1, #2
	add r3, r3, #1
	lsl r3, r3, #0x18
	mov r2, #1
	lsr r3, r3, #0x18
	bl ov109_021E70C4
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	b _021E6814
_021E678C:
	ldrb r3, [r4, #0x18]
	mov r2, #0xf0
	add r1, r3, #0
	bic r1, r2
	lsl r2, r3, #0x18
	lsr r2, r2, #0x1c
	sub r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r4, #0x18]
	ldrb r1, [r4, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	lsl r2, r1, #2
	ldr r1, _021E6818 ; =ov109_021E78DC
	ldr r1, [r1, r2]
	bl ov109_021E691C
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _021E6814
	ldrb r3, [r4, #0x19]
	add r0, r4, #0
	mov r1, #3
	add r3, r3, #1
	lsl r3, r3, #0x18
	mov r2, #1
	lsr r3, r3, #0x18
	bl ov109_021E70C4
	add r0, r4, #0
	mov r1, #0
	bl ov109_021E68B8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl ov109_021E691C
	ldrb r0, [r4, #0x19]
	mov r3, #1
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	bl ov109_021E7474
	add r0, r4, #0
	bl ov109_021E7524
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _021E680C
	add r0, r4, #0
	mov r1, #1
	bl ov109_021E74D4
_021E680C:
	mov r0, #0
	strh r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_021E6814:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E6818: .word ov109_021E78DC
	thumb_func_end ov109_021E66C4

