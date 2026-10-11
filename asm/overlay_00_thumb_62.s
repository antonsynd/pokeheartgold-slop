	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E765C
	.extern _0221A684
	.extern ov00_021E6964
	.extern ov00_021E74A8
	.extern ov00_021E74FC

	.text

	.text
	thumb_func_start ov00_021E765C
ov00_021E765C: ; 0x021E765C
	push {r4, r5, r6, lr}
	bl OS_GetTick
	add r4, r0, #0
	ldr r0, _021E778C ; =_0221A684
	add r5, r1, #0
	ldr r0, [r0, #8]
	sub r1, r4, r0
	mov r0, #0xfa
	lsl r0, r0, #8
	mul r0, r1
	ldr r1, _021E7790 ; =0x000082EA
	bl _u32_div_f
	ldr r1, _021E778C ; =_0221A684
	ldr r3, _021E7794 ; =0x0000411A
	ldr r2, [r1]
	sub r0, r0, r3
	add r2, r2, r0
	ldr r0, _021E7798 ; =0xFFFFD8F0
	str r2, [r1]
	cmp r2, r0
	bge _021E768E
	mov r0, #0
	str r0, [r1]
_021E768E:
	ldr r0, _021E778C ; =_0221A684
	str r4, [r0, #8]
	str r5, [r0, #0xc]
	bl VCT_Main
	ldr r4, _021E778C ; =_0221A684
	ldr r0, _021E7794 ; =0x0000411A
	ldr r1, [r4]
	cmp r1, r0
	blt _021E76B4
	add r6, r0, #0
	add r5, r0, #0
_021E76A6:
	bl VCT_Main
	ldr r0, [r4]
	sub r0, r0, r6
	str r0, [r4]
	cmp r0, r5
	bge _021E76A6
_021E76B4:
	ldr r0, _021E778C ; =_0221A684
	ldr r2, [r0, #4]
	mov r0, #0x6a
	lsl r0, r0, #6
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021E7708
	sub r0, r0, #4
	ldr r0, [r2, r0]
	cmp r0, #3
	bhi _021E76FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E76D6: ; jump table
	.short _021E76DE - _021E76D6 - 2 ; case 0
	.short _021E76E6 - _021E76D6 - 2 ; case 1
	.short _021E76EE - _021E76D6 - 2 ; case 2
	.short _021E76F6 - _021E76D6 - 2 ; case 3
_021E76DE:
	mov r0, #3
	bl PM_SetAmpGain
	b _021E76FC
_021E76E6:
	mov r0, #2
	bl PM_SetAmpGain
	b _021E76FC
_021E76EE:
	mov r0, #1
	bl PM_SetAmpGain
	b _021E76FC
_021E76F6:
	mov r0, #0
	bl PM_SetAmpGain
_021E76FC:
	ldr r0, _021E778C ; =_0221A684
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0x6a
	lsl r0, r0, #6
	str r2, [r1, r0]
_021E7708:
	ldr r3, _021E778C ; =_0221A684
	ldr r2, _021E779C ; =0x000019E8
	ldr r0, [r3, #4]
	ldr r1, [r0, r2]
	cmp r1, #3
	beq _021E7788
	add r1, r2, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _021E7724
	cmp r1, #1
	beq _021E7768
	cmp r1, #2
	pop {r4, r5, r6, pc}
_021E7724:
	bl ov00_021E6964
	cmp r0, #0
	bne _021E774A
	mov r0, #1
	bl ov00_021E74A8
	cmp r0, #0
	beq _021E7788
	ldr r1, _021E778C ; =_0221A684
	ldr r0, _021E77A0 ; =0x000019EC
	ldr r2, [r1, #4]
	mov r3, #1
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	mov r2, #0x3c
	add r0, #0x6e
	strh r2, [r1, r0]
	pop {r4, r5, r6, pc}
_021E774A:
	bl ov00_021E6964
	cmp r0, #1
	bne _021E7788
	mov r0, #0
	bl ov00_021E74FC
	cmp r0, #0
	beq _021E7788
	ldr r0, _021E778C ; =_0221A684
	mov r2, #2
	ldr r1, [r0, #4]
	ldr r0, _021E77A0 ; =0x000019EC
	str r2, [r1, r0]
	pop {r4, r5, r6, pc}
_021E7768:
	add r1, r2, #0
	add r1, #0x72
	ldrh r1, [r0, r1]
	sub r4, r1, #1
	add r1, r2, #0
	add r1, #0x72
	strh r4, [r0, r1]
	add r0, r2, #0
	ldr r3, [r3, #4]
	add r0, #0x72
	ldrh r0, [r3, r0]
	cmp r0, #0
	bne _021E7788
	mov r1, #0
	add r0, r2, #4
	str r1, [r3, r0]
_021E7788:
	pop {r4, r5, r6, pc}
	nop
_021E778C: .word _0221A684
_021E7790: .word 0x000082EA
_021E7794: .word 0x0000411A
_021E7798: .word 0xFFFFD8F0
_021E779C: .word 0x000019E8
_021E77A0: .word 0x000019EC
	thumb_func_end ov00_021E765C

