	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E74A8
	.extern _0221A684

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

