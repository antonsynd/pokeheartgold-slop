	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6484
	.extern _0221A680
	.extern ov00_021E644C
	.extern ov00_021E65D4
	.extern ov00_021E6638
	.extern ov00_021E77A4

	.text

	.text
	thumb_func_start ov00_021E6484
ov00_021E6484: ; 0x021E6484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r4, r1, #0
	ldrb r3, [r4, #1]
	ldrb r6, [r4]
	add r7, r2, #0
	lsl r3, r3, #8
	mov ip, r3
	ldrb r3, [r4, #3]
	lsl r5, r3, #0x18
	ldrb r3, [r4, #2]
	lsl r3, r3, #0x10
	orr r3, r5
	mov r5, ip
	orr r3, r5
	orr r3, r6
	str r3, [sp, #4]
	ldr r3, _021E6544 ; =_0221A680
	ldr r5, _021E6548 ; =0x000010A8
	ldr r6, [r3]
	mov r3, #1
	str r3, [r6, r5]
	ldr r3, [sp, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #1
	bne _021E64D0
	ldr r0, [sp, #4]
	bl ov00_021E644C
	ldr r0, _021E6544 ; =_0221A680
	ldrb r2, [r4, #2]
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0x35
	strb r2, [r1, r0]
	b _021E64E2
_021E64D0:
	bl ov00_021E77A4
	cmp r0, #0
	bne _021E6540
	ldr r0, [sp, #4]
	bl ov00_021E644C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021E64E2:
	sub r6, r7, #4
	mov r0, #0
	add r1, r6, #0
	mov r2, #4
	bl ov00_021E65D4
	add r5, r0, #0
	beq _021E6540
	add r0, r4, #4
	add r1, r5, #0
	add r2, r6, #0
	bl MI_CpuCopy8
	bl ov00_021EE490
	cmp r0, #0
	bne _021E651E
	ldr r0, _021E6544 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E654C ; =0x00000FA4
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021E6536
	add r2, r6, #0
	lsl r2, r2, #0x10
	ldr r0, [sp]
	add r1, r5, #0
	lsr r2, r2, #0x10
	blx r3
	b _021E6536
_021E651E:
	ldr r0, _021E6544 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E6550 ; =0x00000FA8
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021E6536
	add r2, r6, #0
	lsl r2, r2, #0x10
	ldr r0, [sp]
	add r1, r5, #0
	lsr r2, r2, #0x10
	blx r3
_021E6536:
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov00_021E6638
_021E6540:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6544: .word _0221A680
_021E6548: .word 0x000010A8
_021E654C: .word 0x00000FA4
_021E6550: .word 0x00000FA8
	thumb_func_end ov00_021E6484

