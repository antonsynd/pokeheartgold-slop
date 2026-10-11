	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E75C8
	.public ov109_021E7640
	.public ov109_021E76F0
	.public ov109_021E7748
	.public ov109_021E77D4
	.public ov109_021E7810
	.public ov109_021E7850
	.extern ov109_021E5DEC
	.extern ov109_021E70C4
	.extern ov109_021E7248
	.extern ov109_021E7388
	.extern ov109_021E73F8
	.extern ov109_021E7474
	.extern ov109_021E74D4
	.extern ov109_021E7524
	.extern ov109_021E75B4
	.extern ov109_021E789C

	.text

	.text
	thumb_func_start ov109_021E75C8
ov109_021E75C8: ; 0x021E75C8
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, _021E763C ; =ov109_021E789C
	add r2, sp, #0xc
	ldrh r3, [r0]
	add r1, sp, #0xc
	strh r3, [r2]
	ldrh r3, [r0, #2]
	strh r3, [r2, #2]
	ldrh r3, [r0, #4]
	strh r3, [r2, #4]
	ldrh r3, [r0, #6]
	strh r3, [r2, #6]
	ldrh r3, [r0, #8]
	ldrh r0, [r0, #0xa]
	strh r3, [r2, #8]
	strh r0, [r2, #0xa]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r3, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x1c]
	mov r0, #4
	strb r0, [r2, #0x14]
	mov r0, #0xb
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0xc]
	add r0, #0x80
	lsl r2, r2, #0x18
	ldr r0, [r0]
	lsr r2, r2, #0x18
	bl TouchscreenListMenu_Create
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	mov r3, #0
	bl ov109_021E7474
	add sp, #0x24
	pop {r3, r4, pc}
	nop
_021E763C: .word ov109_021E789C
	thumb_func_end ov109_021E75C8

	thumb_func_start ov109_021E7640
ov109_021E7640: ; 0x021E7640
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	bl TouchscreenListMenu_HandleInput
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021E76EC
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl TouchscreenListMenu_WasLastInputTouch
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl TouchscreenListMenu_Destroy
	ldr r0, [r5, #0xc]
	cmp r0, r6
	beq _021E7678
	add r0, r5, #0
	bl ov109_021E75B4
_021E7678:
	cmp r4, #0
	beq _021E7686
	cmp r4, #1
	beq _021E7696
	cmp r4, #2
	beq _021E76AC
	b _021E76CE
_021E7686:
	ldr r0, [r5, #0x10]
	mov r1, #1
	strb r1, [r0, #1]
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #0x10]
	strb r1, [r0, #2]
	mov r0, #8
	pop {r4, r5, r6, pc}
_021E7696:
	mov r2, #0
	add r0, r5, #0
	mov r1, #4
	add r3, r2, #0
	bl ov109_021E73F8
	mov r0, #2
	add r5, #0x20
	strb r0, [r5]
	mov r0, #7
	pop {r4, r5, r6, pc}
_021E76AC:
	ldrb r1, [r5, #0x1b]
	ldrb r2, [r5, #0x1c]
	add r0, r5, #0
	mov r3, #1
	bl ov109_021E7474
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl ov109_021E73F8
	mov r0, #1
	add r5, #0x20
	strb r0, [r5]
	mov r0, #5
	pop {r4, r5, r6, pc}
_021E76CE:
	add r0, r5, #0
	mov r1, #0
	bl ov109_021E7248
	add r0, r5, #0
	mov r1, #0
	bl ov109_021E74D4
	ldrb r1, [r5, #0x1b]
	ldrb r2, [r5, #0x1c]
	add r0, r5, #0
	mov r3, #1
	bl ov109_021E7474
	mov r0, #1
_021E76EC:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov109_021E7640

	thumb_func_start ov109_021E76F0
ov109_021E76F0: ; 0x021E76F0
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4, #0x14]
	mov r1, #0x19
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x7a
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r2, #0x10
	strb r2, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	mov r3, #0xf
	bic r1, r3
	ldr r3, [r4, #0xc]
	add r4, #0x8c
	lsl r3, r3, #0x18
	lsr r5, r3, #0x18
	mov r3, #0xf
	and r3, r5
	orr r1, r3
	strb r1, [r0, #0x12]
	ldrb r3, [r0, #0x12]
	mov r1, #0xf0
	bic r3, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r0, #0x12]
	ldr r0, [r4]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov109_021E76F0

	thumb_func_start ov109_021E7748
ov109_021E7748: ; 0x021E7748
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl YesNoPrompt_HandleInput
	add r4, r0, #0
	cmp r4, #1
	beq _021E7760
	cmp r4, #2
	beq _021E776E
	b _021E776A
_021E7760:
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov109_021E5DEC
	b _021E776E
_021E776A:
	mov r0, #7
	pop {r3, r4, r5, pc}
_021E776E:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl YesNoPrompt_IsInTouchMode
	ldr r1, [r5, #0xc]
	cmp r0, r1
	beq _021E7780
	str r0, [r5, #0xc]
_021E7780:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl YesNoPrompt_Reset
	add r0, r5, #0
	mov r1, #0
	bl ov109_021E74D4
	cmp r4, #1
	bne _021E77A8
	ldrb r3, [r5, #0x19]
	mov r1, #3
	add r0, r5, #0
	add r2, r1, #0
	bl ov109_021E70C4
	add r0, r5, #0
	bl ov109_021E7524
_021E77A8:
	ldrb r1, [r5, #0x1b]
	ldrb r2, [r5, #0x1c]
	add r0, r5, #0
	mov r3, #1
	bl ov109_021E7474
	add r0, r5, #0
	mov r1, #0
	bl ov109_021E7248
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov109_021E73F8
	mov r0, #0
	add r5, #0x20
	strb r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov109_021E7748

	thumb_func_start ov109_021E77D4
ov109_021E77D4: ; 0x021E77D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #8
	bl Heap_AllocAtEnd
	mov r1, #0
	mov r2, #8
	add r5, r0, #0
	bl MI_CpuFill8
	ldr r0, _021E780C ; =ov109_021E7810
	add r1, r5, #0
	mov r2, #0
	str r4, [r5]
	bl SysTask_CreateOnMainQueue
	add r0, r4, #0
	mov r1, #1
	bl ov109_021E7388
	ldrb r1, [r4, #0x18]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E780C: .word ov109_021E7810
	thumb_func_end ov109_021E77D4

	thumb_func_start ov109_021E7810
ov109_021E7810: ; 0x021E7810
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r0, #0xa8
	ldr r0, [r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	bne _021E784C
	ldr r0, [r4]
	mov r1, #0
	bl ov109_021E7388
	ldr r2, [r4]
	mov r0, #1
	ldrb r1, [r2, #0x18]
	bic r1, r0
	strb r1, [r2, #0x18]
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
_021E784C:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov109_021E7810

	thumb_func_start ov109_021E7850
ov109_021E7850: ; 0x021E7850
	push {r3, r4}
	mov r1, #0
	ldr r3, _021E7880 ; =0x000001ED
	add r2, r1, #0
_021E7858:
	lsl r4, r2, #2
	add r4, r0, r4
	add r4, #0x6c
	ldrh r4, [r4]
	cmp r4, #0
	ble _021E786E
	cmp r4, r3
	bgt _021E786E
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
_021E786E:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #6
	blo _021E7858
	add r0, r1, #0
	pop {r3, r4}
	bx lr
	nop
_021E7880: .word 0x000001ED
	thumb_func_end ov109_021E7850

