	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E79CC
	.extern _0221A684
	.extern ov00_021E6A4C

	.text

	.text
	thumb_func_start ov00_021E79CC
ov00_021E79CC: ; 0x021E79CC
	push {r3, lr}
	ldr r0, _021E7A14 ; =_0221A684
	ldr r1, _021E7A18 ; =0x00001A54
	ldr r2, [r0, #4]
	ldr r0, [r2, r1]
	cmp r0, #0
	beq _021E79E2
	sub r1, #0x68
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021E79E8
_021E79E2:
	bl ov00_021E6A4C
	pop {r3, pc}
_021E79E8:
	cmp r1, #1
	bne _021E79FC
	mov r1, #2
	bl VCT_Request
	cmp r0, #0
	beq _021E79FC
	bl ov00_021E6A4C
	pop {r3, pc}
_021E79FC:
	ldr r0, _021E7A14 ; =_0221A684
	ldr r1, [r0, #4]
	ldr r0, _021E7A18 ; =0x00001A54
	ldr r0, [r1, r0]
	mov r1, #1
	bl VCT_Request
	cmp r0, #0
	beq _021E7A12
	bl ov00_021E6A4C
_021E7A12:
	pop {r3, pc}
	.balign 4, 0
_021E7A14: .word _0221A684
_021E7A18: .word 0x00001A54
	thumb_func_end ov00_021E79CC

