	.include "asm/macros.inc"
	.include "overlay_18_021F6AB0.inc"
	.include "global.inc"
	.public ov18_021F7060
	.extern ov18_021F7018
	.extern ov18_021FBC34

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F7060
ov18_021F7060: ; 0x021F7060
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	sub r0, #0x1b
	add r4, r1, #0
	cmp r0, #1
	bhi _021F70DA
	ldr r0, _021F70F0 ; =0x0000189C
	ldr r0, [r5, r0]
	lsl r1, r0, #3
	ldr r0, _021F70F4 ; =ov18_021FBC34
	cmp r4, #0
	ldrb r0, [r0, r1]
	beq _021F7082
	cmp r4, #6
	bne _021F70AC
_021F7082:
	ldr r3, _021F70F4 ; =ov18_021FBC34
	mov r1, #0
ov18_021F7086:
	ldrb r2, [r3]
	cmp r0, r2
	bne _021F70A2
	ldr r0, _021F70F8 ; =0x00001864
	lsl r2, r6, #0x18
	add r4, r1, #0
	lsl r1, r1, #0x18
	lsr r2, r2, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F70DA
_021F70A2:
	add r1, r1, #1
	add r3, #8
	cmp r1, #0x1a
	ble ov18_021F7086
	b _021F70DA
_021F70AC:
	cmp r4, #0x15
	beq _021F70B4
	cmp r4, #0x1a
	bne _021F70DA
_021F70B4:
	ldr r3, _021F70FC ; =ov18_021FBC34 + 0xD0
	mov r1, #0x1a
_021F70B8:
	ldrb r2, [r3]
	cmp r0, r2
	bne _021F70D4
	ldr r0, _021F70F8 ; =0x00001864
	lsl r2, r6, #0x18
	add r4, r1, #0
	lsl r1, r1, #0x18
	lsr r2, r2, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F70DA
_021F70D4:
	sub r3, #8
	sub r1, r1, #1
	bpl _021F70B8
_021F70DA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F7018
	ldr r0, _021F70F0 ; =0x0000189C
	str r6, [r5, r0]
	ldr r0, _021F7100 ; =0x000008E8
	bl PlaySE
	pop {r4, r5, r6, pc}
	nop
_021F70F0: .word 0x0000189C
_021F70F4: .word ov18_021FBC34
_021F70F8: .word 0x00001864
_021F70FC: .word ov18_021FBC34 + 0xD0
_021F7100: .word 0x000008E8
	thumb_func_end ov18_021F7060

