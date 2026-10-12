#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FA1BC
	.extern ov15_021FA0E4
	.extern ov15_021FA104
	.extern ov15_021FA170
	.extern ov15_021FA68C
	.extern ov15_021FA6C0
	.extern ov15_021FA73C
	.extern ov15_021FAC2C
	.extern ov15_021FD774
	.extern ov15_021FD810
	.extern ov15_021FFECC
	.extern ov15_02200640
	.extern ov15_02200641
	.extern ov15_02200642
	.extern ov15_02200643

	.text

	.text
	thumb_func_start ov15_021FA1BC
ov15_021FA1BC: ; 0x021FA1BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r1, _021FA4A4 ; =gSystem
	mov r2, #0x40
	ldr r3, [r1, #0x4c]
	add r5, r0, #0
	mov r4, #0
	tst r2, r3
	beq _021FA1DE
	ldr r0, _021FA4A8 ; =0x00000644
	add r4, r4, #1
	ldr r1, [r5, r0]
	lsl r2, r1, #2
	ldr r1, _021FA4AC ; =ov15_02200640
	ldrb r1, [r1, r2]
	str r1, [r5, r0]
	b _021FA38C
_021FA1DE:
	mov r2, #0x80
	tst r2, r3
	beq _021FA1F4
	ldr r0, _021FA4A8 ; =0x00000644
	add r4, r4, #1
	ldr r1, [r5, r0]
	lsl r2, r1, #2
	ldr r1, _021FA4B0 ; =ov15_02200641
	ldrb r1, [r1, r2]
	str r1, [r5, r0]
	b _021FA38C
_021FA1F4:
	mov r2, #0x20
	add r6, r3, #0
	tst r6, r2
	beq _021FA246
	ldr r1, _021FA4A8 ; =0x00000644
	ldr r3, _021FA4B4 ; =ov15_02200642
	ldr r1, [r5, r1]
	lsl r6, r1, #2
	ldrb r3, [r3, r6]
	cmp r3, #0xe
	bne _021FA21E
	mov r1, #2
	str r1, [sp]
	mov r1, #0xe
	add r2, sp, #0xc
	mov r3, #1
	str r4, [sp, #4]
	bl ov15_021FA73C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021FA21E:
	cmp r1, #0x10
	beq _021FA274
	cmp r1, #0
	blt _021FA23E
	cmp r1, #8
	bge _021FA23E
	sub r2, #0x21
	bl ov15_021FA6C0
	ldr r1, _021FA4A8 ; =0x00000644
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021FA274
	str r0, [r5, r1]
	add r4, r4, #1
	b _021FA38C
_021FA23E:
	ldr r0, _021FA4A8 ; =0x00000644
	add r4, r4, #1
	str r3, [r5, r0]
	b _021FA38C
_021FA246:
	mov r2, #0x10
	tst r3, r2
	beq _021FA29A
	ldr r1, _021FA4A8 ; =0x00000644
	ldr r2, _021FA4B8 ; =ov15_02200643
	ldr r1, [r5, r1]
	lsl r3, r1, #2
	ldrb r2, [r2, r3]
	cmp r2, #0xf
	bne _021FA270
	mov r1, #2
	str r1, [sp]
	add r2, sp, #8
	mov r1, #0xf
	add r2, #3
	mov r3, #1
	str r4, [sp, #4]
	bl ov15_021FA73C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021FA270:
	cmp r1, #0x10
	bne _021FA276
_021FA274:
	b _021FA38C
_021FA276:
	cmp r1, #0
	blt _021FA292
	cmp r1, #8
	bge _021FA292
	mov r2, #1
	bl ov15_021FA6C0
	ldr r1, _021FA4A8 ; =0x00000644
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021FA38C
	str r0, [r5, r1]
	add r4, r4, #1
	b _021FA38C
_021FA292:
	ldr r0, _021FA4A8 ; =0x00000644
	add r4, r4, #1
	str r2, [r5, r0]
	b _021FA38C
_021FA29A:
	ldr r3, [r1, #0x48]
	lsl r1, r2, #5
	tst r1, r3
	beq _021FA314
	ldr r1, _021FA4A8 ; =0x00000644
	ldr r1, [r5, r1]
	cmp r1, #0
	blt _021FA2E6
	cmp r1, #8
	bge _021FA2E6
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	sub r2, #0x11
	add r1, #0x64
	ldrb r1, [r1]
	bl ov15_021FA6C0
	ldr r1, _021FA4A8 ; =0x00000644
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov15_021FFECC
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	str r0, [sp, #4]
	ldr r1, _021FA4A8 ; =0x00000644
	add r2, sp, #8
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, #2
	mov r3, #1
	bl ov15_021FA73C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021FA2E6:
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0
	add r1, #0x64
	ldrb r1, [r1]
	add r0, r5, #0
	mvn r2, r2
	bl ov15_021FA6C0
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	add r2, sp, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, #2
	mov r3, #1
	bl ov15_021FA73C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021FA314:
	add r2, #0xf0
	add r1, r3, #0
	tst r1, r2
	beq _021FA38C
	ldr r1, _021FA4A8 ; =0x00000644
	ldr r1, [r5, r1]
	cmp r1, #0
	blt _021FA360
	cmp r1, #8
	bge _021FA360
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #1
	add r1, #0x64
	ldrb r1, [r1]
	bl ov15_021FA6C0
	ldr r1, _021FA4A8 ; =0x00000644
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov15_021FFECC
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	str r0, [sp, #4]
	ldr r1, _021FA4A8 ; =0x00000644
	add r2, sp, #8
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, #1
	mov r3, #1
	bl ov15_021FA73C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021FA360:
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r1, #0x64
	ldrb r1, [r1]
	mov r2, #1
	bl ov15_021FA6C0
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	add r2, sp, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, #1
	mov r3, #1
	bl ov15_021FA73C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021FA38C:
	ldr r1, _021FA4A8 ; =0x00000644
	ldr r0, [r5, r1]
	cmp r0, #0x11
	bne _021FA3A0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x64
	ldrb r0, [r0]
	str r0, [r5, r1]
_021FA3A0:
	cmp r4, #0
	beq _021FA3C4
	ldr r0, _021FA4BC ; =0x000005DC
	bl PlaySE
	ldr r1, _021FA4A8 ; =0x00000644
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov15_021FFECC
	ldr r1, _021FA4A8 ; =0x00000644
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov15_021FA0E4
	add r0, r5, #0
	bl ov15_021FA170
_021FA3C4:
	mov r1, #0
	add r0, sp, #8
	strb r1, [r0]
	add r0, r5, #0
	bl ov15_021FAC2C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021FA440
	add r0, r5, #0
	add r1, r4, #0
	bl ov15_021FA104
	cmp r0, #0
	beq _021FA426
	cmp r4, #8
	bhs _021FA408
	add r0, r5, #0
	add r1, r4, #0
	bl ov15_021FA68C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021FA426
	ldr r1, _021FA4A8 ; =0x00000644
	add r0, r5, #0
	str r4, [r5, r1]
	ldr r1, [r5, r1]
	bl ov15_021FFECC
	b _021FA426
_021FA408:
	ldr r1, _021FA4A8 ; =0x00000644
	add r0, r5, #0
	str r4, [r5, r1]
	ldr r1, [r5, r1]
	bl ov15_021FFECC
	ldr r0, _021FA4A8 ; =0x00000644
	ldr r1, [r5, r0]
	cmp r1, #8
	blt _021FA426
	cmp r1, #0xd
	bgt _021FA426
	add r0, r5, #0
	bl ov15_021FA0E4
_021FA426:
	mov r0, #2
	str r0, [sp]
	mov r3, #1
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #8
	str r3, [sp, #4]
	bl ov15_021FA73C
	cmp r0, #1
	beq _021FA4DA
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021FA440:
	ldr r0, _021FA4A4 ; =gSystem
	mov r3, #1
	ldr r1, [r0, #0x48]
	add r0, r1, #0
	tst r0, r3
	beq _021FA47E
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, _021FA4A8 ; =0x00000644
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, sp, #8
	bl ov15_021FA73C
	add r4, r0, #0
	ldr r0, _021FA4A8 ; =0x00000644
	ldr r1, [r5, r0]
	cmp r1, #8
	blt _021FA474
	cmp r1, #0xd
	bgt _021FA474
	add r0, r5, #0
	bl ov15_021FA0E4
_021FA474:
	cmp r4, #1
	beq _021FA4DA
	add sp, #0x10
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021FA47E:
	mov r0, #2
	tst r1, r0
	beq _021FA4DA
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x10
	add r2, sp, #8
	bl ov15_021FA73C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov15_021FD774
	ldr r0, _021FA4A8 ; =0x00000644
	b _021FA4C0
	nop
_021FA4A4: .word gSystem
_021FA4A8: .word 0x00000644
_021FA4AC: .word ov15_02200640
_021FA4B0: .word ov15_02200641
_021FA4B4: .word ov15_02200642
_021FA4B8: .word ov15_02200643
_021FA4BC: .word 0x000005DC
_021FA4C0:
	ldr r1, [r5, r0]
	cmp r1, #8
	blt _021FA4D0
	cmp r1, #0xd
	bgt _021FA4D0
	add r0, r5, #0
	bl ov15_021FA0E4
_021FA4D0:
	cmp r4, #1
	beq _021FA4DA
	add sp, #0x10
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021FA4DA:
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #1
	bne _021FA4F2
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #0x29
	mov r3, #0x1b
	bl ov15_021FD810
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021FA4F2:
	mov r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov15_021FA1BC

