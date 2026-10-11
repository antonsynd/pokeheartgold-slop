	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6CE8
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6CE8
ov00_021E6CE8: ; 0x021E6CE8
	push {r3, r4, r5, lr}
	ldr r0, _021E6D50 ; =_0221A680
	ldr r1, _021E6D54 ; =0x00001064
	ldr r0, [r0]
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _021E6D4E
	add r1, #8
	ldr r2, [r0, r1]
	mov r1, #0x1f
	add r5, r2, #0
	and r5, r1
	mov r1, #0xc
	add r4, r5, #0
	mul r4, r1
	add r1, #0xf4
	ldr r0, [r0, r1]
	add r0, r0, r4
	bl DWC_IsBuddyFriendData
	cmp r0, #0
	beq _021E6D3E
	ldr r0, _021E6D50 ; =_0221A680
	ldr r3, _021E6D54 ; =0x00001064
	ldr r2, [r0]
	mov r0, #1
	lsl r0, r0, #8
	ldr r1, [r2, r3]
	ldr r0, [r2, r0]
	add r3, r3, #4
	ldr r2, [r2, r3]
	add r0, r0, r4
	add r3, r2, #0
	mul r3, r5
	add r1, r1, r3
	add r2, sp, #0
	bl ov00_021EFDCC
	ldr r1, _021E6D50 ; =_0221A680
	ldr r1, [r1]
	add r2, r1, r5
	ldr r1, _021E6D58 ; =0x00001044
	strb r0, [r2, r1]
_021E6D3E:
	ldr r0, _021E6D50 ; =_0221A680
	ldr r1, _021E6D5C ; =0x0000106C
	ldr r3, [r0]
	ldr r0, [r3, r1]
	add r2, r0, #1
	mov r0, #0x1f
	and r0, r2
	str r0, [r3, r1]
_021E6D4E:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6D50: .word _0221A680
_021E6D54: .word 0x00001064
_021E6D58: .word 0x00001044
_021E6D5C: .word 0x0000106C
	thumb_func_end ov00_021E6CE8

