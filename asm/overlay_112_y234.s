#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ED640
	.public ov112_021ED66C
	.public ov112_021ED7DC
	.extern ov112_021E7464
	.extern ov112_021E7668
	.extern ov112_021E7670
	.extern ov112_021E768C
	.extern ov112_021E76A8
	.extern ov112_021E9888
	.extern ov112_021E98E8
	.extern ov112_021EA10C
	.extern ov112_021EA60C
	.extern ov112_021EA7D0
	.extern ov112_021EAA98
	.extern ov112_021EC440
	.extern ov112_021ED314
	.extern ov112_021ED530
	.extern ov112_021ED590
	.extern ov112_021ED610
	.extern ov112_021F30BC
	.extern ov112_021F3140
	.extern ov112_021F31BC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ED640
ov112_021ED640: ; 0x021ED640
	ldr r1, _021ED664 ; =0x0000AABC
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _021ED660
	mov r1, #0xad
	lsl r1, r1, #8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021ED65C
	ldr r0, _021ED668 ; =0x000001ED
	cmp r1, r0
	bls _021ED660
_021ED65C:
	mov r0, #0
	bx lr
_021ED660:
	mov r0, #1
	bx lr
	.balign 4, 0
_021ED664: .word 0x0000AABC
_021ED668: .word 0x000001ED
	thumb_func_end ov112_021ED640

	thumb_func_start ov112_021ED66C
ov112_021ED66C: ; 0x021ED66C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov112_021E7670
	bl ov112_021E768C
	add r5, r0, #0
	beq _021ED682
	add r0, r4, #0
	bl ov112_021EA7D0
_021ED682:
	add r0, r4, #0
	bl ov112_021EA60C
	add r0, r5, #0
	bl ov112_021ED314
	bl ov112_021E76A8
	cmp r0, #0xf
	bhi _021ED730
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED6A2: ; jump table
	.short _021ED730 - _021ED6A2 - 2 ; case 0
	.short _021ED730 - _021ED6A2 - 2 ; case 1
	.short _021ED6C2 - _021ED6A2 - 2 ; case 2
	.short _021ED730 - _021ED6A2 - 2 ; case 3
	.short _021ED6CE - _021ED6A2 - 2 ; case 4
	.short _021ED6CE - _021ED6A2 - 2 ; case 5
	.short _021ED6CE - _021ED6A2 - 2 ; case 6
	.short _021ED6CE - _021ED6A2 - 2 ; case 7
	.short _021ED6CE - _021ED6A2 - 2 ; case 8
	.short _021ED6CE - _021ED6A2 - 2 ; case 9
	.short _021ED730 - _021ED6A2 - 2 ; case 10
	.short _021ED6CE - _021ED6A2 - 2 ; case 11
	.short _021ED6CE - _021ED6A2 - 2 ; case 12
	.short _021ED6CE - _021ED6A2 - 2 ; case 13
	.short _021ED730 - _021ED6A2 - 2 ; case 14
	.short _021ED6D2 - _021ED6A2 - 2 ; case 15
