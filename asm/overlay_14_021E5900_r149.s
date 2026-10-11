#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E9A24
	.public ov14_021E9C88
	.public ov14_021E9F20
	.public ov14_021EA068
	.public ov14_021EA0B8
	.public ov14_021EA130
	.public ov14_021EA180
	.public ov14_021EA1F0
	.public ov14_021EA254
	.public ov14_021EA378
	.public ov14_021EA408
	.public ov14_021EA4C8
	.public ov14_021EA674
	.public ov14_021EA728
	.public ov14_021EA778
	.extern ov14_021E65C4
	.extern ov14_021E66F4
	.extern ov14_021E6AA0
	.extern ov14_021E6CF8
	.extern ov14_021E6F3C
	.extern ov14_021E7034
	.extern ov14_021E70B0
	.extern ov14_021E7148
	.extern ov14_021E765C
	.extern ov14_021E7960
	.extern ov14_021E79AC
	.extern ov14_021E7AD4
	.extern ov14_021E7B8C
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
	.extern ov14_021E8620
	.extern ov14_021E8824
	.extern ov14_021E88F8
	.extern ov14_021E9434
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

	thumb_func_start ov14_021E9F20
ov14_021E9F20: ; 0x021E9F20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r4, [r1, #0xc]
	ldr r0, [r1, r0]
	mov r1, #0xf
	bl sub_02019978
	ldr r1, [r4, #4]
	lsr r2, r1, #2
	bne _021E9F98
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	ldr r1, _021EA060 ; =0x0000044B
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _021E9F94
	ldr r1, [r5]
	ldr r1, [r1, #8]
	cmp r1, #3
	bne _021E9F72
	ldrb r2, [r4, #1]
	mov r1, #0xca
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r2, #8
	lsl r2, r2, #0x10
	ldrb r1, [r4]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	b _021E9F94
_021E9F72:
	add r5, #0x21
	ldrb r1, [r5]
	add r2, r0, r1
	ldr r1, _021EA064 ; =0x00004094
	ldrb r1, [r2, r1]
	ldrb r2, [r4, #1]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r2, #4
	lsl r2, r2, #0x10
	ldrb r1, [r4]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
_021E9F94:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E9F98:
	mov r0, #3
	and r1, r0
	sub r0, r2, #1
	lsl r0, r0, #2
	orr r0, r1
	str r0, [r4, #4]
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #4]
	add r1, sp, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021E9FCA
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldrb r0, [r4, #2]
	add r0, r2, r0
	b _021E9FD2
_021E9FCA:
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldrb r0, [r4, #2]
	sub r0, r2, r0
_021E9FD2:
	strh r0, [r1, #2]
	ldr r0, [r4, #4]
	add r1, sp, #0
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E9FE8
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldrb r0, [r4, #3]
	add r0, r2, r0
	b _021E9FF0
_021E9FE8:
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldrb r0, [r4, #3]
	sub r0, r2, r0
_021E9FF0:
	strh r0, [r1]
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	ldr r1, _021EA060 ; =0x0000044B
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _021EA05C
	ldr r1, [r5]
	add r3, sp, #0
	ldr r1, [r1, #8]
	cmp r1, #3
	bne _021EA036
	mov r2, #0
	mov r1, #0xca
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #2
	add r2, #8
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	b _021EA05C
_021EA036:
	add r5, #0x21
	ldrb r1, [r5]
	add r2, r0, r1
	ldr r1, _021EA064 ; =0x00004094
	ldrb r1, [r2, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, r2, #4
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
_021EA05C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EA060: .word 0x0000044B
_021EA064: .word 0x00004094
	thumb_func_end ov14_021E9F20

	thumb_func_start ov14_021EA068
ov14_021EA068: ; 0x021EA068
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r5, [r6, #0x34]
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _021EA07A
	cmp r0, #1
	beq _021EA092
	b _021EA0B2
_021EA07A:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r0, #0
	bne _021EA0B2
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _021EA0B2
_021EA092:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r4, r0, #0
	add r0, r6, #0
	bl ov14_021E9F20
	cmp r4, #0
	bne _021EA0B2
	cmp r0, #0
	bne _021EA0B2
	mov r0, #0
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
_021EA0B2:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021EA068

	thumb_func_start ov14_021EA0B8
ov14_021EA0B8: ; 0x021EA0B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA0CA
	cmp r1, #1
	beq _021EA10A
	b _021EA12A
_021EA0CA:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r6, #0
	bne _021EA12A
	cmp r7, #0
	bne _021EA12A
	cmp r0, #0
	bne _021EA12A
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA12A
_021EA10A:
	bl ov14_021E9F20
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	cmp r6, #0
	bne _021EA12A
	cmp r0, #0
	bne _021EA12A
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA12A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021EA0B8

	thumb_func_start ov14_021EA130
ov14_021EA130: ; 0x021EA130
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r5, [r6, #0x34]
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _021EA142
	cmp r0, #1
	beq _021EA164
	b _021EA17A
_021EA142:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r4, r0, #0
	add r0, r6, #0
	bl ov14_021E9F20
	cmp r4, #0
	bne _021EA17A
	cmp r0, #0
	bne _021EA17A
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _021EA17A
_021EA164:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r0, #0
	bne _021EA17A
	mov r0, #0
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
_021EA17A:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021EA130

	thumb_func_start ov14_021EA180
ov14_021EA180: ; 0x021EA180
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA192
	cmp r1, #1
	beq _021EA1AE
	b _021EA1EC
_021EA192:
	bl ov14_021E9F20
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_021E9434
	cmp r6, #0
	bne _021EA1EC
	cmp r0, #0
	bne _021EA1EC
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA1EC
_021EA1AE:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r6, #0
	bne _021EA1EC
	cmp r7, #0
	bne _021EA1EC
	cmp r0, #0
	bne _021EA1EC
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA1EC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021EA180

	thumb_func_start ov14_021EA1F0
ov14_021EA1F0: ; 0x021EA1F0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0xa
	bl ov14_021F29E4
	mov r0, #0x32
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r3, sp, #0
	add r2, r0, r1
	ldr r1, _021EA250 ; =0x00004094
	ldrb r1, [r2, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, r2, #4
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x34]
	add r4, #0x21
	ldrb r1, [r4]
	mov r2, #0
	bl ov14_021F3190
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EA250: .word 0x00004094
	thumb_func_end ov14_021EA1F0

	thumb_func_start ov14_021EA254
ov14_021EA254: ; 0x021EA254
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x2f
	ldr r4, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_02019978
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bhi _021EA36E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA27A: ; jump table
	.short _021EA282 - _021EA27A - 2 ; case 0
	.short _021EA292 - _021EA27A - 2 ; case 1
	.short _021EA2DA - _021EA27A - 2 ; case 2
	.short _021EA2EA - _021EA27A - 2 ; case 3
_021EA282:
	mov r1, #9
	ldr r0, [r5, #0x34]
	add r2, r1, #0
	bl ov14_021F29E4
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA292:
	ldrh r0, [r4, #0x12]
	cmp r0, #4
	bne _021EA2A4
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA36E
_021EA2A4:
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x32
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _021EA36E
_021EA2DA:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xa
	bl ov14_021F29E4
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA2EA:
	ldrh r0, [r4, #0x12]
	cmp r0, #4
	bne _021EA2FA
	mov r0, #0
	strh r0, [r4, #0x12]
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, pc}
_021EA2FA:
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x32
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	sub r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	add r2, r0, r1
	ldr r1, _021EA374 ; =0x00004094
	ldrb r1, [r2, r1]
	add r2, sp, #0
	lsl r6, r1, #2
	add r1, r0, r6
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ManagedSprite_GetPositionXY
	ldr r0, [r5, #0x34]
	add r3, sp, #0
	mov r2, #0
	add r1, r0, r6
	mov r0, #0xbf
	ldrsh r2, [r3, r2]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	sub r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
_021EA36E:
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EA374: .word 0x00004094
	thumb_func_end ov14_021EA254

	thumb_func_start ov14_021EA378
ov14_021EA378: ; 0x021EA378
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r4, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_02019978
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021EA396
	cmp r0, #1
	beq _021EA3DC
	b _021EA3FE
_021EA396:
	mov r1, #9
	ldr r0, [r5, #0x34]
	add r2, r1, #0
	bl ov14_021F29E4
	ldr r1, [r5, #0x34]
	ldr r0, _021EA404 ; =0x0000044C
	ldrb r6, [r1, r0]
	cmp r6, #0x25
	blo _021EA3B0
	cmp r6, #0x2a
	bhi _021EA3B0
	add r6, #0x5b
_021EA3B0:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	add r2, r6, #0
	bl ov14_021E6CF8
	mov r0, #0x80
	tst r0, r6
	bne _021EA3D6
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov14_021E70B0
	add r1, r5, #0
	add r1, #0x21
	strb r0, [r1]
_021EA3D6:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA3DC:
	add r0, r5, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021EA3FE
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ov14_021E7148
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_021EA3FE:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021EA404: .word 0x0000044C
	thumb_func_end ov14_021EA378

	thumb_func_start ov14_021EA408
ov14_021EA408: ; 0x021EA408
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA41E
	cmp r1, #1
	beq _021EA448
	cmp r1, #2
	beq _021EA48A
	b _021EA4C0
_021EA41E:
	ldr r0, _021EA4C4 ; =0x000088C8
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021EA442
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
_021EA442:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA448:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r6, #0
	bne _021EA4C0
	cmp r7, #0
	bne _021EA4C0
	cmp r0, #0
	bne _021EA4C0
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA4C0
_021EA48A:
	bl ov14_021E9F20
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	cmp r6, #0
	bne _021EA4C0
	cmp r0, #0
	bne _021EA4C0
	ldr r0, [r5, #0x34]
	ldr r1, _021EA4C4 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA4BA
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	bl ov14_021F3B3C
_021EA4BA:
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA4C0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA4C4: .word 0x000088C8
	thumb_func_end ov14_021EA408

	thumb_func_start ov14_021EA4C8
ov14_021EA4C8: ; 0x021EA4C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	ldrh r0, [r5, #0x10]
	cmp r0, #0xa
	bls _021EA50E
	b _021EA664
_021EA50E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA51A: ; jump table
	.short _021EA530 - _021EA51A - 2 ; case 0
	.short _021EA56A - _021EA51A - 2 ; case 1
	.short _021EA588 - _021EA51A - 2 ; case 2
	.short _021EA632 - _021EA51A - 2 ; case 3
	.short _021EA664 - _021EA51A - 2 ; case 4
	.short _021EA664 - _021EA51A - 2 ; case 5
	.short _021EA664 - _021EA51A - 2 ; case 6
	.short _021EA664 - _021EA51A - 2 ; case 7
	.short _021EA664 - _021EA51A - 2 ; case 8
	.short _021EA664 - _021EA51A - 2 ; case 9
	.short _021EA642 - _021EA51A - 2 ; case 10
_021EA530:
	ldr r0, [r4, #0x34]
	ldr r1, _021EA66C ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA55A
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021EA664
_021EA55A:
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov14_021E8434
	mov r0, #0xa
	strh r0, [r5, #0x10]
	b _021EA664
_021EA56A:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	beq _021EA664
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
	mov r0, #2
	strh r0, [r5, #0x10]
_021EA588:
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021EA608
	ldr r1, [r4, #0x34]
	ldr r2, _021EA670 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r7, r6, #0
	cmp r6, #0xff
	bne _021EA5BC
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
	b _021EA5D4
_021EA5BC:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	add r2, r6, #0
	bl ov14_021E6AA0
	cmp r0, #0
	bne _021EA5D4
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
_021EA5D4:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r6, r0
	ldr r1, [r4, #0x34]
	bne _021EA5EC
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	b _021EA5F6
_021EA5EC:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
_021EA5F6:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #2
	bl ov14_021E7AD4
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021EA664
_021EA608:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x34]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B5C
	ldr r2, [sp, #4]
	ldr r1, [r4, #0x34]
	ldr r0, _021EA670 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021EA664
_021EA632:
	add r0, r4, #0
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EA664
	mov r0, #0xa
	strh r0, [r5, #0x10]
	b _021EA664
_021EA642:
	cmp r6, #0
	bne _021EA664
	ldr r0, [r4, #0x34]
	ldr r1, _021EA66C ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA65C
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
_021EA65C:
	mov r0, #0
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA664:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA66C: .word 0x000088C8
_021EA670: .word 0x000040B8
	thumb_func_end ov14_021EA4C8

	thumb_func_start ov14_021EA674
ov14_021EA674: ; 0x021EA674
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021EA68A
	cmp r0, #1
	beq _021EA6AA
	cmp r0, #2
	beq _021EA6C8
	b _021EA720
_021EA68A:
	ldr r0, _021EA724 ; =0x000088C8
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021EA6A4
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
_021EA6A4:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA6AA:
	add r0, r5, #0
	bl ov14_021E9F20
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_021E9434
	cmp r6, #0
	bne _021EA720
	cmp r0, #0
	bne _021EA720
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA720
_021EA6C8:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r6, #0
	bne _021EA720
	cmp r7, #0
	bne _021EA720
	cmp r0, #0
	bne _021EA720
	ldr r0, [r5, #0x34]
	ldr r1, _021EA724 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA71A
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
_021EA71A:
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA720:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA724: .word 0x000088C8
	thumb_func_end ov14_021EA674

	thumb_func_start ov14_021EA728
ov14_021EA728: ; 0x021EA728
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA73A
	cmp r1, #1
	beq _021EA766
	b _021EA774
_021EA73A:
	add r0, r4, #0
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	beq _021EA774
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, [r4, #0xc]
	mov r3, #2
	ldrh r2, [r0]
	add r0, r5, #0
	add r0, #0x21
	strb r2, [r0]
	add r0, r5, #0
	add r2, r1, #0
	bl ov14_021E7AD4
	mov r0, #1
	strh r0, [r4, #0x10]
	b _021EA774
_021EA766:
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EA774
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021EA774:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021EA728

	thumb_func_start ov14_021EA778
ov14_021EA778: ; 0x021EA778
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xe
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xf
	bl sub_02019978
	ldrh r0, [r5, #0x10]
	cmp r0, #6
	bhi _021EA7E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA7AC: ; jump table
	.short _021EA7BA - _021EA7AC - 2 ; case 0
	.short _021EA7DC - _021EA7AC - 2 ; case 1
	.short _021EA7FE - _021EA7AC - 2 ; case 2
	.short _021EA8A6 - _021EA7AC - 2 ; case 3
	.short _021EA8C8 - _021EA7AC - 2 ; case 4
	.short _021EA8E8 - _021EA7AC - 2 ; case 5
	.short _021EA90C - _021EA7AC - 2 ; case 6
_021EA7BA:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021EA914
_021EA7DC:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	beq _021EA7EA
_021EA7E8:
	b _021EA914
_021EA7EA:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
	mov r0, #2
	strh r0, [r5, #0x10]
	b _021EA914
_021EA7FE:
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021EA87C
	ldr r1, [r4, #0x34]
	ldr r2, _021EA91C ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xff
	bne _021EA844
	ldr r1, [r4, #0x34]
	ldr r2, _021EA91C ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _021EA920 ; =ov14_021F7C08
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79AC
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_021EA844:
	add r7, r6, #0
	cmp r6, #0xff
	bne _021EA852
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
	b _021EA86A
_021EA852:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	add r2, r6, #0
	bl ov14_021E6AA0
	cmp r0, #0
	bne _021EA86A
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
_021EA86A:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #2
	bl ov14_021E7AD4
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021EA914
_021EA87C:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x34]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B5C
	ldr r2, [sp, #4]
	ldr r1, [r4, #0x34]
	ldr r0, _021EA91C ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021EA914
_021EA8A6:
	add r0, r4, #0
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EA914
	ldr r0, _021EA924 ; =0x000005EA
	bl PlaySE
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	mov r0, #4
	strh r0, [r5, #0x10]
	b _021EA914
_021EA8C8:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021EA914
_021EA8E8:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EA914
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	mov r0, #6
	strh r0, [r5, #0x10]
	b _021EA914
_021EA90C:
	mov r0, #0
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA914:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA91C: .word 0x000040B8
_021EA920: .word ov14_021F7C08
_021EA924: .word 0x000005EA
	thumb_func_end ov14_021EA778

