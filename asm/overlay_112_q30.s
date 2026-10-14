#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E6BF8
	.public ov112_021E6F60
	.extern ov112_021E5A5C
	.extern ov112_021E5A68
	.extern ov112_021E5E18
	.extern ov112_021E5EC4
	.extern ov112_021E5EEC
	.extern ov112_021E6004
	.extern ov112_021E6134
	.extern ov112_021E6164
	.extern ov112_021FFAA4
	.extern ov112_021FFB24
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E6BF8
ov112_021E6BF8: ; 0x021E6BF8
	push {r4, lr}
	ldr r0, _021E6EA8 ; =ov112_021FFB24
	ldrb r2, [r0, #0x1c]
	cmp r2, #0x52
	bgt _021E6C14
	blt _021E6C06
	b _021E6D6C
_021E6C06:
	cmp r2, #0x32
	bgt _021E6C0E
	beq _021E6C52
	b _021E6F52
_021E6C0E:
	cmp r2, #0x40
	beq _021E6C8E
	b _021E6F52
_021E6C14:
	cmp r2, #0x60
	bgt _021E6C1E
	bne _021E6C1C
	b _021E6E4C
_021E6C1C:
	b _021E6F52
_021E6C1E:
	add r0, r2, #0
	sub r0, #0xb0
	cmp r0, #0xe
	bls _021E6C28
	b _021E6F52
_021E6C28:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6C34: ; jump table
	.short _021E6EA4 - _021E6C34 - 2 ; case 0
	.short _021E6F52 - _021E6C34 - 2 ; case 1
	.short _021E6EA4 - _021E6C34 - 2 ; case 2
	.short _021E6F52 - _021E6C34 - 2 ; case 3
	.short _021E6EA4 - _021E6C34 - 2 ; case 4
	.short _021E6F52 - _021E6C34 - 2 ; case 5
	.short _021E6EA4 - _021E6C34 - 2 ; case 6
	.short _021E6F52 - _021E6C34 - 2 ; case 7
	.short _021E6EA4 - _021E6C34 - 2 ; case 8
	.short _021E6F52 - _021E6C34 - 2 ; case 9
	.short _021E6EA4 - _021E6C34 - 2 ; case 10
	.short _021E6F52 - _021E6C34 - 2 ; case 11
	.short _021E6EA4 - _021E6C34 - 2 ; case 12
	.short _021E6F52 - _021E6C34 - 2 ; case 13
	.short _021E6EA4 - _021E6C34 - 2 ; case 14
_021E6C52:
	ldr r0, _021E6EAC ; =ov112_021FFAA4
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _021E6C7E
	ldr r0, [r0, #0x24]
	add r0, #0x5b
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E6C7E
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x36
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #4
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6C7E:
	ldr r0, _021E6EAC ; =ov112_021FFAA4
	mov r1, #0x68
	ldr r0, [r0, #0x20]
	mov r2, #0x32
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, pc}
_021E6C8E:
	ldr r2, _021E6EAC ; =ov112_021FFAA4
	ldr r1, [r2, #0x24]
	add r0, r1, #0
	add r0, #0x5b
	ldrb r0, [r0]
	lsl r3, r0, #0x1f
	lsr r3, r3, #0x1f
	bne _021E6CB6
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x44
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #5
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6CB6:
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E6CD4
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x44
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #6
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6CD4:
	ldr r0, [r2, #0x20]
	ldr r3, [r1, #0xc]
	ldr r2, [r0, #0xc]
	cmp r3, r2
	beq _021E6CF6
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x44
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #0xb
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6CF6:
	ldr r3, [r1, #4]
	ldr r2, [r0, #4]
	cmp r3, r2
	beq _021E6D16
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x44
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #8
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6D16:
	ldrh r2, [r1, #0xa]
	lsr r3, r2, #2
	ldrh r2, [r0, #0xa]
	lsr r2, r2, #2
	cmp r3, r2
	beq _021E6D3A
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x44
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #9
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6D3A:
	add r1, #0x5d
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x5d
	ldrb r1, [r1]
	cmp r2, r1
	bls _021E6D60
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x44
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #0xa
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6D60:
	mov r1, #0x68
	mov r2, #0x40
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, pc}
_021E6D6C:
	ldr r2, _021E6EAC ; =ov112_021FFAA4
	ldr r1, [r2, #0x24]
	add r0, r1, #0
	add r0, #0x5b
	ldrb r0, [r0]
	lsl r3, r0, #0x1f
	lsr r3, r3, #0x1f
	bne _021E6D94
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x56
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #5
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6D94:
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021E6DB4
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x56
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #7
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6DB4:
	ldr r0, [r2, #0x20]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _021E6DD6
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x56
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #8
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6DD6:
	ldrh r2, [r1, #8]
	lsr r3, r2, #2
	ldrh r2, [r0, #8]
	lsr r2, r2, #2
	cmp r3, r2
	beq _021E6DFA
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x56
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #9
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6DFA:
	ldr r3, [r1, #0xc]
	ldr r2, [r0, #0xc]
	cmp r3, r2
	beq _021E6E1A
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x56
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #0xb
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6E1A:
	add r1, #0x5d
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x5d
	ldrb r1, [r1]
	cmp r2, r1
	bls _021E6E40
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x56
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #0xa
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6E40:
	mov r1, #0x68
	mov r2, #0x52
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, pc}
_021E6E4C:
	ldr r1, _021E6EAC ; =ov112_021FFAA4
	ldr r2, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x5b
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	ldr r0, [r1, #0x20]
	bne _021E6E74
	mov r1, #0x68
	mov r2, #0x64
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #5
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6E74:
	add r1, r0, #0
	add r2, #0x5d
	add r1, #0x5d
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bls _021E6E98
	mov r1, #0x68
	mov r2, #0x64
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #0xa
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6E98:
	mov r1, #0x68
	mov r2, #0x60
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, pc}
_021E6EA4:
	ldr r3, _021E6EAC ; =ov112_021FFAA4
	b _021E6EB0
	.balign 4, 0
_021E6EA8: .word ov112_021FFB24
_021E6EAC: .word ov112_021FFAA4
_021E6EB0:
	ldr r1, [r3, #0x24]
	add r0, r1, #0
	add r0, #0x5b
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021E6ED6
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xd8
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #5
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6ED6:
	ldr r0, [r3, #0x20]
	ldr r4, [r1]
	ldr r3, [r0]
	cmp r4, r3
	beq _021E6EF8
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xd8
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #8
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6EF8:
	ldrh r3, [r1, #8]
	lsr r4, r3, #2
	ldrh r3, [r0, #8]
	lsr r3, r3, #2
	cmp r4, r3
	beq _021E6F1C
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xd8
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #9
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6F1C:
	add r1, #0x5d
	ldrb r3, [r1]
	add r1, r0, #0
	add r1, #0x5d
	ldrb r1, [r1]
	cmp r3, r1
	bls _021E6F42
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xd8
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #0xa
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
_021E6F42:
	sub r2, #0x10
	lsl r2, r2, #0x18
	mov r1, #0x68
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, pc}
_021E6F52:
	mov r0, #0xc
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov112_021E6BF8

	thumb_func_start ov112_021E6F60
ov112_021E6F60: ; 0x021E6F60
	push {r4, r5, r6, lr}
	add r4, r1, #0
	cmp r2, #0x9e
	bgt _021E6FE8
	blt _021E6F6C
	b _021E71F4
_021E6F6C:
	cmp r2, #0x44
	bgt _021E6FB6
	blt _021E6F74
	b _021E7268
_021E6F74:
	cmp r2, #0x28
	bgt _021E6F9E
	cmp r2, #0x22
	blt _021E6F8C
	beq _021E7076
	cmp r2, #0x26
	bne _021E6F84
	b _021E70B0
_021E6F84:
	cmp r2, #0x28
	bne _021E6F8A
	b _021E720C
_021E6F8A:
	pop {r4, r5, r6, pc}
_021E6F8C:
	cmp r2, #4
	bgt _021E6F96
	bne _021E6F94
	b _021E732E
_021E6F94:
	pop {r4, r5, r6, pc}
_021E6F96:
	cmp r2, #0xe
	bne _021E6F9C
	b _021E7342
_021E6F9C:
	pop {r4, r5, r6, pc}
_021E6F9E:
	cmp r2, #0x38
	bgt _021E6FAE
	blt _021E6FA6
	b _021E7242
_021E6FA6:
	cmp r2, #0x34
	bne _021E6FAC
	b _021E7218
_021E6FAC:
	pop {r4, r5, r6, pc}
_021E6FAE:
	cmp r2, #0x42
	bne _021E6FB4
	b _021E724E
_021E6FB4:
	pop {r4, r5, r6, pc}
_021E6FB6:
	cmp r2, #0x5e
	bgt _021E6FD0
	blt _021E6FBE
	b _021E72AA
_021E6FBE:
	cmp r2, #0x54
	bgt _021E6FC8
	bne _021E6FC6
	b _021E7274
_021E6FC6:
	pop {r4, r5, r6, pc}
_021E6FC8:
	cmp r2, #0x5a
	bne _021E6FCE
	b _021E729E
_021E6FCE:
	pop {r4, r5, r6, pc}
_021E6FD0:
	cmp r2, #0x64
	bgt _021E6FE0
	blt _021E6FD8
	b _021E72CE
_021E6FD8:
	cmp r2, #0x62
	bne _021E6FDE
	b _021E72B6
_021E6FDE:
	pop {r4, r5, r6, pc}
_021E6FE0:
	cmp r2, #0x9c
	bne _021E6FE6
	b _021E7200
_021E6FE6:
	pop {r4, r5, r6, pc}
_021E6FE8:
	cmp r2, #0xca
	bgt _021E7040
	bge _021E7052
	cmp r2, #0xc2
	bgt _021E702E
	bge _021E7052
	cmp r2, #0xae
	bgt _021E7028
	add r0, r2, #0
	sub r0, #0xa0
	bmi _021E7064
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E700A: ; jump table
	.short _021E72DA - _021E700A - 2 ; case 0
	.short _021E737C - _021E700A - 2 ; case 1
	.short _021E72DA - _021E700A - 2 ; case 2
	.short _021E737C - _021E700A - 2 ; case 3
	.short _021E72DA - _021E700A - 2 ; case 4
	.short _021E737C - _021E700A - 2 ; case 5
	.short _021E72DA - _021E700A - 2 ; case 6
	.short _021E737C - _021E700A - 2 ; case 7
	.short _021E72DA - _021E700A - 2 ; case 8
	.short _021E737C - _021E700A - 2 ; case 9
	.short _021E72DA - _021E700A - 2 ; case 10
	.short _021E737C - _021E700A - 2 ; case 11
	.short _021E72DA - _021E700A - 2 ; case 12
	.short _021E737C - _021E700A - 2 ; case 13
	.short _021E72DA - _021E700A - 2 ; case 14
_021E7028:
	cmp r2, #0xc0
	beq _021E7052
	pop {r4, r5, r6, pc}
_021E702E:
	cmp r2, #0xc6
	bgt _021E703A
	bge _021E7052
	cmp r2, #0xc4
	beq _021E7052
	pop {r4, r5, r6, pc}
_021E703A:
	cmp r2, #0xc8
	beq _021E7052
	pop {r4, r5, r6, pc}
_021E7040:
	cmp r2, #0xe2
	bgt _021E705E
	blt _021E7048
	b _021E7316
_021E7048:
	cmp r2, #0xce
	bgt _021E7056
	bge _021E7052
	cmp r2, #0xcc
	bne _021E7054
_021E7052:
	b _021E72F2
_021E7054:
	pop {r4, r5, r6, pc}
_021E7056:
	cmp r2, #0xe0
	bne _021E705C
	b _021E7322
_021E705C:
	pop {r4, r5, r6, pc}
_021E705E:
	cmp r2, #0xf4
	bgt _021E706E
	blt _021E7066
_021E7064:
	b _021E737C
_021E7066:
	cmp r2, #0xf0
	bne _021E706C
	b _021E72FE
_021E706C:
	pop {r4, r5, r6, pc}
_021E706E:
	cmp r2, #0xfe
	bne _021E7074
	b _021E730A
_021E7074:
	pop {r4, r5, r6, pc}
_021E7076:
	ldr r1, _021E7380 ; =ov112_021FFAA4
	mov r2, #0x68
	ldr r1, [r1, #0x24]
	bl MI_CpuCopy8
	ldr r0, _021E7380 ; =ov112_021FFAA4
	mov r5, #0xff
	ldr r4, [r0, #0x24]
	lsl r5, r5, #0x18
	ldr r3, [r4, #0x64]
	lsl r0, r3, #0x18
	add r2, r0, #0
	lsl r1, r3, #8
	lsr r0, r5, #8
	and r1, r0
	lsr r0, r3, #0x18
	lsl r0, r0, #0x18
	lsr r6, r3, #8
	lsr r3, r5, #0x10
	lsr r0, r0, #0x18
	and r3, r6
	orr r0, r3
	and r2, r5
	orr r0, r1
	orr r0, r2
	str r0, [r4, #0x64]
	bl ov112_021E6BF8
	pop {r4, r5, r6, pc}
_021E70B0:
	ldr r0, _021E7384 ; =ov112_021FFB24
	ldrb r2, [r0, #0x1c]
	cmp r2, #0x52
	bgt _021E70C8
	bge _021E7128
	cmp r2, #0x32
	bgt _021E70C2
	beq _021E7102
	pop {r4, r5, r6, pc}
_021E70C2:
	cmp r2, #0x40
	beq _021E7110
	pop {r4, r5, r6, pc}
_021E70C8:
	cmp r2, #0x60
	bgt _021E70D0
	beq _021E7136
	pop {r4, r5, r6, pc}
_021E70D0:
	add r0, r2, #0
	sub r0, #0xb0
	cmp r0, #0xe
	bhi _021E719A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E70E4: ; jump table
	.short _021E714E - _021E70E4 - 2 ; case 0
	.short _021E737C - _021E70E4 - 2 ; case 1
	.short _021E715C - _021E70E4 - 2 ; case 2
	.short _021E737C - _021E70E4 - 2 ; case 3
	.short _021E716A - _021E70E4 - 2 ; case 4
	.short _021E737C - _021E70E4 - 2 ; case 5
	.short _021E7178 - _021E70E4 - 2 ; case 6
	.short _021E737C - _021E70E4 - 2 ; case 7
	.short _021E7186 - _021E70E4 - 2 ; case 8
	.short _021E737C - _021E70E4 - 2 ; case 9
	.short _021E7186 - _021E70E4 - 2 ; case 10
	.short _021E737C - _021E70E4 - 2 ; case 11
	.short _021E7186 - _021E70E4 - 2 ; case 12
	.short _021E737C - _021E70E4 - 2 ; case 13
	.short _021E7186 - _021E70E4 - 2 ; case 14
_021E7102:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x38
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E7110:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x4e
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E7128:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x5a
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E7136:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x66
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E714E:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xc0
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E715C:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xc2
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E716A:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xc4
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E7178:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xc6
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E7186:
	ldr r0, _021E7380 ; =ov112_021FFAA4
	ldr r1, [r0, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #0xf
	bne _021E71E8
	ldr r0, [r0, #4]
	cmp r0, #3
	bls _021E719C
_021E719A:
	b _021E737C
_021E719C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E71A8: ; jump table
	.short _021E71B0 - _021E71A8 - 2 ; case 0
	.short _021E71BE - _021E71A8 - 2 ; case 1
	.short _021E71CC - _021E71A8 - 2 ; case 2
	.short _021E71DA - _021E71A8 - 2 ; case 3
_021E71B0:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xd0
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E71BE:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xd2
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E71CC:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xd4
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E71DA:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xd6
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E71E8:
	mov r0, #0
	add r1, r0, #0
	mov r3, #1
	bl ov112_021E5A68
	pop {r4, r5, r6, pc}
_021E71F4:
	mov r0, #0xc
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E7200:
	mov r0, #0xc
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E720C:
	mov r0, #3
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E7218:
	ldr r0, _021E7384 ; =ov112_021FFB24
	mov r1, #0x3a
	strb r1, [r0, #0x1d]
	ldr r1, _021E7380 ; =ov112_021FFAA4
	ldr r2, _021E7388 ; =0x00008C50
	ldr r0, [r1, #0x50]
	cmp r0, #0
	beq _021E7232
	mov r1, #0xa
	lsl r1, r1, #6
	bl ov112_021E5EC4
	b _021E723C
_021E7232:
	ldr r0, [r1, #0x10]
	mov r1, #0xa
	lsl r1, r1, #6
	bl ov112_021E5EC4
_021E723C:
	bl ov112_021E5EEC
	pop {r4, r5, r6, pc}
_021E7242:
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E724E:
	ldr r0, _021E7384 ; =ov112_021FFB24
	mov r1, #0x46
	strb r1, [r0, #0x1d]
	ldr r1, _021E7380 ; =ov112_021FFAA4
	mov r0, #0x8f
	ldr r1, [r1, #8]
	lsl r0, r0, #8
	mov r2, #0x2a
	bl ov112_021E5EC4
	bl ov112_021E6134
	pop {r4, r5, r6, pc}
_021E7268:
	mov r0, #0xe
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E7274:
	ldr r0, _021E7384 ; =ov112_021FFB24
	mov r1, #0x3c
	strb r1, [r0, #0x1d]
	ldr r1, _021E7380 ; =ov112_021FFAA4
	ldr r2, _021E738C ; =0x000028BE
	ldr r0, [r1, #0x58]
	cmp r0, #0
	beq _021E728E
	mov r1, #0xd7
	lsl r1, r1, #8
	bl ov112_021E5EC4
	b _021E7298
_021E728E:
	ldr r0, [r1, #0x2c]
	mov r1, #0xd7
	lsl r1, r1, #8
	bl ov112_021E5EC4
_021E7298:
	bl ov112_021E5EEC
	pop {r4, r5, r6, pc}
_021E729E:
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E72AA:
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E72B6:
	ldr r0, _021E7384 ; =ov112_021FFB24
	mov r1, #0x48
	strb r1, [r0, #0x1d]
	ldr r1, _021E7380 ; =ov112_021FFAA4
	ldr r0, _021E7390 ; =0x0000CE80
	ldr r1, [r1, #0x38]
	ldr r2, _021E7394 ; =0x00000D4C
	bl ov112_021E5EC4
	bl ov112_021E6134
	pop {r4, r5, r6, pc}
_021E72CE:
	mov r0, #0xe
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E72DA:
	ldr r0, _021E7384 ; =ov112_021FFB24
	mov r1, #0x48
	strb r1, [r0, #0x1d]
	ldr r1, _021E7380 ; =ov112_021FFAA4
	ldr r0, _021E7390 ; =0x0000CE80
	ldr r1, [r1, #0x38]
	ldr r2, _021E7394 ; =0x00000D4C
	bl ov112_021E5EC4
	bl ov112_021E6134
	pop {r4, r5, r6, pc}
_021E72F2:
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E72FE:
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E730A:
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E7316:
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E7322:
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r4, r5, r6, pc}
_021E732E:
	ldr r0, _021E7384 ; =ov112_021FFB24
	ldrh r0, [r0, #0x30]
	cmp r0, #0
	bne _021E733C
	bl ov112_021E6004
	pop {r4, r5, r6, pc}
_021E733C:
	bl ov112_021E5EEC
	pop {r4, r5, r6, pc}
_021E7342:
	ldr r1, _021E7384 ; =ov112_021FFB24
	add r2, r4, #0
	ldr r1, [r1, #0x28]
	bl MI_CpuCopy8
	ldr r0, _021E7384 ; =ov112_021FFB24
	ldr r1, [r0, #0x20]
	add r1, r1, r4
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x28]
	add r1, r1, r4
	str r1, [r0, #0x28]
	ldrh r1, [r0, #0x30]
	sub r1, r1, r4
	strh r1, [r0, #0x30]
	ldrh r1, [r0, #0x36]
	add r1, r1, #1
	strh r1, [r0, #0x36]
	ldrh r1, [r0, #0x3a]
	add r1, r1, #1
	strh r1, [r0, #0x3a]
	ldrh r0, [r0, #0x30]
	cmp r0, #0
	bne _021E7378
	bl ov112_021E6164
	pop {r4, r5, r6, pc}
_021E7378:
	bl ov112_021E6134
_021E737C:
	pop {r4, r5, r6, pc}
	nop
_021E7380: .word ov112_021FFAA4
_021E7384: .word ov112_021FFB24
_021E7388: .word 0x00008C50
_021E738C: .word 0x000028BE
_021E7390: .word 0x0000CE80
_021E7394: .word 0x00000D4C
	thumb_func_end ov112_021E6F60

