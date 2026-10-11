	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222E7C8
	.public ov80_0222E88C
	.extern ov80_0222E8FC

	.text

	.text
	thumb_func_start ov80_0222E7C8
ov80_0222E7C8: ; 0x0222E7C8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _0222E7E4
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	add r5, #0x94
	sub r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_0222E7E4:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0222E87E
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl Handle2dMenuInput
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0222E814
	bl System_GetTouchNew
	cmp r0, #1
	bne _0222E814
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl Get2dMenuSelection
	add r4, r0, #0
_0222E814:
	ldr r0, _0222E880 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	bne _0222E830
	mov r1, #0x80
	tst r1, r0
	bne _0222E830
	mov r1, #0x20
	tst r1, r0
	bne _0222E830
	mov r1, #0x10
	tst r0, r1
	beq _0222E836
_0222E830:
	add r0, r5, #0
	bl ov80_0222E8FC
_0222E836:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	ldr r1, _0222E884 ; =0x0000EEDD
	ldrh r2, [r0]
	cmp r2, r1
	bne _0222E84C
	add r0, r5, #0
	bl ov80_0222E88C
	pop {r3, r4, r5, pc}
_0222E84C:
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	beq _0222E85C
	add r1, r1, #1
	cmp r4, r1
	beq _0222E87E
	b _0222E876
_0222E85C:
	add r1, r5, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _0222E87E
	ldr r1, _0222E888 ; =0x0000FFFE
	strh r1, [r0]
	add r0, r5, #0
	bl ov80_0222E88C
	pop {r3, r4, r5, pc}
_0222E876:
	strh r4, [r0]
	add r0, r5, #0
	bl ov80_0222E88C
_0222E87E:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222E880: .word gSystem
_0222E884: .word 0x0000EEDD
_0222E888: .word 0x0000FFFE
	thumb_func_end ov80_0222E7C8

	thumb_func_start ov80_0222E88C
ov80_0222E88C: ; 0x0222E88C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0222E8F8 ; =0x000005DC
	ldr r7, [r6]
	bl PlaySE
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0]
	mov r1, #0
	bl Delete2dMenu
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #0
	bl sub_0200E5D4
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl RemoveWindow
	mov r4, #0
	add r5, r6, #0
_0222E8BE:
	ldr r0, [r5, #0x1c]
	bl String_Delete
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _0222E8BE
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0222E8E4
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl DestroyMsgData
_0222E8E4:
	ldr r0, [r6, #4]
	bl SysTask_Destroy
	add r0, r6, #0
	bl Heap_Free
	mov r0, #0
	str r0, [r7, #0x60]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E8F8: .word 0x000005DC
	thumb_func_end ov80_0222E88C

