#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222FDD4
	.public ov45_0222FDD8
	.public ov45_0222FE84
	.public ov45_0222FEC4
	.public ov45_0222FF40
	.public ov45_0222FF7C
	.public ov45_02230008
	.public ov45_02230050
	.public ov45_02230064
	.extern _022577C0
	.extern ov45_0222E9E0
	.extern ov45_0222F154
	.extern ov45_0222F7A8
	.extern ov45_0222F7B0
	.extern ov45_0222F88C
	.extern ov45_0222F928
	.extern ov45_0222F954
	.extern ov45_0222FA74
	.extern ov45_0222FAF8
	.extern ov45_0222FB24
	.extern ov45_02230164
	.extern ov45_022301E0
	.extern ov45_02230384
	.extern ov45_02254EF0

	.text

	.text
	thumb_func_start ov45_0222FDD4
ov45_0222FDD4: ; 0x0222FDD4
	bx lr
	.balign 4, 0
	thumb_func_end ov45_0222FDD4

	thumb_func_start ov45_0222FDD8
ov45_0222FDD8: ; 0x0222FDD8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0222FE7C ; =_022577C0
	add r4, r1, #0
	add r5, r2, #0
	ldr r0, [r0]
	add r1, r7, #0
	mov r2, #0
	str r3, [sp]
	bl ov45_0222FB24
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222FE78
	cmp r4, #5
	bhi _0222FE78
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222FE06: ; jump table
	.short _0222FE12 - _0222FE06 - 2 ; case 0
	.short _0222FE16 - _0222FE06 - 2 ; case 1
	.short _0222FE16 - _0222FE06 - 2 ; case 2
	.short _0222FE16 - _0222FE06 - 2 ; case 3
	.short _0222FE16 - _0222FE06 - 2 ; case 4
	.short _0222FE2C - _0222FE06 - 2 ; case 5
_0222FE12:
	mov r1, #0
	b _0222FE32
_0222FE16:
	add r0, r4, #0
	bl ov45_0222F7A8
	ldr r1, _0222FE7C ; =_022577C0
	ldr r2, [r1]
	ldr r1, _0222FE80 ; =0x0000012D
	ldrb r1, [r2, r1]
	cmp r1, r0
	bne _0222FE78
	mov r1, #1
	b _0222FE32
_0222FE2C:
	mov r1, #0
	b _0222FE32
_0222FE30: ; 0x0222FE30 unreachable
	pop {r3, r4, r5, r6, r7, pc}
_0222FE32:
	add r4, r1, #0
	mov r0, #0xc
	mul r4, r0
	ldr r0, _0222FE7C ; =_022577C0
	mov r1, #0x62
	ldr r0, [r0]
	lsl r1, r1, #2
	add r0, r0, r4
	ldr r2, [r0, r1]
	cmp r2, r5
	bls _0222FE78
	sub r1, r1, #4
	ldr r0, [r0, r1]
	lsl r5, r5, #3
	add r0, r0, r5
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bls _0222FE5C
	bl GF_AssertFail
