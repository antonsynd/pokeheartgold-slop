	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021EA3F0
	.extern ov85_021E9FD0
	.extern ov85_021EA39C

	.text

	.text
	thumb_func_start ov85_021EA3F0
ov85_021EA3F0: ; 0x021EA3F0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r6, r1, #0
	bl ov85_021E9FD0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x2c]
	cmp r5, r0
	ble _021EA41A
	mov r3, #1
	add r0, sp, #0
	strb r3, [r0]
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r2, sp, #0
	bl sub_02096D4C
	mov r1, #1
	b _021EA41C
_021EA41A:
	mov r1, #0
_021EA41C:
	ldr r0, _021EA4E4 ; =0x00004A48
	str r1, [r4, r0]
	ldr r0, _021EA4E8 ; =0x00004A44
	ldr r0, [r4, r0]
	cmp r5, r0
	bne _021EA42E
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021EA42E:
	cmp r5, #5
	bhi _021EA4D4
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA43E: ; jump table
	.short _021EA4D4 - _021EA43E - 2 ; case 0
	.short _021EA44A - _021EA43E - 2 ; case 1
	.short _021EA48E - _021EA43E - 2 ; case 2
	.short _021EA48E - _021EA43E - 2 ; case 3
	.short _021EA48E - _021EA43E - 2 ; case 4
	.short _021EA4C6 - _021EA43E - 2 ; case 5
_021EA44A:
	bl sub_02037454
	cmp r0, #1
	bgt _021EA45A
	bl sub_02033250
	cmp r0, #1
	bls _021EA460
_021EA45A:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021EA460:
	mov r0, #0xd5
	mov r1, #0x11
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	sub r1, #0x12
	bl ov85_021EA39C
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021EA488
	mov r1, #0x66
	bl Clear2dMenuWindowAndDelete
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_021EA488:
	add sp, #4
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_021EA48E:
	mov r0, #0xd
	bl sub_0205A904
	ldr r0, _021EA4E8 ; =0x00004A44
	ldr r1, [r4, r0]
	cmp r5, r1
	bge _021EA4D4
	add r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _021EA4AA
	cmp r0, #1
	beq _021EA4B4
	b _021EA4BC
_021EA4AA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov85_021EA39C
	b _021EA4BC
_021EA4B4:
	add r0, r4, #0
	mov r1, #0
	bl ov85_021EA39C
_021EA4BC:
	bl sub_02037454
	ldr r1, [r4, #0x10]
	str r0, [r1, #0x2c]
	b _021EA4D4
_021EA4C6:
	mov r0, #0xc
	bl sub_0205A904
	add r0, r4, #0
	add r1, r6, #0
	bl ov85_021EA39C
_021EA4D4:
	bl ov85_021E9FD0
	ldr r1, _021EA4E8 ; =0x00004A44
	str r0, [r4, r1]
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EA4E4: .word 0x00004A48
_021EA4E8: .word 0x00004A44
	thumb_func_end ov85_021EA3F0

