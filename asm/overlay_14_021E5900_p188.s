#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E9A24
	.public ov14_021E9C88
	.extern ov14_021E65C4
	.extern ov14_021E66F4
	.extern ov14_021E6F3C
	.extern ov14_021E7034
	.extern ov14_021E70B0
	.extern ov14_021E7148
	.extern ov14_021E765C
	.extern ov14_021E7960
	.extern ov14_021E79AC
	.extern ov14_021E7ED0
	.extern ov14_021E7EE0
	.extern ov14_021E7F4C
	.extern ov14_021E7FB8
	.extern ov14_021E7FEC
	.extern ov14_021E80A8
	.extern ov14_021E813C
	.extern ov14_021E8328
	.extern ov14_021E8434
	.extern ov14_021E8514
	.extern ov14_021E8824
	.extern ov14_021F7C08

    .text

	.text
	thumb_func_start ov14_021E9A24
ov14_021E9A24: ; 0x021E9A24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r5, [r4, #0x34]
	ldrh r0, [r5, #0x10]
	cmp r0, #1
	bhi _021E9A52
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r2, sp, #4
	add r1, r5, r0
	ldr r0, _021E9C78 ; =0x00004094
	ldrb r0, [r1, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r1, #2
	bl ManagedSprite_GetPositionXY
_021E9A52:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	add r7, r0, #0
	add r0, r4, #0
	bl ov14_021E813C
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	str r0, [sp]
	ldrh r0, [r5, #0x10]
	cmp r0, #7
	bls _021E9A80
	b _021E9C70
_021E9A80:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9A8C: ; jump table
	.short _021E9A9C - _021E9A8C - 2 ; case 0
	.short _021E9AA0 - _021E9A8C - 2 ; case 1
	.short _021E9BE2 - _021E9A8C - 2 ; case 2
	.short _021E9BE2 - _021E9A8C - 2 ; case 3
	.short _021E9BE2 - _021E9A8C - 2 ; case 4
	.short _021E9C14 - _021E9A8C - 2 ; case 5
	.short _021E9C44 - _021E9A8C - 2 ; case 6
	.short _021E9C4E - _021E9A8C - 2 ; case 7
_021E9A9C:
	mov r0, #1
	strh r0, [r5, #0x10]
_021E9AA0:
	ldr r0, [r4, #0x34]
	ldr r1, _021E9C7C ; =0x0000044A
	ldrb r2, [r0, r1]
	cmp r2, #1
	bne _021E9ABA
	cmp r6, #0
	bne _021E9ABA
	mov r2, #2
	strb r2, [r0, r1]
	add r0, r4, #0
	mov r1, #0x28
	bl ov14_021F69F0
_021E9ABA:
	add r0, sp, #0xc
	add r1, sp, #8
	bl System_GetTouchHeldCoords
	cmp r0, #0
	ldr r0, [r4, #0x34]
	bne _021E9B68
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r3, sp, #4
	add r2, r0, r1
	ldr r1, _021E9C78 ; =0x00004094
	ldrb r1, [r2, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r3, r1]
	bl ManagedSprite_SetPositionXY
	ldr r1, [r4, #0x34]
	ldr r0, _021E9C7C ; =0x0000044A
	mov r2, #0xff
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021E9B0E
	ldr r2, _021E9C80 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	add r2, r0, #0
_021E9B0E:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E6F3C
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E70B0
	add r1, r4, #0
	add r1, #0x21
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021E9B44
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021E9C70
_021E9B44:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FEC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	mov r0, #2
	strh r0, [r5, #0x10]
	b _021E9C70
_021E9B68:
	ldr r1, _021E9C7C ; =0x0000044A
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021E9B9C
	cmp r7, #0
	bne _021E9B9C
	ldr r1, [sp]
	cmp r1, #0
	bne _021E9B9C
	ldr r2, [sp, #0xc]
	cmp r2, #0x10
	blo _021E9B8A
	ldr r1, [sp, #8]
	cmp r1, #0x30
	blo _021E9B8A
	cmp r2, #0x68
	blo _021E9B9C
_021E9B8A:
	ldr r1, _021E9C7C ; =0x0000044A
	mov r2, #1
	strb r2, [r0, r1]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FB8
_021E9B9C:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r2, r0, r1
	ldr r1, _021E9C78 ; =0x00004094
	ldrb r1, [r2, r1]
	ldr r2, [sp, #8]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	lsl r2, r2, #0x10
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	asr r2, r2, #0x10
	sub r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [sp, #0xc]
	ldr r1, [r4, #0x34]
	ldr r0, _021E9C80 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp, #8]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021E9C70
_021E9BE2:
	add r0, r4, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E9C70
	cmp r6, #0
	bne _021E9C70
	cmp r7, #0
	bne _021E9C70
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [r4, #0x34]
	ldr r1, _021E9C84 ; =0x000040C4
	add r0, r4, #0
	ldr r1, [r2, r1]
	bl ov14_021F40E8
	mov r0, #7
	strh r0, [r5, #0x10]
	b _021E9C70
_021E9C14:
	add r0, r4, #0
	bl ov14_021E66F4
	cmp r0, #0
	bne _021E9C70
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	add r0, r4, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7EE0
	mov r0, #0xff
	add r4, #0x21
	strb r0, [r4]
	mov r0, #6
	strh r0, [r5, #0x10]
	b _021E9C70
_021E9C44:
	cmp r6, #0
	bne _021E9C70
	mov r0, #7
	strh r0, [r5, #0x10]
	b _021E9C70
_021E9C4E:
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F3488
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov14_021F3488
	ldr r2, [r4, #0x34]
	ldr r1, _021E9C7C ; =0x0000044A
	mov r0, #0
	strb r0, [r2, r1]
	add sp, #0x10
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021E9C70:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9C78: .word 0x00004094
_021E9C7C: .word 0x0000044A
_021E9C80: .word 0x000040B8
_021E9C84: .word 0x000040C4
	thumb_func_end ov14_021E9A24

	thumb_func_start ov14_021E9C88
ov14_021E9C88: ; 0x021E9C88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	str r0, [sp]
	add r0, r4, #0
	bl ov14_021E80A8
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	add r7, r0, #0
	ldrh r0, [r5, #0x10]
	cmp r0, #8
	bls _021E9CBC
	b _021E9F04
_021E9CBC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9CC8: ; jump table
	.short _021E9CDA - _021E9CC8 - 2 ; case 0
	.short _021E9CDE - _021E9CC8 - 2 ; case 1
	.short _021E9E30 - _021E9CC8 - 2 ; case 2
	.short _021E9E4A - _021E9CC8 - 2 ; case 3
	.short _021E9E4A - _021E9CC8 - 2 ; case 4
	.short _021E9E8C - _021E9CC8 - 2 ; case 5
	.short _021E9EBA - _021E9CC8 - 2 ; case 6
	.short _021E9ED8 - _021E9CC8 - 2 ; case 7
	.short _021E9EE2 - _021E9CC8 - 2 ; case 8
_021E9CDA:
	mov r0, #1
	strh r0, [r5, #0x10]
_021E9CDE:
	ldr r0, [r4, #0x34]
	ldr r1, _021E9F0C ; =0x0000044A
	ldrb r2, [r0, r1]
	cmp r2, #1
	bne _021E9CF8
	cmp r6, #0
	bne _021E9CF8
	mov r2, #2
	strb r2, [r0, r1]
	add r0, r4, #0
	mov r1, #0x28
	bl ov14_021F69F0
_021E9CF8:
	add r0, sp, #0xc
	add r1, sp, #8
	bl System_GetTouchHeldCoords
	cmp r0, #0
	ldr r0, _021E9F0C ; =0x0000044A
	bne _021E9D78
	ldr r1, [r4, #0x34]
	mov r2, #0xff
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021E9D28
	ldr r2, _021E9F10 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _021E9F14 ; =ov14_021F7C08
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79AC
	add r2, r0, #0
_021E9D28:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E7034
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E70B0
	add r1, r4, #0
	add r1, #0x21
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	blo _021E9D5E
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9D5E:
	ldr r1, [r4, #0x34]
	ldr r0, _021E9F0C ; =0x0000044A
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021E9D72
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7F4C
_021E9D72:
	mov r0, #2
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9D78:
	ldr r1, [r4, #0x34]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021E9DEA
	ldr r0, [sp]
	cmp r0, #0
	bne _021E9DEA
	cmp r7, #0
	bne _021E9DEA
	add r0, r4, #0
	add r3, r4, #0
	add r0, #0x21
	add r3, #0x22
	add r1, sp, #4
	ldrb r0, [r0]
	ldrb r3, [r3]
	add r1, #2
	add r2, sp, #4
	bl ov14_021F2F88
	add r1, sp, #4
	mov r0, #2
	ldrsh r3, [r1, r0]
	ldr r2, [sp, #0xc]
	add r0, r3, #0
	sub r0, #0x10
	cmp r2, r0
	blo _021E9DCA
	add r3, #0x10
	cmp r2, r3
	bhs _021E9DCA
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldr r1, [sp, #8]
	add r0, r2, #0
	sub r0, #0x10
	cmp r1, r0
	blo _021E9DCA
	add r2, #0x10
	cmp r1, r2
	blo _021E9DEA
_021E9DCA:
	ldr r1, [r4, #0x34]
	ldr r0, _021E9F0C ; =0x0000044A
	mov r2, #1
	strb r2, [r1, r0]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7ED0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7EE0
_021E9DEA:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r2, r0, r1
	ldr r1, _021E9F18 ; =0x00004094
	ldrb r1, [r2, r1]
	ldr r2, [sp, #8]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	lsl r2, r2, #0x10
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	asr r2, r2, #0x10
	sub r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [sp, #0xc]
	ldr r1, [r4, #0x34]
	ldr r0, _021E9F10 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp, #8]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021E9F04
_021E9E30:
	cmp r6, #0
	bne _021E9E4A
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	mov r0, #3
	strh r0, [r5, #0x10]
_021E9E4A:
	add r0, r4, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E9E80
	ldrh r0, [r5, #0x10]
	cmp r0, #4
	bne _021E9E80
	ldr r0, [sp]
	cmp r0, #0
	bne _021E9E80
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [r4, #0x34]
	ldr r1, _021E9F1C ; =0x000040C4
	add r0, r4, #0
	ldr r1, [r2, r1]
	bl ov14_021F40E8
	mov r0, #8
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9E80:
	ldrh r0, [r5, #0x10]
	cmp r0, #3
	bne _021E9F04
	mov r0, #4
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9E8C:
	add r0, r4, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E9F04
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x21
	strb r1, [r0]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7F4C
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9EBA:
	cmp r6, #0
	bne _021E9F04
	add r0, r4, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9ED8:
	cmp r7, #0
	bne _021E9F04
	mov r0, #8
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9EE2:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov14_021F3488
	ldr r2, [r4, #0x34]
	ldr r1, _021E9F0C ; =0x0000044A
	mov r0, #0
	strb r0, [r2, r1]
	add sp, #0x10
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021E9F04:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9F0C: .word 0x0000044A
_021E9F10: .word 0x000040B8
_021E9F14: .word ov14_021F7C08
_021E9F18: .word 0x00004094
_021E9F1C: .word 0x000040C4
	thumb_func_end ov14_021E9C88

