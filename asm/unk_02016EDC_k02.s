	.include "macros.inc"
	.include "unk_02016EDC.inc"
	.include "global.inc"
	.public sub_02016F40
	.extern sub_020170C4

	.text
	thumb_func_start sub_02016F40
sub_02016F40: ; 0x02016F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, r2, #0
	ldrh r6, [r0]
	ldrh r0, [r0, #2]
	add r7, r1, #0
	ldrb r1, [r5, #9]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	str r2, [sp]
	cmp r0, r1
	blo _02016F60
	bl GF_AssertFail
_02016F60:
	ldr r0, [sp, #4]
	mov r1, #0x1d
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5]
	mul r4, r1
	add r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02016F78
	bl GF_AssertFail
_02016F78:
	ldr r0, [r5]
	mov r2, #0x1d
	add r0, r0, r4
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	ldr r0, [r5]
	mov r1, #1
	add r0, r0, r4
	str r1, [r0, #0x10]
	ldr r0, [r5]
	cmp r6, #0x8f
	str r7, [r0, r4]
	blt _02016F9A
	mov r6, #0
	str r6, [sp, #8]
_02016F9A:
	ldr r0, [r5]
	add r0, r0, r4
	str r6, [r0, #0x14]
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _02016FAC
	ldr r0, [sp]
	ldrb r2, [r0, #4]
	b _02016FAE
_02016FAC:
	mov r2, #0
_02016FAE:
	ldr r0, [r5]
	add r1, r0, r4
	mov r0, #0x73
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	add r1, r1, r4
	ldr r1, [r1, #0x14]
	mov r0, #0x5a
	bl AllocAtEndAndReadWholeNarcMemberByIdPair
	ldr r1, [r5]
	mov r2, #0
	add r1, r1, r4
	str r0, [r1, #8]
	ldr r0, [r5]
	mov r6, #0x1c
	add r1, r0, r4
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [r5]
	add r0, r0, r4
	str r2, [r0, #0x1c]
	ldr r0, [r5]
	add r0, r0, r4
	str r2, [r0, #0x20]
	ldr r0, [r5]
	add r1, r0, r4
	ldr r0, _02017060 ; =0x000001CD
	strb r2, [r1, r0]
	ldr r1, [r5]
	add r3, r1, r4
	add r1, r0, #1
	strb r6, [r3, r1]
	ldr r1, [r5]
	add r0, r0, #2
	add r1, r1, r4
	strb r2, [r1, r0]
	ldr r1, [r5]
	ldr r0, _02017064 ; =sub_020170C4
	add r1, r1, r4
	bl SysTask_CreateOnMainQueue
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r0, [r5]
	add r1, r0, r4
	ldr r0, [sp, #8]
	str r0, [r1, #0x54]
	add r0, r7, #0
	mov r1, #0
	bl Pokepic_GetAttr
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x58]
	add r0, r7, #0
	mov r1, #1
	bl Pokepic_GetAttr
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x5c]
	ldr r1, [r5]
	mov r0, #0
	add r1, r1, r4
	str r0, [r1, #0x60]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x64]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x68]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x6c]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x70]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x74]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x78]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02017060: .word 0x000001CD
_02017064: .word sub_020170C4
	thumb_func_end sub_02016F40

