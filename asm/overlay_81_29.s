	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public _02243458
	.public ov81_02240E78

	.text

	thumb_func_start ov81_02240E78
ov81_02240E78: ; 0x02240E78
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x64
	mov r1, #0x3c
	bl Heap_Alloc
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	mov r2, #0x3c
	bl memset
	mov r1, #0xf
	mov r2, #7
	lsl r1, r1, #6
	lsl r2, r2, #6
	ldr r3, [r4, r1]
	ldr r0, [r4, r2]
	add r1, #0xa8
	str r3, [r0]
	add r0, r2, #0
	sub r0, #8
	ldr r3, [r4, r0]
	ldr r0, [r4, r2]
	str r3, [r0, #4]
	ldr r0, [r4, r2]
	mov r3, #1
	strb r3, [r0, #0x11]
	ldr r0, [r4, r2]
	strb r3, [r0, #0x12]
	ldrb r3, [r4, #0x12]
	ldr r0, [r4, r2]
	strb r3, [r0, #0x13]
	ldr r1, [r4, r1]
	ldr r0, [r4, r2]
	strb r1, [r0, #0x14]
	ldr r0, [r4, r2]
	mov r1, #0
	strh r1, [r0, #0x18]
	sub r0, r2, #4
	ldr r0, [r4, r0]
	bl SaveArray_IsNatDexEnabled
	mov r1, #7
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	str r0, [r2, #0x1c]
	ldr r0, [r4, r1]
	mov r2, #0
	str r2, [r0, #0x2c]
	ldr r0, [r4, r1]
	str r2, [r0, #0x34]
	ldr r0, [r4, r1]
	ldr r1, _02240F04 ; =_02243458
	bl sub_02089D40
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Save_PlayerData_GetProfile
	add r1, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0208AD34
	pop {r4, pc}
	.balign 4, 0
_02240F04: .word _02243458
	thumb_func_end ov81_02240E78

