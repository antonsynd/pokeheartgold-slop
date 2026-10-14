	.include "asm/macros.inc"
	.include "overlay_80_022310C4.inc"
	.include "global.inc"
	.public ov80_02231A14

    .text

	.text
	thumb_func_start ov80_02231A14
ov80_02231A14: ; 0x02231A14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r1, _02231BE0 ; =0x000006F5
	ldrb r2, [r6, #4]
	ldrb r0, [r6, r1]
	add r1, #0xf
	add r3, r6, r1
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r3, r1
	bl sub_02030BD0
	add r4, r0, #0
	add r0, r6, #0
	bl ov80_022379C8
	str r0, [sp, #4]
	ldrb r0, [r6, #4]
	cmp r0, #2
	bne _02231A48
	ldr r0, [sp, #4]
	add sp, #0xc
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_02231A48:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _02231A60
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02231A6E
_02231A60:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02231A6E:
	ldr r5, [r6, #0xc]
	bl _ffix
	lsl r1, r5, #1
	add r1, r5, r1
	sub r0, r0, r1
	str r0, [sp, #8]
	add r0, r5, #0
	bl _fflt
	ldr r1, _02231BE4 ; =0x45800000
	bl _fdiv
	bl _f2d
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _02231BE8 ; =0x40140000
	mov r0, #0
	bl _dmul
	bl _d2f
	add r5, r0, #0
	ldr r0, [sp, #4]
	bl _fflt
	add r1, r5, #0
	bl _fdiv
	bl _f2d
	ldr r3, _02231BEC ; =0x3FF00000
	mov r2, #0
	bl _dls
	bhs _02231AC2
	add r0, r4, #0
	bl _fflt
	str r0, [sp]
	b _02231B00
_02231AC2:
	ldr r0, [sp, #4]
	mul r0, r4
	cmp r0, #0
	ble _02231ADC
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02231AEA
_02231ADC:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02231AEA:
	bl _ffix
	bl _fflt
	ldr r1, _02231BE4 ; =0x45800000
	bl _fdiv
	add r1, r5, #0
	bl _fdiv
	str r0, [sp]
_02231B00:
	ldr r0, _02231BF0 ; =0x00000704
	mov r5, #0
	add r4, r5, #0
	add r7, r6, r0
_02231B08:
	ldr r0, _02231BE0 ; =0x000006F5
	ldrb r0, [r6, r0]
	cmp r4, r0
	bne _02231B26
	add r0, r5, #0
	bl _f2d
	ldr r3, _02231BEC ; =0x3FF00000
	mov r2, #0
	bl _dadd
	bl _d2f
	add r5, r0, #0
	b _02231B4E
_02231B26:
	ldrb r2, [r6, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r7, r1
	bl sub_02030BD0
	cmp r0, #0
	beq _02231B4E
	add r0, r5, #0
	bl _f2d
	ldr r3, _02231BEC ; =0x3FF00000
	mov r2, #0
	bl _dadd
	bl _d2f
	add r5, r0, #0
_02231B4E:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02231B08
	add r0, r5, #0
	bl _f2d
	add r2, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r1, r0, #0
	bl _dneq
	beq _02231B7C
	add r0, r5, #0
	bl _f2d
	ldr r3, _02231BEC ; =0x3FF00000
	mov r2, #0
	bl _dsub
	bl _d2f
	add r5, r0, #0
_02231B7C:
	add r0, r5, #0
	bl _f2d
	ldr r3, _02231BF4 ; =0x3FE00000
	mov r2, #0
	bl _dmul
	bl _d2f
	add r4, r0, #0
	ldr r0, [sp, #8]
	bl _fflt
	ldr r1, _02231BE4 ; =0x45800000
	bl _fdiv
	ldr r1, [sp]
	bl _fadd
	add r1, r0, #0
	add r0, r4, #0
	bl _fadd
	add r5, r0, #0
	bl _ffix
	add r4, r0, #0
	add r0, r5, #0
	bl _ffix
	bl _fflt
	add r1, r0, #0
	add r0, r5, #0
	bl _fneq
	beq _02231BC8
	add r4, r4, #1
_02231BC8:
	ldr r0, [sp, #4]
	cmp r4, r0
	ble _02231BD0
	add r4, r0, #0
_02231BD0:
	cmp r4, #0x64
	ble _02231BD6
	mov r4, #0x64
_02231BD6:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02231BE0: .word 0x000006F5
_02231BE4: .word 0x45800000
_02231BE8: .word 0x40140000
_02231BEC: .word 0x3FF00000
_02231BF0: .word 0x00000704
_02231BF4: .word 0x3FE00000
	thumb_func_end ov80_02231A14

