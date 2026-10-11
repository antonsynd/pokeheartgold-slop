	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222E450
	.public ov80_0222E558
	.public ov80_0222E5A8
	.public ov80_0222E5B0
	.public ov80_0222E690
	.public ov80_0222E714
	.public ov80_0222E754
	.public ov80_0222E7C8
	.public ov80_0222E88C
	.public ov80_0222E8FC

	.text

	thumb_func_start ov80_0222E450
ov80_0222E450: ; 0x0222E450
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [sp, #0x28]
	add r7, r0, #0
	add r4, r2, #0
	add r5, r3, #0
	cmp r1, #0
	bne _0222E47E
	ldr r3, [r7, #0x34]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xbf
	bl NewMsgDataFromNarc
	add r1, r6, #0
	add r1, #0x8c
	str r0, [r1]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	b _0222E48E
_0222E47E:
	add r0, r6, #0
	add r0, #0x8c
	str r1, [r0]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
_0222E48E:
	add r0, r6, #0
	add r0, #0x97
	strb r1, [r0]
	add r0, r6, #0
	ldr r1, [sp, #0x24]
	add r0, #0x90
	str r1, [r0]
	add r0, r6, #0
	ldr r1, [sp, #0x20]
	str r7, [r6]
	add r0, #0xa0
	str r1, [r0]
	add r1, r6, #0
	add r1, #0xa0
	ldr r1, [r1]
	mov r0, #0
	strh r0, [r1]
	add r1, r6, #0
	add r1, #0x97
	ldrb r3, [r1]
	mov r1, #1
	bic r3, r1
	add r1, sp, #8
	ldrb r2, [r1, #0x14]
	mov r1, #1
	and r1, r2
	add r2, r3, #0
	orr r2, r1
	add r1, r6, #0
	add r1, #0x97
	strb r2, [r1]
	add r1, sp, #8
	add r2, r6, #0
	ldrb r1, [r1, #0x10]
	add r2, #0x96
	mov r3, #3
	strb r1, [r2]
	add r2, r6, #0
	add r2, #0x98
	strb r4, [r2]
	add r2, r6, #0
	add r2, #0x99
	strb r5, [r2]
	add r2, r6, #0
	add r2, #0x9b
	strb r0, [r2]
	add r2, r7, #0
	add r2, #0x64
	str r2, [r6, #0x18]
	add r2, r6, #0
	add r2, #0x94
	strb r3, [r2]
	mov r2, #0xb5
	lsl r2, r2, #2
	strh r1, [r6, r2]
	add r3, r6, #0
	add r2, r0, #0
_0222E500:
	add r1, r3, #0
	add r1, #0xb4
	str r2, [r1]
	add r1, r3, #0
	add r1, #0xb8
	add r0, r0, #1
	add r3, #8
	str r2, [r1]
	cmp r0, #0x1c
	blt _0222E500
	add r0, r6, #0
	add r1, r6, #0
	mov r5, #0
	mov r4, #0xff
_0222E51C:
	mov r3, #0x6f
	lsl r3, r3, #2
	str r5, [r0, r3]
	add r3, r3, #4
	str r5, [r0, r3]
	mov r3, #0xa7
	lsl r3, r3, #2
	strh r4, [r1, r3]
	add r2, r2, #1
	add r0, #8
	add r1, r1, #2
	cmp r2, #0x1c
	blt _0222E51C
	add r4, r6, #0
_0222E538:
	ldr r1, [r7, #0x34]
	mov r0, #0x50
	bl String_New
	str r0, [r4, #0x1c]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x1c
	blt _0222E538
	add r6, #0xa0
	ldr r1, _0222E554 ; =0x0000EEEE
	ldr r0, [r6]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222E554: .word 0x0000EEEE
	thumb_func_end ov80_0222E450

	thumb_func_start ov80_0222E558
ov80_0222E558: ; 0x0222E558
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r2, [sp, #0x14]
	add r7, r1, #0
	mov r1, #0xb6
	ldr r0, [r5, #0x34]
	lsl r1, r1, #2
	add r4, r3, #0
	bl Heap_Alloc
	add r6, r0, #0
	bne _0222E578
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222E578:
	mov r2, #0xb6
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	str r4, [sp]
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	add r1, r6, #0
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov80_0222E450
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov80_0222E558

	thumb_func_start ov80_0222E5A8
ov80_0222E5A8: ; 0x0222E5A8
	push {r3, lr}
	bl ov80_0222E690
	pop {r3, pc}
	thumb_func_end ov80_0222E5A8

	thumb_func_start ov80_0222E5B0
ov80_0222E5B0: ; 0x0222E5B0
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	bl FrontierSystem_GetFrontierMap
	add r4, r0, #0
	add r0, r5, #0
	bl ov80_0222E714
	mov r1, #7
	tst r1, r0
	bne _0222E5CE
	lsr r0, r0, #3
	b _0222E5D2
_0222E5CE:
	lsr r0, r0, #3
	add r0, r0, #1
_0222E5D2:
	add r1, r5, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _0222E5EC
	add r1, r5, #0
	add r1, #0x98
	ldrb r1, [r1]
	sub r2, r1, r0
	add r1, r5, #0
	add r1, #0x98
	strb r2, [r1]
_0222E5EC:
	add r1, r5, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _0222E60E
	add r1, r5, #0
	add r1, #0x99
	ldrb r2, [r1]
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	lsl r1, r1, #1
	sub r2, r2, r1
	add r1, r5, #0
	add r1, #0x99
	strb r2, [r1]
_0222E60E:
	add r1, r5, #0
	add r1, #0x99
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	add r3, r5, #0
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r5, #0
	mov r2, #1
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	add r3, #0x98
	ldrb r3, [r3]
	ldr r0, [r4]
	add r1, #8
	bl AddWindowParameterized
	add r0, r5, #0
	ldr r2, _0222E688 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xc
	bl DrawFrameAndWindow1
	add r0, r5, #0
	bl ov80_0222E754
	ldr r2, [r5]
	add r1, r5, #0
	add r1, #0x96
	ldr r2, [r2, #0x34]
	add r0, r5, #0
	lsl r2, r2, #0x18
	ldrb r1, [r1]
	add r0, #0xa4
	lsr r2, r2, #0x18
	bl Create2dMenu
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1]
	add r0, r5, #0
	bl ov80_0222E8FC
	ldr r0, _0222E68C ; =ov80_0222E7C8
	add r1, r5, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0222E688: .word 0x000003D9
_0222E68C: .word ov80_0222E7C8
	thumb_func_end ov80_0222E5B0

	thumb_func_start ov80_0222E690
ov80_0222E690: ; 0x0222E690
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	ldr r1, [r5]
	mov r0, #0x50
	ldr r1, [r1, #0x34]
	add r6, r2, #0
	add r7, r3, #0
	bl String_New
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp]
	add r2, r4, #0
	bl ReadMsgDataIntoString
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0x90
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	add r2, r4, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r5, r0
	lsl r1, r1, #3
	add r1, r5, r1
	ldr r0, [r0, #0x1c]
	add r1, #0xb4
	str r0, [r1]
	add r0, r4, #0
	bl String_Delete
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0xa7
	lsl r0, r0, #2
	strh r6, [r1, r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r5, r0
	add r0, #0xb8
	str r7, [r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r5, #0x9b
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_0222E690

	thumb_func_start ov80_0222E714
ov80_0222E714: ; 0x0222E714
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _0222E74C
	add r5, r7, #0
_0222E726:
	add r0, r5, #0
	add r0, #0xb4
	ldr r1, [r0]
	cmp r1, #0
	beq _0222E74C
	mov r0, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	cmp r6, r0
	bhs _0222E73E
	add r6, r0, #0
_0222E73E:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _0222E726
_0222E74C:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_0222E714

	thumb_func_start ov80_0222E754
ov80_0222E754: ; 0x0222E754
	add r2, r0, #0
	add r1, r0, #0
	add r2, #0xb4
	add r1, #0xa4
	str r2, [r1]
	add r2, r0, #0
	add r1, r0, #0
	add r2, #8
	add r1, #0xa8
	str r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xac
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0xad
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x9b
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0xae
	strb r2, [r1]
	add r2, r0, #0
	add r2, #0xaf
	ldrb r3, [r2]
	mov r2, #0xf
	add r1, r0, #0
	bic r3, r2
	add r2, r0, #0
	add r2, #0xaf
	strb r3, [r2]
	add r2, r0, #0
	add r2, #0xaf
	ldrb r3, [r2]
	mov r2, #0x30
	add r1, #0xaf
	bic r3, r2
	add r2, r0, #0
	add r2, #0xaf
	strb r3, [r2]
	add r0, #0x9b
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, #4
	blo _0222E7BE
	mov r0, #0xc0
	bic r2, r0
	mov r0, #0x40
	orr r0, r2
	strb r0, [r1]
	bx lr
_0222E7BE:
	mov r0, #0xc0
	bic r2, r0
	strb r2, [r1]
	bx lr
	.balign 4, 0
	thumb_func_end ov80_0222E754

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

