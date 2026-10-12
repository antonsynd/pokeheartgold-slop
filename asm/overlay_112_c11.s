#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5B28
	.public ov112_021E5B98
	.public ov112_021E5D38
	.public ov112_021E5D44
	.public ov112_021E5D50
	.extern _021FF500
	.extern _021FF9E0
	.extern ov112_021E5900
	.extern ov112_021E5938
	.extern ov112_021E59B4
	.extern ov112_021E5A80
	.extern ov112_021E5A84
	.extern ov112_021E5AD0
	.extern ov112_021FFA18
	.extern ov112_021FFA20
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5B28
ov112_021E5B28: ; 0x021E5B28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, _021E5B90 ; =ov112_021FFA18
	cmp r5, #1
	bne _021E5B40
	ldrb r0, [r6]
	cmp r0, #0xfc
	bne _021E5B3C
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E5B3C:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E5B40:
	cmp r5, #4
	bhs _021E5B48
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E5B48:
	ldrb r0, [r6, #3]
	ldrb r1, [r6, #2]
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	add r0, r6, #0
	add r1, r5, #0
	bl ov112_021E5900
	strb r4, [r6, #2]
	asr r1, r4, #8
	strb r1, [r6, #3]
	cmp r4, r0
	bne _021E5B76
	ldr r0, _021E5B94 ; =_021FF9E0
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E5B76:
	ldr r0, _021E5B94 ; =_021FF9E0
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _021E5B8C
	mov r0, #0
	b _021E5B84
_021E5B82:
	add r0, r0, #1
_021E5B84:
	cmp r0, r5
	blo _021E5B82
	bl ov112_021E5938
_021E5B8C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E5B90: .word ov112_021FFA18
_021E5B94: .word _021FF9E0
	thumb_func_end ov112_021E5B28

	thumb_func_start ov112_021E5B98
ov112_021E5B98: ; 0x021E5B98
	push {r3, r4, r5, lr}
	ldr r0, _021E5D28 ; =ov112_021FFA18
	bl CARD_SpiWaitReadRange
	add r4, r0, #0
	bl ov112_021E5A84
	cmp r0, #0
	beq _021E5BAC
	mov r4, #0
_021E5BAC:
	cmp r4, #0
	bne _021E5BC0
	bl ov112_021E5AD0
	cmp r0, #0
	beq _021E5BBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5BBC:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5BC0:
	add r0, r4, #0
	bl ov112_021E5B28
	cmp r0, #0
	bne _021E5BCE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5BCE:
	bl OS_GetTick
	ldr r2, _021E5D2C ; =_021FF9E0
	str r0, [r2, #0x30]
	str r1, [r2, #0x34]
	ldr r1, _021E5D28 ; =ov112_021FFA18
	ldrb r0, [r1]
	cmp r0, #0xf0
	bhs _021E5BF6
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _021E5BEA
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5BEA:
	ldr r3, [r1, #4]
	ldr r0, [r2, #4]
	cmp r3, r0
	beq _021E5BF6
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5BF6:
	ldrb r0, [r1]
	sub r0, #0xf6
	cmp r0, #6
	bls _021E5C00
	b _021E5D04
_021E5C00:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5C0C: ; jump table
	.short _021E5CFE - _021E5C0C - 2 ; case 0
	.short _021E5D04 - _021E5C0C - 2 ; case 1
	.short _021E5CD0 - _021E5C0C - 2 ; case 2
	.short _021E5D04 - _021E5C0C - 2 ; case 3
	.short _021E5C92 - _021E5C0C - 2 ; case 4
	.short _021E5D04 - _021E5C0C - 2 ; case 5
	.short _021E5C1A - _021E5C0C - 2 ; case 6
_021E5C1A:
	ldr r1, _021E5D2C ; =_021FF9E0
	ldr r0, [r1, #0x28]
	cmp r0, #4
	bhi _021E5C4E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5C2E: ; jump table
	.short _021E5C4E - _021E5C2E - 2 ; case 0
	.short _021E5C38 - _021E5C2E - 2 ; case 1
	.short _021E5C4E - _021E5C2E - 2 ; case 2
	.short _021E5C4E - _021E5C2E - 2 ; case 3
	.short _021E5C4E - _021E5C2E - 2 ; case 4
_021E5C38:
	mov r0, #2
	str r0, [r1, #0x28]
	ldr r0, [r1, #0x20]
	ldr r3, _021E5D30 ; =_021FF500
	str r0, [sp]
	mov r0, #0
	ldrb r3, [r3]
	add r1, r0, #0
	mov r2, #0xfa
	bl ov112_021E59B4
_021E5C4E:
	ldr r0, _021E5D2C ; =_021FF9E0
	ldr r1, [r0, #0x24]
	cmp r1, #0
	bne _021E5D24
	mov r1, #1
	str r1, [r0, #0x24]
	mov r1, #2
	str r1, [r0, #0x28]
	mov r1, #0
	str r1, [r0, #8]
	cmp r4, #1
	bls _021E5C6C
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _021E5D24
_021E5C6C:
	ldr r0, _021E5D2C ; =_021FF9E0
	ldr r3, _021E5D30 ; =_021FF500
	ldr r0, [r0, #0x20]
	mov r2, #0xfa
	str r0, [sp]
	ldrb r3, [r3]
	mov r0, #0
	add r1, r0, #0
	bl ov112_021E59B4
	ldr r0, _021E5D2C ; =_021FF9E0
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _021E5C8C
	bl ov112_021E5938
_021E5C8C:
	bl ov112_021E5A80
	b _021E5D24
_021E5C92:
	ldr r0, _021E5D2C ; =_021FF9E0
	ldr r2, [r0, #0x28]
	cmp r2, #1
	bne _021E5D24
	mov r2, #3
	str r2, [r0, #0x28]
	mov r2, #1
	str r2, [r0, #8]
	ldrb r2, [r1, #1]
	ldr r3, _021E5D30 ; =_021FF500
	strb r2, [r3, #1]
	cmp r2, #1
	bne _021E5D24
	ldr r2, [r1, #4]
	ldr r1, [r0, #0x20]
	eor r2, r1
	str r2, [r0, #4]
	str r1, [sp]
	mov r0, #0
	ldrb r3, [r3]
	add r1, r0, #0
	mov r2, #0xf8
	bl ov112_021E59B4
	ldr r0, _021E5D2C ; =_021FF9E0
	mov r1, #1
	str r1, [r0, #0x2c]
	mov r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0x24]
	b _021E5D24
_021E5CD0:
	ldr r3, _021E5D2C ; =_021FF9E0
	ldr r0, [r3, #0x28]
	cmp r0, #2
	bne _021E5D24
	mov r0, #4
	str r0, [r3, #0x28]
	ldrb r0, [r1, #1]
	ldr r2, _021E5D30 ; =_021FF500
	strb r0, [r2, #1]
	ldr r2, [r1, #4]
	ldr r1, [r3, #0x20]
	eor r1, r2
	str r1, [r3, #4]
	mov r1, #1
	str r1, [r3, #0x2c]
	mov r1, #0
	str r1, [r3, #0x18]
	str r1, [r3, #0x24]
	ldr r2, [r3, #0xc]
	cmp r2, #0
	beq _021E5D24
	blx r2
	b _021E5D24
_021E5CFE:
	bl ov112_021E5938
	b _021E5D24
_021E5D04:
	ldr r5, _021E5D2C ; =_021FF9E0
	ldr r0, [r5, #0x18]
	cmp r0, #1
	beq _021E5D24
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021E5D24
	ldr r3, _021E5D28 ; =ov112_021FFA18
	sub r4, #8
	ldrb r2, [r3]
	lsl r1, r4, #0x18
	ldrb r3, [r3, #1]
	ldr r0, _021E5D34 ; =ov112_021FFA20
	ldr r4, [r5, #0x1c]
	lsr r1, r1, #0x18
	blx r4
_021E5D24:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E5D28: .word ov112_021FFA18
_021E5D2C: .word _021FF9E0
_021E5D30: .word _021FF500
_021E5D34: .word ov112_021FFA20
	thumb_func_end ov112_021E5B98

	thumb_func_start ov112_021E5D38
ov112_021E5D38: ; 0x021E5D38
	ldr r1, _021E5D40 ; =_021FF9E0
	str r0, [r1, #0xc]
	bx lr
	nop
_021E5D40: .word _021FF9E0
	thumb_func_end ov112_021E5D38

	thumb_func_start ov112_021E5D44
ov112_021E5D44: ; 0x021E5D44
	ldr r1, _021E5D4C ; =_021FF9E0
	str r0, [r1, #0x1c]
	bx lr
	nop
_021E5D4C: .word _021FF9E0
	thumb_func_end ov112_021E5D44

	thumb_func_start ov112_021E5D50
ov112_021E5D50: ; 0x021E5D50
	ldr r1, _021E5D58 ; =_021FF9E0
	str r0, [r1, #0x14]
	bx lr
	nop
_021E5D58: .word _021FF9E0
	thumb_func_end ov112_021E5D50

