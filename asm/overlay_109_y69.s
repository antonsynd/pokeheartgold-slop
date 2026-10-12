	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E77D4
	.public ov109_021E7810
	.public ov109_021E7850
	.extern ov109_021E7388

	.text

	.text
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

