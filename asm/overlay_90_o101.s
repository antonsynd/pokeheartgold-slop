	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225A6B4
	.extern ov90_0225888C
	.extern ov90_022588A4
	.extern ov90_02258DD0
	.extern ov90_02258FF0
	.extern ov90_022590CC
	.extern ov90_02259184
	.extern ov90_0225938C
	.extern ov90_0225A204
	.extern ov90_0225A258
	.extern ov90_0225A850
	.extern ov90_0225A980
	.extern ov90_0225AE4C
	.extern ov90_0225B230
	.extern ov90_0225B340
	.extern ov90_0225C15C
	.extern ov90_0225C264
	.extern ov90_0225C2F4
	.extern ov90_0225C43C

	.text

	.text
	thumb_func_start ov90_0225A6B4
ov90_0225A6B4: ; 0x0225A6B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r3, #0
	add r6, r0, #0
	ldr r1, _0225A820 ; =0x00000664
	add r0, r5, #0
	str r2, [sp, #4]
	bl Heap_Alloc
	ldr r2, _0225A820 ; =0x00000664
	mov r1, #0
	add r4, r0, #0
	bl memset
	add r2, r4, #0
	add r2, #0x1c
	mov r1, #0x18
_0225A6D8:
	ldrb r0, [r7]
	add r7, r7, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0225A6D8
	add r2, r4, #0
	add r2, #0xc
	mov r1, #0x10
_0225A6EA:
	ldrb r0, [r6]
	add r6, r6, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0225A6EA
	ldr r0, [sp, #4]
	strb r0, [r4, #7]
	add r0, r4, #0
	bl ov90_0225C15C
	ldr r3, _0225A824 ; =0x04000050
	mov r1, #0
	strh r1, [r3]
	ldr r0, _0225A828 ; =0x04001050
	sub r3, #0x50
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, _0225A82C ; =0xFFFF1FFF
	sub r0, #0x50
	and r2, r1
	str r2, [r3]
	ldr r2, [r0]
	and r1, r2
	str r1, [r0]
	ldr r0, _0225A830 ; =ov90_0225C2F4
	bl GfGfx_SetBanks
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x34
	add r1, #0xc
	strh r5, [r4, #2]
	bl ov90_0225A204
	mov r0, #0x10
	add r1, r5, #0
	bl GF_CreateVramTransferManager
	add r0, r4, #0
	ldr r1, _0225A834 ; =ov90_0225C264
	ldr r2, _0225A838 ; =ov90_0225C43C
	add r0, #0x4c
	mov r3, #6
	str r5, [sp]
	bl ov90_02258FF0
	add r0, r4, #0
	mov r2, #2
	add r0, #0xa0
	mov r1, #0x20
	add r3, r2, #0
	str r5, [sp]
	bl ov90_022590CC
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #2
	add r2, r5, #0
	bl ov90_02258DD0
	add r0, r4, #0
	add r0, #0x58
	add r1, r5, #0
	bl ov90_02259184
	add r0, r4, #0
	add r1, r5, #0
	bl ov90_0225A850
	add r0, r4, #0
	ldrb r1, [r4, #0x15]
	add r0, #0xc
	bl ov90_0225888C
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc
	bl ov90_022588A4
	str r5, [sp]
	add r3, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0xc]
	add r0, #0x68
	add r1, #0x4c
	bl ov90_0225938C
	mov r0, #0x7a
	lsl r0, r0, #2
	add r1, r4, #0
	ldrb r2, [r4, #0x16]
	add r0, r4, r0
	add r1, #0x4c
	add r3, r5, #0
	bl ov90_0225B340
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc
	add r1, #0x34
	bl ov90_0225A258
	strb r0, [r4, #5]
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0225A7CE
	cmp r0, #1
	beq _0225A7CE
	cmp r0, #2
	beq _0225A7DE
	b _0225A7EE
_0225A7CE:
	ldr r0, _0225A83C ; =ov90_0225A980
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	ldr r1, _0225A840 ; =0x00000644
	str r0, [r4, r1]
	b _0225A800
_0225A7DE:
	ldr r0, _0225A844 ; =ov90_0225AE4C
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	ldr r1, _0225A840 ; =0x00000644
	str r0, [r4, r1]
	b _0225A800
_0225A7EE:
	bl GF_AssertFail
	ldr r0, _0225A83C ; =ov90_0225A980
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	ldr r1, _0225A840 ; =0x00000644
	str r0, [r4, r1]
_0225A800:
	ldr r0, _0225A848 ; =ov90_0225B230
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnVWaitQueue
	ldr r1, _0225A84C ; =0x00000648
	str r0, [r4, r1]
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _0225A81A
	add r0, r5, #0
	bl ov00_021E69A8
_0225A81A:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A820: .word 0x00000664
_0225A824: .word 0x04000050
_0225A828: .word 0x04001050
_0225A82C: .word 0xFFFF1FFF
_0225A830: .word ov90_0225C2F4
_0225A834: .word ov90_0225C264
_0225A838: .word ov90_0225C43C
_0225A83C: .word ov90_0225A980
_0225A840: .word 0x00000644
_0225A844: .word ov90_0225AE4C
_0225A848: .word ov90_0225B230
_0225A84C: .word 0x00000648
	thumb_func_end ov90_0225A6B4

