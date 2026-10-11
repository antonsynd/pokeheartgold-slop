	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221D2F4
	.public ov07_0221D330
	.public ov07_0221D374
	.extern ov07_0221C69C

	.text

	.text
	thumb_func_start ov07_0221D2F4
ov07_0221D2F4: ; 0x0221D2F4
	push {r3, lr}
	cmp r1, #0
	beq _0221D314
	mov r1, #1
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	mov r3, #0x3c
	bl StartBrightnessTransition
	pop {r3, pc}
_0221D314:
	mov r1, #1
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0x10
	mov r3, #0x3c
	bl StartBrightnessTransition
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov07_0221D2F4

	thumb_func_start ov07_0221D330
ov07_0221D330: ; 0x0221D330
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl DoAllScreenBrightnessTransitionStep
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _0221D370
	ldr r0, [r4, #4]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	beq _0221D35E
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	bl ov07_0221C69C
	pop {r3, r4, r5, pc}
_0221D35E:
	add r0, r4, #0
	mov r1, #0
	bl ov07_0221D2F4
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #4]
_0221D370:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov07_0221D330

	thumb_func_start ov07_0221D374
ov07_0221D374: ; 0x0221D374
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	str r5, [r4]
	ldr r0, [r5, #0x18]
	mov r1, #0xff
	add r2, r0, #4
	str r2, [r5, #0x18]
	ldr r0, [r4, #4]
	bic r0, r1
	ldr r1, [r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r4, #4]
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	bl ScreenBrightnessData_InitAll
	add r0, r4, #0
	mov r1, #1
	bl ov07_0221D2F4
	ldr r0, _0221D3C4 ; =ov07_0221D330
	ldr r2, _0221D3C8 ; =0x00001001
	add r1, r4, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0221D3C4: .word ov07_0221D330
_0221D3C8: .word 0x00001001
	thumb_func_end ov07_0221D374

