	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A854
	.public ov49_0225A98C
	.public ov49_0225AA70
	.public ov49_0225B518
	.public ov49_02269754

    .text

	thumb_func_start ov49_0225A854
ov49_0225A854: ; 0x0225A854
	push {r3, r4, lr}
	sub sp, #0xc
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _0225A964 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0225A968 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0225A96C ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _0225A970 ; =ov49_02269754
	bl G3X_SetEdgeColorTable
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r1, #0
	ldr r0, _0225A974 ; =0x00006B5A
	ldr r2, _0225A978 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _0225A97C ; =0xBFFF0000
	ldr r0, _0225A980 ; =0x04000580
	ldr r2, _0225A984 ; =0xFFFFF224
	str r1, [r0]
	ldr r1, _0225A988 ; =0xFFFFF805
	mov r0, #0
	mov r3, #0x6e
	bl NNS_G3dGlbLightVector
	mov r1, #0
	add r0, sp, #4
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl VEC_Fx16Normalize
	add r4, sp, #4
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	mov r0, #1
	bl NNS_G3dGlbLightVector
	mov r1, #0
	add r0, r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl VEC_Fx16Normalize
	mov r0, #2
	mov r1, #0
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r0]
	ldrsh r3, [r4, r3]
	bl NNS_G3dGlbLightVector
	ldr r1, _0225A978 ; =0x00007FFF
	mov r0, #2
	bl NNS_G3dGlbLightColor
	mov r1, #0
	add r0, r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl VEC_Fx16Normalize
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	mov r0, #3
	bl NNS_G3dGlbLightVector
	ldr r1, _0225A978 ; =0x00007FFF
	mov r0, #3
	bl NNS_G3dGlbLightColor
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0225A964: .word 0x04000008
_0225A968: .word 0xFFFFCFFD
_0225A96C: .word 0x0000CFFB
_0225A970: .word ov49_02269754
_0225A974: .word 0x00006B5A
_0225A978: .word 0x00007FFF
_0225A97C: .word 0xBFFF0000
_0225A980: .word 0x04000580
_0225A984: .word 0xFFFFF224
_0225A988: .word 0xFFFFF805
	thumb_func_end ov49_0225A854

	thumb_func_start ov49_0225A98C
ov49_0225A98C: ; 0x0225A98C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_02258B44
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0225A9B2
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225A9B2
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_0225EF24
_0225A9B2:
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225E318
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0225A9E8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225A9E8
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_02258B5C
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_0225EF30
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_02268870
_0225A9E8:
	add r0, r4, #0
	bl ov49_0225AA70
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0225AA1E
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _0225AA0A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _0225AA0A
	ldrb r0, [r4]
	cmp r0, #1
	bne _0225AA0E
_0225AA0A:
	mov r2, #1
	b _0225AA10
_0225AA0E:
	mov r2, #0
_0225AA10:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	mov r3, #0x77
	bl ov49_0225B518
_0225AA1E:
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_02265378
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A98C