_0222FE5C:
	ldr r0, _0222FE7C ; =_022577C0
	mov r3, #0x61
	ldr r0, [r0]
	lsl r3, r3, #2
	add r6, r0, r4
	ldr r4, [r6, r3]
	add r3, #8
	add r2, r4, r5
	ldr r1, [sp]
	ldr r2, [r2, #4]
	ldr r3, [r6, r3]
	ldr r4, [r4, r5]
	add r0, r7, #0
	blx r4
_0222FE78:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222FE7C: .word _022577C0
_0222FE80: .word 0x0000012D
	thumb_func_end ov45_0222FDD8

	thumb_func_start ov45_0222FE84
ov45_0222FE84: ; 0x0222FE84
	push {r3, lr}
	ldr r1, _0222FEBC ; =ov45_02254EF0
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl strcmp
	cmp r0, #0
	bne _0222FEB8
	ldr r0, _0222FEC0 ; =_022577C0
	mov r2, #0x50
	ldr r1, [r0]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	bl memcpy
	ldr r0, _0222FEC0 ; =_022577C0
	ldr r2, [r0]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _0222FEB8
	mov r1, #0
	strb r1, [r2, r0]
_0222FEB8:
	pop {r3, pc}
	nop
_0222FEBC: .word ov45_02254EF0
_0222FEC0: .word _022577C0
	thumb_func_end ov45_0222FE84

	thumb_func_start ov45_0222FEC4
ov45_0222FEC4: ; 0x0222FEC4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0222FF38 ; =_022577C0
	add r7, r1, #0
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl ov45_0222FB24
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222FF36
	ldr r0, _0222FF38 ; =_022577C0
	ldr r1, _0222FF3C ; =0x0000012D
	ldr r0, [r0]
	ldrb r1, [r0, r1]
	cmp r1, #4
	beq _0222FF2A
	add r1, r5, #0
	bl ov45_0222F954
	ldr r4, [r0, #8]
	ldr r0, _0222FF38 ; =_022577C0
	ldr r6, [r7, #8]
	ldr r1, [r0]
	ldr r0, _0222FF3C ; =0x0000012D
	ldrb r0, [r1, r0]
	bl ov45_0222F7B0
	cmp r4, #5
	bne _0222FF16
	cmp r6, r0
	bne _0222FF16
	ldr r0, _0222FF38 ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #1
	bl ov45_0222FA74
	b _0222FF2A
_0222FF16:
	cmp r4, r0
	bne _0222FF2A
	cmp r6, r0
	beq _0222FF2A
	ldr r0, _0222FF38 ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #1
	bl ov45_0222FAF8
_0222FF2A:
	ldr r0, _0222FF38 ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	add r2, r7, #0
	bl ov45_0222F928
_0222FF36:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222FF38: .word _022577C0
_0222FF3C: .word 0x0000012D
	thumb_func_end ov45_0222FEC4

	thumb_func_start ov45_0222FF40
ov45_0222FF40: ; 0x0222FF40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0222FF78 ; =_022577C0
	add r4, r1, #0
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl ov45_0222FB24
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222FF74
	ldr r0, _0222FF78 ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	add r2, r4, #0
	bl ov45_0222F88C
	ldr r0, _0222FF78 ; =_022577C0
	add r1, r4, #0
	ldr r3, [r0]
	add r0, r5, #0
	ldr r2, [r3, #0x20]
	ldr r3, [r3, #0x14]
	blx r3
_0222FF74:
	pop {r3, r4, r5, pc}
	nop
_0222FF78: .word _022577C0
	thumb_func_end ov45_0222FF40

	thumb_func_start ov45_0222FF7C
ov45_0222FF7C: ; 0x0222FF7C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0222FFFC ; =_022577C0
	add r4, r1, #0
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl ov45_0222FB24
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222FFF8
	bl ov45_0222E9E0
	cmp r0, r5
	beq _0222FFEA
	ldr r0, _0222FFFC ; =_022577C0
	ldr r2, _02230000 ; =0x0000069E
	ldr r1, [r0]
	ldrb r0, [r1, r2]
	cmp r0, #0
	beq _0222FFEA
	sub r0, r2, #2
	ldrh r0, [r1, r0]
	ldr r3, [r4]
	cmp r0, r3
	bne _0222FFEA
	sub r2, #0xe6
	add r2, r1, r2
	mov r1, #0x4c
	mul r1, r0
	add r0, r2, r1
	add r1, sp, #8
	bl ov45_02230384
	add r0, r4, #0
	add r1, sp, #0
	bl ov45_02230384
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	sub r0, r3, r0
	sbc r2, r1
	blt _0222FFF8
	ldr r0, _0222FFFC ; =_022577C0
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _02230004 ; =0x0000069F
	strb r2, [r1, r0]
	bl ov45_0222F154
_0222FFEA:
	ldr r0, _0222FFFC ; =_022577C0
	ldr r1, [r4]
	ldr r0, [r0]
	add r2, r5, #0
	add r3, r4, #0
	bl ov45_02230164
_0222FFF8:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222FFFC: .word _022577C0
_02230000: .word 0x0000069E
_02230004: .word 0x0000069F
	thumb_func_end ov45_0222FF7C

	thumb_func_start ov45_02230008
ov45_02230008: ; 0x02230008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02230048 ; =_022577C0
	add r4, r1, #0
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl ov45_0222FB24
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02230046
	ldr r0, _02230048 ; =_022577C0
	ldr r1, [r4]
	ldr r0, [r0]
	add r2, r5, #0
	bl ov45_022301E0
	ldr r1, _02230048 ; =_022577C0
	ldr r2, [r4]
	ldr r5, [r1]
	ldr r1, _0223004C ; =0x0000069C
	ldrh r3, [r5, r1]
	cmp r3, r2
	bne _02230046
	cmp r0, #1
	bne _02230046
	mov r2, #1
	add r0, r1, #3
	strb r2, [r5, r0]
_02230046:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02230048: .word _022577C0
_0223004C: .word 0x0000069C
	thumb_func_end ov45_02230008

	thumb_func_start ov45_02230050
ov45_02230050: ; 0x02230050
	push {r3, lr}
	ldr r1, _02230060 ; =_022577C0
	ldr r2, [r1]
	ldr r1, [r2, #0x20]
	ldr r2, [r2, #0x18]
	blx r2
	pop {r3, pc}
	nop
_02230060: .word _022577C0
	thumb_func_end ov45_02230050

	thumb_func_start ov45_02230064
ov45_02230064: ; 0x02230064
	push {r3, lr}
	cmp r0, #0
	beq _02230076
	ldr r0, _02230088 ; =_022577C0
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _0223008C ; =0x00000133
	strb r2, [r1, r0]
	pop {r3, pc}
_02230076:
	ldr r0, _02230088 ; =_022577C0
	ldr r3, [r0]
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r3, #0x20]
	ldr r3, [r3, #0x1c]
	blx r3
	pop {r3, pc}
	nop
_02230088: .word _022577C0
_0223008C: .word 0x00000133
	thumb_func_end ov45_02230064

