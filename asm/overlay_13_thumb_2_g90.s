	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223EE0
	.public ov13_02223F84
	.public ov13_02223FDC
	.extern ov13_02223C48
	.extern ov13_02223CA0
	.extern ov13_02223D24
	.extern ov13_02223E44
	.extern ov13_02223E6C
	.extern ov13_02223EA4
	.extern ov13_02223ED4
	.extern ov13_02226CBC
	.extern ov13_02245A58
	.extern ov13_02245A6C
	.extern ov13_0224DF30

	.text

	.text
	thumb_func_start ov13_02223EE0
ov13_02223EE0: ; 0x02223EE0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02223F74 ; =ov13_0224DF30
	mov r4, #1
	str r6, [r0, #0x70]
	bl ov13_02223E44
	mov r0, #0xd0
	add r7, r6, #0
	mul r7, r0
	ldr r0, _02223F78 ; =0x000024D0
	add r1, r7, r0
	mov r0, #0xc0
	mul r0, r6
	add r0, r1, r0
	ldr r1, _02223F74 ; =ov13_0224DF30
	ldr r1, [r1, #4]
	blx r1
	ldr r6, _02223F74 ; =ov13_0224DF30
	cmp r0, #0
	str r0, [r6, #0x54]
	bne _02223F10
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02223F10:
	mov r1, #0x1f
	add r2, r0, r1
	add r0, r1, #0
	sub r0, #0x3f
	add r3, r2, #0
	and r3, r0
	ldr r0, _02223F7C ; =0x00002490
	str r3, [r6, #0x40]
	add r2, r7, r0
	add r0, r3, r2
	add r0, r0, r1
	sub r1, #0x3f
	and r0, r1
	str r0, [r6, #0x5c]
	ldr r0, _02223F80 ; =ov13_02223EA4
	add r1, r3, #0
	bl ov13_02223D24
	cmp r0, #0
	bne _02223F3C
	sub r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_02223F3C:
	mov r6, #0
	add r7, r4, #0
_02223F40:
	mov r0, #0xa
	bl OS_Sleep
	bl ov13_02223E6C
	cmp r0, #0
	beq _02223F6C
_02223F4E:
	cmp r0, #4
	beq _02223F64
	cmp r0, #5
	beq _02223F64
	cmp r0, #6
	bne _02223F60
	add r4, r6, #0
	add r5, r7, #0
	b _02223F64
_02223F60:
	mov r4, #0
	sub r5, r4, #2
_02223F64:
	bl ov13_02223E6C
	cmp r0, #0
	bne _02223F4E
_02223F6C:
	cmp r4, #0
	bne _02223F40
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02223F74: .word ov13_0224DF30
_02223F78: .word 0x000024D0
_02223F7C: .word 0x00002490
_02223F80: .word ov13_02223EA4
	thumb_func_end ov13_02223EE0

	thumb_func_start ov13_02223F84
ov13_02223F84: ; 0x02223F84
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #1
	bl ov13_02223C48
	cmp r0, #0
	beq _02223FC2
	mov r6, #0
	add r4, r6, #0
	mov r7, #0xa
_02223F96:
	add r0, r7, #0
	bl OS_Sleep
	bl ov13_02223E6C
	cmp r0, #0
	beq _02223FBE
_02223FA4:
	cmp r0, #4
	beq _02223FB6
	cmp r0, #5
	beq _02223FB6
	cmp r0, #0x14
	bne _02223FB4
	add r5, r4, #0
	b _02223FB6
_02223FB4:
	add r5, r6, #0
_02223FB6:
	bl ov13_02223E6C
	cmp r0, #0
	bne _02223FA4
_02223FBE:
	cmp r5, #0
	bne _02223F96
_02223FC2:
	ldr r1, _02223FD8 ; =ov13_0224DF30
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _02223FD4
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _02223FD8 ; =ov13_0224DF30
	mov r1, #0
	str r1, [r0, #0x54]
_02223FD4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02223FD8: .word ov13_0224DF30
	thumb_func_end ov13_02223F84

	thumb_func_start ov13_02223FDC
ov13_02223FDC: ; 0x02223FDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r0, _022240EC ; =ov13_0224DF30
	mov r4, #1
	ldr r3, [r0, #0x5c]
	ldr r0, [r0, #0x18]
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	sub r5, r4, #3
	add r6, r3, r1
	bne _02223FFA
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02223FFA:
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl ov13_02223CA0
	cmp r0, #0
	bne _0222400E
	add sp, #0x30
	sub r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_0222400E:
	add r0, sp, #4
	bl OS_CreateAlarm
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _022240F0 ; =0x003FEC42
	ldr r3, _022240F4 ; =ov13_02223ED4
	add r0, sp, #4
	mov r2, #0
	bl OS_SetAlarm
	mov r7, #0
_02224026:
	bl ov13_02226CBC
	ldr r1, _022240F8 ; =ov13_02245A58
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02224038
	mov r5, #2
	mvn r5, r5
	b _022240B8
_02224038:
	ldr r0, _022240EC ; =ov13_0224DF30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02224046
	mov r5, #7
	mvn r5, r5
	b _022240B8
_02224046:
	mov r0, #0xa
	bl OS_Sleep
	bl ov13_02223E6C
	cmp r0, #0
	beq _022240B4
_02224054:
	cmp r0, #0xc
	bgt _0222406A
	bge _0222407E
	cmp r0, #5
	bgt _022240AA
	cmp r0, #4
	blt _022240AA
	beq _022240AC
	cmp r0, #5
	beq _022240AC
	b _022240AA
_0222406A:
	cmp r0, #0x13
	bgt _022240AA
	cmp r0, #0xd
	blt _022240AA
	beq _02224084
	cmp r0, #0x12
	beq _022240AC
	cmp r0, #0x13
	beq _022240AC
	b _022240AA
_0222407E:
	add r4, r7, #0
	mov r5, #1
	b _022240AC
_02224084:
	ldr r0, _022240EC ; =ov13_0224DF30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02224094
	mov r4, #0
	add r5, r4, #0
	sub r5, #8
	b _022240AC
_02224094:
	mov r2, #3
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #0x10
	bl ov13_02223CA0
	cmp r0, #0
	bne _022240AC
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022240AA:
	mov r4, #0
_022240AC:
	bl ov13_02223E6C
	cmp r0, #0
	bne _02224054
_022240B4:
	cmp r4, #0
	bne _02224026
_022240B8:
	add r0, sp, #4
	bl OS_CancelAlarm
_022240BE:
	bl ov13_02223E6C
	cmp r0, #0
	bne _022240BE
	cmp r5, #0
	ble _022240E6
	ldr r0, _022240EC ; =ov13_0224DF30
	mov r1, #1
	str r1, [r0, #0x20]
	ldr r0, _022240FC ; =ov13_02245A6C
	bl SOC_Startup
	cmp r0, #0
	bge _022240E0
	mov r5, #1
	mvn r5, r5
	b _022240E6
_022240E0:
	ldr r0, _022240EC ; =ov13_0224DF30
	mov r1, #1
	str r1, [r0, #0x24]
_022240E6:
	add r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022240EC: .word ov13_0224DF30
_022240F0: .word 0x003FEC42
_022240F4: .word ov13_02223ED4
_022240F8: .word ov13_02245A58
_022240FC: .word ov13_02245A6C
	thumb_func_end ov13_02223FDC

