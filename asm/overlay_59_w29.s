	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02239704

	.text

	.text
	thumb_func_start ov59_02239704
ov59_02239704: ; 0x02239704
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5]
	mov r0, #4
	bl FontID_Alloc
	ldr r3, [r5]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0x15
	bl NewMsgDataFromNarc
	str r0, [r5, #0x5c]
	ldr r2, [r5]
	mov r0, #0x10
	mov r1, #0x20
	bl MessageFormat_New_Custom
	str r0, [r5, #0x60]
	mov r0, #1
	ldr r1, [r5]
	lsl r0, r0, #8
	bl String_New
	str r0, [r5, #0x64]
	mov r0, #1
	ldr r1, [r5]
	lsl r0, r0, #8
	bl String_New
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	mov r1, #1
	bl NewString_ReadMsgData
	str r0, [r5, #0x6c]
	ldr r0, [r5, #0x5c]
	mov r1, #0x19
	bl NewString_ReadMsgData
	str r0, [r5, #0x74]
	mov r6, #0
	add r4, r5, #0
_0223975A:
	add r1, r6, #0
	ldr r0, [r5, #0x5c]
	add r1, #0x1b
	bl NewString_ReadMsgData
	str r0, [r4, #0x78]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x16
	blt _0223975A
	mov r4, #0
	add r6, r5, #0
_02239772:
	ldr r0, [r5, #0x5c]
	add r1, r4, #7
	bl NewString_ReadMsgData
	add r1, r6, #0
	add r1, #0xd0
	add r4, r4, #1
	add r6, r6, #4
	str r0, [r1]
	cmp r4, #7
	blt _02239772
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov59_02239704

