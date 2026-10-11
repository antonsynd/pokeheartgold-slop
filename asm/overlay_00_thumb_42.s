	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6FE0
	.public ov00_021E700C
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6FE0
ov00_021E6FE0: ; 0x021E6FE0
	push {r3, lr}
	ldr r2, _021E7004 ; =_0221A680
	ldr r1, _021E7008 ; =0x00001098
	ldr r3, [r2]
	str r0, [r3, r1]
	ldr r3, [r2]
	add r2, r1, #0
	sub r2, #0xe4
	ldr r2, [r3, r2]
	cmp r2, #0
	beq _021E7000
	sub r1, #0xe0
	lsl r0, r0, #0x10
	ldr r1, [r3, r1]
	lsr r0, r0, #0x10
	blx r2
_021E7000:
	pop {r3, pc}
	nop
_021E7004: .word _0221A680
_021E7008: .word 0x00001098
	thumb_func_end ov00_021E6FE0

	thumb_func_start ov00_021E700C
ov00_021E700C: ; 0x021E700C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _021E7074 ; =_0221A680
	ldr r1, [r0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl DWC_CheckHasProfile
	cmp r0, #0
	bne _021E7034
	ldr r0, _021E7074 ; =_0221A680
	ldr r1, [r0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl DWC_CreateExchangeToken
	b _021E7044
_021E7034:
	ldr r0, _021E7074 ; =_0221A680
	ldr r1, [r0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl DWC_CreateExchangeToken
_021E7044:
	mov r4, #0
	mov r7, #1
	ldr r6, _021E7074 ; =_0221A680
	add r5, r4, #0
	lsl r7, r7, #8
_021E704E:
	mov r0, #1
	ldr r1, [r6]
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	add r0, r0, r5
	bl DWC_GetFriendDataType
	ldr r0, [r6]
	ldr r0, [r0, r7]
	add r0, r0, r5
	bl DWC_IsBuddyFriendData
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #0x20
	blt _021E704E
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7074: .word _0221A680
	thumb_func_end ov00_021E700C