_021ED6C2:
	ldrh r0, [r4, #0x16]
	cmp r0, #1
	bne _021ED730
	mov r0, #0x2a
	strh r0, [r4, #0x14]
	b _021ED730
_021ED6CE:
	strh r0, [r4, #0x14]
	b _021ED730
_021ED6D2:
	ldr r0, _021ED7B8 ; =0x0001E538
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	bl ov112_021ED610
	cmp r0, #0
	beq _021ED700
	ldr r0, _021ED7BC ; =0x000010E7
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021ED700
	ldr r2, _021ED7C0 ; =0x00009D44
	mov r1, #0x9a
	ldrh r0, [r4, r2]
	add r2, #0x10
	add r2, r4, r2
	bl GetSpeciesNameIntoArray
_021ED700:
	ldr r1, _021ED7C4 ; =0x0001F2C0
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #1
	bl ov112_021EAA98
	add r0, r4, #0
	bl ov112_021ED530
	add r0, r4, #0
	bl ov112_021ED590
	add r0, r4, #0
	bl ov112_021ED7DC
	ldr r0, _021ED7C8 ; =0x000010F0
	ldr r1, [r4, r0]
	ldr r0, _021ED7CC ; =0x0001D758
	ldr r0, [r4, r0]
	sub r1, r1, r0
	ldr r0, _021ED7D0 ; =0x0001EC7C
	str r1, [r4, r0]
	mov r0, #0x25
	pop {r3, r4, r5, pc}
_021ED730:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021ED74C
	ldr r0, _021ED7B8 ; =0x0001E538
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x3c
	str r0, [r4, #0xc]
	bl ov112_021E7464
	mov r0, #0x20
	pop {r3, r4, r5, pc}
_021ED74C:
	bl ov112_021E7668
	cmp r0, #0
	bne _021ED798
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E98E8
	mov r0, #5
	bl ov112_021E9888
	cmp r0, #0
	beq _021ED776
	ldr r0, _021ED7D4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021ED776
	mov r0, #2
	tst r0, r1
	beq _021ED7B4
_021ED776:
	mov r0, #0x21
	strh r0, [r4, #0x14]
	mov r0, #0x42
	str r0, [r4, #0xc]
	bl ov112_021E7464
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x21
	bl ov112_021EC440
	ldr r0, _021ED7D8 ; =0x000005DD
	bl PlaySE
	mov r0, #0x41
	pop {r3, r4, r5, pc}
_021ED798:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _021ED7AC
	add r0, r4, #0
	mov r1, #2
	mov r2, #6
	bl ov112_021EA10C
	mov r0, #1
	strh r0, [r4, #0x16]
_021ED7AC:
	add r0, r4, #0
	mov r1, #0
	bl ov112_021E98E8
_021ED7B4:
	mov r0, #0x1b
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021ED7B8: .word 0x0001E538
_021ED7BC: .word 0x000010E7
_021ED7C0: .word 0x00009D44
_021ED7C4: .word 0x0001F2C0
_021ED7C8: .word 0x000010F0
_021ED7CC: .word 0x0001D758
_021ED7D0: .word 0x0001EC7C
_021ED7D4: .word gSystem
_021ED7D8: .word 0x000005DD
	thumb_func_end ov112_021ED66C

	thumb_func_start ov112_021ED7DC
ov112_021ED7DC: ; 0x021ED7DC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, sp, #4
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	ldr r3, _021ED8C8 ; =0x00009D54
	str r2, [r0, #8]
	add r0, r4, r3
	str r0, [sp, #4]
	add r0, r3, #0
	sub r0, #0x10
	ldrh r1, [r4, r0]
	add r0, sp, #0
	mov r5, #0x1f
	strh r1, [r0, #0xc]
	ldrb r1, [r0, #0xe]
	bic r1, r5
	sub r5, r3, #3
	ldrb r5, [r4, r5]
	lsl r5, r5, #0x1b
	lsr r6, r5, #0x1b
	mov r5, #0x1f
	and r5, r6
	orr r1, r5
	strb r1, [r0, #0xe]
	ldrb r1, [r0, #0xe]
	mov r5, #0x60
	bic r1, r5
	sub r5, r3, #3
	ldrb r5, [r4, r5]
	sub r3, r3, #2
	lsl r5, r5, #0x19
	lsr r5, r5, #0x1e
	lsl r5, r5, #0x1e
	lsr r5, r5, #0x19
	orr r1, r5
	strb r1, [r0, #0xe]
	ldrb r3, [r4, r3]
	ldrb r1, [r0, #0xe]
	mov r5, #0x80
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x1f
	lsl r3, r3, #0x1f
	bic r1, r5
	lsr r3, r3, #0x18
	orr r1, r3
	strb r1, [r0, #0xe]
	ldr r0, _021ED8CC ; =0x000010F0
	ldr r1, [r4, r0]
	ldr r0, _021ED8D0 ; =0x0001D758
	ldr r0, [r4, r0]
	cmp r1, r0
	bhs _021ED84E
	str r2, [sp, #8]
	b _021ED852
_021ED84E:
	sub r0, r1, r0
	str r0, [sp, #8]
_021ED852:
	ldr r0, _021ED8D4 ; =0x0000AA34
	add r1, sp, #4
	add r0, r4, r0
	bl ov112_021F30BC
	ldr r0, _021ED8D8 ; =0x00009DFC
	add r0, r4, r0
	bl ov112_021F31BC
	cmp r0, #0
	beq _021ED8C2
	mov r0, #0xad
	lsl r0, r0, #8
	ldrh r2, [r4, r0]
	add r1, sp, #0
	mov r3, #0x1f
	strh r2, [r1]
	ldrb r2, [r1, #2]
	bic r2, r3
	add r3, r0, #0
	add r3, #0xd
	ldrb r3, [r4, r3]
	lsl r3, r3, #0x1b
	lsr r5, r3, #0x1b
	mov r3, #0x1f
	and r3, r5
	orr r2, r3
	strb r2, [r1, #2]
	ldrb r2, [r1, #2]
	mov r3, #0x60
	bic r2, r3
	add r3, r0, #0
	add r3, #0xd
	ldrb r3, [r4, r3]
	add r0, #0xe
	lsl r3, r3, #0x19
	lsr r3, r3, #0x1e
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x19
	orr r2, r3
	strb r2, [r1, #2]
	ldrb r0, [r4, r0]
	ldrb r2, [r1, #2]
	mov r3, #0x80
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	lsl r0, r0, #0x1f
	bic r2, r3
	lsr r0, r0, #0x18
	orr r0, r2
	strb r0, [r1, #2]
	ldr r0, _021ED8D8 ; =0x00009DFC
	add r1, sp, #0
	add r0, r4, r0
	bl ov112_021F3140
_021ED8C2:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021ED8C8: .word 0x00009D54
_021ED8CC: .word 0x000010F0
_021ED8D0: .word 0x0001D758
_021ED8D4: .word 0x0000AA34
_021ED8D8: .word 0x00009DFC
	thumb_func_end ov112_021ED7DC

