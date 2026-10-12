	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E74A8
	.public ov00_021E74FC
	.public ov00_021E7544
	.public ov00_021E756C
	.extern _0221A684
	.extern ov00_021E6A4C
	.extern ov00_021E7638

	.text

	.text
	thumb_func_start ov00_021E74A8
ov00_021E74A8: ; 0x021E74A8
	push {r4, lr}
	ldr r1, _021E74F4 ; =_0221A684
	ldr r2, [r1, #4]
	ldr r1, _021E74F8 ; =0x00001A54
	ldr r4, [r2, r1]
	cmp r4, #0
	bne _021E74CA
	bl VCT_CreateSession
	add r4, r0, #0
	bne _021E74C2
	mov r0, #0
	pop {r4, pc}
_021E74C2:
	mov r1, #0
	bl VCT_Request
	b _021E74D2
_021E74CA:
	add r0, r4, #0
	mov r1, #0
	bl VCT_Request
_021E74D2:
	cmp r0, #0
	beq _021E74E8
	add r0, r4, #0
	bl VCT_DeleteSession
	ldr r1, _021E74F4 ; =_0221A684
	mov r0, #0
	ldr r2, [r1, #4]
	ldr r1, _021E74F8 ; =0x00001A54
	str r0, [r2, r1]
	pop {r4, pc}
_021E74E8:
	ldr r0, _021E74F4 ; =_0221A684
	ldr r1, [r0, #4]
	ldr r0, _021E74F8 ; =0x00001A54
	str r4, [r1, r0]
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021E74F4: .word _0221A684
_021E74F8: .word 0x00001A54
	thumb_func_end ov00_021E74A8

	thumb_func_start ov00_021E74FC
ov00_021E74FC: ; 0x021E74FC
	push {r3, lr}
	ldr r0, _021E753C ; =_0221A684
	ldr r1, [r0, #4]
	ldr r0, _021E7540 ; =0x00001A54
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021E7536
	ldr r1, [r0, #0xc]
	cmp r1, #4
	bne _021E7536
	mov r1, #0
	bl VCT_Response
	cmp r0, #0
	beq _021E751E
	mov r0, #0
	pop {r3, pc}
_021E751E:
	ldr r0, _021E753C ; =_0221A684
	ldr r1, [r0, #4]
	ldr r0, _021E7540 ; =0x00001A54
	ldr r0, [r1, r0]
	bl VCT_StartStreaming
	cmp r0, #0
	beq _021E7532
	mov r0, #1
	pop {r3, pc}
_021E7532:
	mov r0, #0
	pop {r3, pc}
_021E7536:
	mov r0, #0
	pop {r3, pc}
	nop
_021E753C: .word _0221A684
_021E7540: .word 0x00001A54
	thumb_func_end ov00_021E74FC

	thumb_func_start ov00_021E7544
ov00_021E7544: ; 0x021E7544
	push {r3, lr}
	cmp r1, #7
	beq _021E755C
	cmp r1, #9
	beq _021E7554
	cmp r1, #0xc
	beq _021E7564
	pop {r3, pc}
_021E7554:
	add r0, r2, #0
	bl ov00_021E7638
	pop {r3, pc}
_021E755C:
	add r0, r2, #0
	bl VCT_StartStreaming
	pop {r3, pc}
_021E7564:
	add r0, r2, #0
	bl ov00_021E7638
	pop {r3, pc}
	thumb_func_end ov00_021E7544

	thumb_func_start ov00_021E756C
ov00_021E756C: ; 0x021E756C
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #0xc
	bhi _021E7624
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E7580: ; jump table
	.short _021E7624 - _021E7580 - 2 ; case 0
	.short _021E759A - _021E7580 - 2 ; case 1
	.short _021E7616 - _021E7580 - 2 ; case 2
	.short _021E761E - _021E7580 - 2 ; case 3
	.short _021E75DA - _021E7580 - 2 ; case 4
	.short _021E7624 - _021E7580 - 2 ; case 5
	.short _021E7624 - _021E7580 - 2 ; case 6
	.short _021E75EA - _021E7580 - 2 ; case 7
	.short _021E75BA - _021E7580 - 2 ; case 8
	.short _021E75CE - _021E7580 - 2 ; case 9
	.short _021E7624 - _021E7580 - 2 ; case 10
	.short _021E761E - _021E7580 - 2 ; case 11
	.short _021E761E - _021E7580 - 2 ; case 12
_021E759A:
	ldr r0, _021E7628 ; =_0221A684
	ldr r2, [r0, #4]
	ldr r0, _021E762C ; =0x00001A54
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021E75B6
	add r0, r4, #0
	mov r1, #3
	bl VCT_Response
	add r0, r4, #0
	bl VCT_DeleteSession
	pop {r4, pc}
_021E75B6:
	str r4, [r2, r0]
	pop {r4, pc}
_021E75BA:
	add r0, r4, #0
	mov r1, #0
	bl VCT_Response
	add r0, r4, #0
	bl ov00_021E7638
	bl ov00_021E6A4C
	pop {r4, pc}
_021E75CE:
	add r0, r4, #0
	bl ov00_021E7638
	bl ov00_021E6A4C
	pop {r4, pc}
_021E75DA:
	add r0, r4, #0
	mov r1, #4
	bl VCT_Response
	add r0, r4, #0
	bl ov00_021E7638
	pop {r4, pc}
_021E75EA:
	ldr r0, _021E7628 ; =_0221A684
	ldr r2, [r4]
	ldr r1, [r0, #4]
	ldr r0, _021E7630 ; =0x000019E8
	ldr r0, [r1, r0]
	cmp r2, r0
	beq _021E7600
	add r0, r4, #0
	bl ov00_021E7638
	pop {r4, pc}
_021E7600:
	add r0, r4, #0
	bl VCT_StartStreaming
	cmp r0, #0
	beq _021E7624
	ldr r0, _021E7628 ; =_0221A684
	mov r2, #2
	ldr r1, [r0, #4]
	ldr r0, _021E7634 ; =0x000019EC
	str r2, [r1, r0]
	pop {r4, pc}
_021E7616:
	add r0, r4, #0
	bl ov00_021E7638
	pop {r4, pc}
_021E761E:
	add r0, r4, #0
	bl ov00_021E7638
_021E7624:
	pop {r4, pc}
	nop
_021E7628: .word _0221A684
_021E762C: .word 0x00001A54
_021E7630: .word 0x000019E8
_021E7634: .word 0x000019EC
	thumb_func_end ov00_021E756C

