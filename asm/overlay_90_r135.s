	.include "macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225BD84
	.extern ov90_0225BDE4

	.text

	.text
	thumb_func_start ov90_0225BD84
ov90_0225BD84: ; 0x0225BD84
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0xcc
	mov r1, #0
	mov r2, #0xc0
	bl memset
	mov r0, #0xa
	ldrsh r2, [r4, r0]
	mov r0, #0x17
	mov r1, #0
	sub r0, r0, r2
	cmp r0, #0
	ble _0225BDC0
	ldr r7, _0225BDDC ; =0x00000115
	mov r0, #1
	mov r2, #0x79
	mov r5, #0xa
	mov r6, #0x17
_0225BDAA:
	add r3, r4, r1
	strb r0, [r3, r7]
	sub r3, r2, r1
	add r3, r4, r3
	add r3, #0xcc
	strb r0, [r3]
	ldrsh r3, [r4, r5]
	add r1, r1, #1
	sub r3, r6, r3
	cmp r1, r3
	blt _0225BDAA
_0225BDC0:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0225BDDA
	ldr r0, _0225BDE0 ; =ov90_0225BDE4
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnVWaitQueue
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
_0225BDDA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225BDDC: .word 0x00000115
_0225BDE0: .word ov90_0225BDE4
	thumb_func_end ov90_0225BD84

