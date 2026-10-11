#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F24F8
	.public ov112_021F257C
	.public ov112_021F25FC
	.extern ov112_021F1624
	.extern ov112_021F1EFC
	.extern ov112_021F2204
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F24F8
ov112_021F24F8: ; 0x021F24F8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	lsl r1, r3, #0x1f
	lsr r1, r1, #0x1f
	beq _021F257A
	lsl r2, r3, #0x18
	lsr r1, r2, #0x19
	beq _021F2518
	cmp r1, #1
	beq _021F254C
	cmp r1, #2
	beq _021F257A
	b _021F2576
_021F2518:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0x18
	bl ManagedSprite_SetAnim
	mov r2, #0x53
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	mov r1, #0xfe
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x18
	lsr r1, r1, #0x19
	add r1, r1, #1
	lsl r1, r1, #0x19
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r4, r2]
	pop {r4, pc}
_021F254C:
	lsr r1, r3, #8
	cmp r1, #0x19
	blo _021F256A
	add r0, r4, #0
	add r0, #0xac
	mov r1, #0
	bl ov112_021F1EFC
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [r4, r1]
	pop {r4, pc}
_021F256A:
	add r1, r1, #1
	lsr r2, r2, #0x18
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r4, r0]
	pop {r4, pc}
_021F2576:
	bl GF_AssertFail
_021F257A:
	pop {r4, pc}
	thumb_func_end ov112_021F24F8

	thumb_func_start ov112_021F257C
ov112_021F257C: ; 0x021F257C
	push {r4, r5, r6, lr}
	ldr r1, _021F25F8 ; =0x0000013D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc0
	ldr r4, [r1]
	add r1, r4, #0
	add r1, #0x84
	ldrb r1, [r1]
	sub r2, r1, #1
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r2, r1, #1
	lsl r1, r2, #2
	add r6, r2, r1
	mov r1, #0
	mov r2, #1
	bl ov112_021F2204
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov112_021F2204
	add r0, r4, #0
	add r0, #0x78
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x7a
	ldrh r0, [r0]
	sub r0, r1, r0
	bpl _021F25C2
	neg r0, r0
_021F25C2:
	add r4, #0x84
	ldrb r1, [r4]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	cmp r1, #1
	bne _021F25E2
	cmp r0, #0x64
	blt _021F25DE
	mov r2, #1
	b _021F25EC
_021F25DE:
	mov r2, #2
	b _021F25EC
_021F25E2:
	cmp r0, #0x64
	blt _021F25EA
	mov r2, #4
	b _021F25EC
_021F25EA:
	mov r2, #3
_021F25EC:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, r2
	bl ov112_021F1624
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F25F8: .word 0x0000013D
	thumb_func_end ov112_021F257C

	thumb_func_start ov112_021F25FC
ov112_021F25FC: ; 0x021F25FC
	push {r3, r4, r5, lr}
	ldr r1, _021F267C ; =0x0000013D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc0
	ldr r4, [r1]
	mov r1, #0
	bl ov112_021F2204
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0xb
	bl ManagedSprite_SetAnim
	ldr r0, _021F2680 ; =0x0000013F
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _021F2640
	sub r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r1, r0
	bhi _021F2640
	mov r2, #0x1b
	b _021F2670
_021F2640:
	add r4, #0x78
	ldrh r2, [r4]
	mov r1, #0xfa
	lsl r1, r1, #4
	cmp r2, r1
	blo _021F2650
	mov r2, #0x1c
	b _021F2670
_021F2650:
	ldr r0, _021F2684 ; =0x00000BB8
	cmp r2, r0
	blo _021F265A
	mov r2, #0x1d
	b _021F2670
_021F265A:
	lsr r0, r1, #1
	cmp r2, r0
	blo _021F2664
	mov r2, #0x1e
	b _021F2670
_021F2664:
	lsr r0, r1, #2
	cmp r2, r0
	blo _021F266E
	mov r2, #0x1f
	b _021F2670
_021F266E:
	mov r2, #0x20
_021F2670:
	add r0, r5, #0
	mov r1, #0x1a
	bl ov112_021F1624
	pop {r3, r4, r5, pc}
	nop
_021F267C: .word 0x0000013D
_021F2680: .word 0x0000013F
_021F2684: .word 0x00000BB8
	thumb_func_end ov112_021F25FC

