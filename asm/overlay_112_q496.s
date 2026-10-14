#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F2B80
	.extern ov112_021F0F60
	.extern ov112_021F15E4
	.extern ov112_021F1904
	.extern ov112_021F194C
	.extern ov112_021F1D58
	.extern ov112_021F257C
	.extern ov112_021F25FC
	.extern ov112_021F2688
	.extern ov112_021F26E8
	.extern ov112_021F2768
	.extern ov112_021F27B8
	.extern ov112_021F27E0
	.extern ov112_021F2810
	.extern ov112_021F2874
	.extern ov112_021F28DC
	.extern ov112_021F2920
	.extern ov112_021F2944
	.extern ov112_021F298C
	.extern ov112_021F2A78
	.extern ov112_021F2B2C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F2B80
ov112_021F2B80: ; 0x021F2B80
	push {r4, r5, r6, lr}
	ldr r1, _021F2CBC ; =0x0000013D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc0
	ldr r4, [r1]
	bl ov112_021F15E4
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	add r0, r4, #0
	bl ov112_021F0F60
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov112_021F1904
	add r0, r4, #0
	bl ov112_021F0F60
	add r1, r0, #0
	add r0, r5, #0
	bl ov112_021F1D58
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r4, #0
	add r0, #0x76
	ldrb r0, [r0]
	cmp r1, r0
	beq _021F2BDA
	add r0, r4, #0
	bl ov112_021F0F60
	add r1, r0, #0
	add r0, r5, #0
	bl ov112_021F194C
_021F2BDA:
	mov r2, #0x51
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	mov r1, #0xff
	bic r0, r1
	add r1, r4, #0
	add r1, #0x76
	ldrb r1, [r1]
	orr r0, r1
	str r0, [r5, r2]
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #1
	blo _021F2C1A
	cmp r0, #0xa
	bhi _021F2C1A
	ldrh r1, [r4, #8]
	ldr r0, _021F2CC0 ; =0x0000FFF9
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021F2C12
	add r0, r5, #0
	bl ov112_021F257C
	pop {r4, r5, r6, pc}
_021F2C12:
	add r0, r5, #0
	bl ov112_021F2B2C
	pop {r4, r5, r6, pc}
_021F2C1A:
	cmp r0, #0xb
	bne _021F2C26
	add r0, r5, #0
	bl ov112_021F25FC
	pop {r4, r5, r6, pc}
_021F2C26:
	cmp r0, #0xc
	bne _021F2C32
	add r0, r5, #0
	bl ov112_021F2688
	pop {r4, r5, r6, pc}
_021F2C32:
	cmp r0, #0xd
	bne _021F2C3E
	add r0, r5, #0
	bl ov112_021F26E8
	pop {r4, r5, r6, pc}
_021F2C3E:
	cmp r0, #0xe
	bne _021F2C4A
	add r0, r5, #0
	bl ov112_021F2768
	pop {r4, r5, r6, pc}
_021F2C4A:
	cmp r0, #0xf
	bne _021F2C56
	add r0, r5, #0
	bl ov112_021F27B8
	pop {r4, r5, r6, pc}
_021F2C56:
	cmp r0, #0x10
	bne _021F2C62
	add r0, r5, #0
	bl ov112_021F27E0
	pop {r4, r5, r6, pc}
_021F2C62:
	cmp r0, #0x11
	bne _021F2C6E
	add r0, r5, #0
	bl ov112_021F2810
	pop {r4, r5, r6, pc}
_021F2C6E:
	cmp r0, #0x12
	blo _021F2C7E
	cmp r0, #0x16
	bhi _021F2C7E
	add r0, r5, #0
	bl ov112_021F2874
	pop {r4, r5, r6, pc}
_021F2C7E:
	cmp r0, #0x17
	bne _021F2C8A
	add r0, r5, #0
	bl ov112_021F28DC
	pop {r4, r5, r6, pc}
_021F2C8A:
	cmp r0, #0x18
	bne _021F2C96
	add r0, r5, #0
	bl ov112_021F2920
	pop {r4, r5, r6, pc}
_021F2C96:
	cmp r0, #0x19
	bne _021F2CA2
	add r0, r5, #0
	bl ov112_021F2944
	pop {r4, r5, r6, pc}
_021F2CA2:
	cmp r0, #0x1a
	bne _021F2CAE
	add r0, r5, #0
	bl ov112_021F298C
	pop {r4, r5, r6, pc}
_021F2CAE:
	cmp r0, #0x1b
	bne _021F2CBA
	add r0, r5, #0
	add r1, r6, #0
	bl ov112_021F2A78
_021F2CBA:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F2CBC: .word 0x0000013D
_021F2CC0: .word 0x0000FFF9
	thumb_func_end ov112_021F2B80

