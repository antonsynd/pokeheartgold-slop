#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223C008
	.public ov70_0223C0C8
	.public ov70_0223C19C
	.public ov70_0223C1F8
	.public ov70_0223C23C
	.public ov70_0223C274
	.public ov70_0223C2B0
	.extern ov70_02237F38
	.extern ov70_02237F58
	.extern ov70_02238130
	.extern ov70_022381A4
	.extern ov70_02238D84
	.extern ov70_02238E50
	.extern ov70_0223BFA8
	.extern ov70_0223CAC4
	.extern ov70_0223CC04
	.extern ov70_02241184

	.text

	.text
	thumb_func_start ov70_0223C008
ov70_0223C008: ; 0x0223C008
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #1
	add r5, r0, #0
	mov r4, #3
	bl ov70_0223BFA8
	cmp r0, #0
	beq _0223C01C
	add r4, r4, #2
_0223C01C:
	add r0, r5, #0
	mov r1, #0
	bl ov70_0223BFA8
	cmp r0, #0
	beq _0223C02A
	add r4, r4, #2
_0223C02A:
	ldr r0, _0223C0BC ; =0x000012CC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223C044
	ldr r0, _0223C0C0 ; =0x00000B8A
	mov r2, #0x26
	lsl r2, r2, #4
	add r0, r5, r0
	add r1, r4, #0
	add r2, r5, r2
	bl ov70_02238130
	b _0223C082
_0223C044:
	add r0, sp, #0
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	ldr r1, _0223C0C0 ; =0x00000B8A
	add r0, sp, #0
	ldrsh r2, [r5, r1]
	strh r2, [r0]
	add r2, r1, #2
	ldrsb r2, [r5, r2]
	strb r2, [r0, #2]
	add r2, r1, #3
	ldrsb r2, [r5, r2]
	strb r2, [r0, #3]
	add r2, r1, #4
	ldrsb r2, [r5, r2]
	add r1, r1, #5
	strb r2, [r0, #4]
	ldrsb r1, [r5, r1]
	strb r1, [r0, #5]
	ldr r1, _0223C0BC ; =0x000012CC
	strb r4, [r0, #6]
	ldr r1, [r5, r1]
	strb r1, [r0, #7]
	mov r1, #0x26
	lsl r1, r1, #4
	add r0, sp, #0
	add r1, r5, r1
	bl ov70_022381A4
_0223C082:
	ldr r1, _0223C0C0 ; =0x00000B8A
	ldrh r2, [r5, r1]
	add r0, r1, #6
	strh r2, [r5, r0]
	add r0, r1, #2
	ldrh r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	strh r2, [r5, r0]
	add r0, r1, #4
	ldrh r2, [r5, r0]
	add r0, r1, #0
	add r0, #0xa
	strh r2, [r5, r0]
	ldr r2, _0223C0BC ; =0x000012CC
	add r1, #0xe
	ldr r0, [r5, r2]
	sub r2, #0xee
	str r0, [r5, r1]
	ldr r0, _0223C0C4 ; =0x00001604
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #0x11
	str r0, [r5, #0x2c]
	strh r1, [r5, r2]
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223C0BC: .word 0x000012CC
_0223C0C0: .word 0x00000B8A
_0223C0C4: .word 0x00001604
	thumb_func_end ov70_0223C008

	thumb_func_start ov70_0223C0C8
ov70_0223C0C8: ; 0x0223C0C8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	beq _0223C176
	bl ov70_02237F58
	add r5, r0, #0
	ldr r0, _0223C190 ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x16
	bhi _0223C18C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223C0F4: ; jump table
	.short _0223C170 - _0223C0F4 - 2 ; case 0
	.short _0223C164 - _0223C0F4 - 2 ; case 1
	.short _0223C16A - _0223C0F4 - 2 ; case 2
	.short _0223C170 - _0223C0F4 - 2 ; case 3
	.short _0223C18C - _0223C0F4 - 2 ; case 4
	.short _0223C18C - _0223C0F4 - 2 ; case 5
	.short _0223C18C - _0223C0F4 - 2 ; case 6
	.short _0223C18C - _0223C0F4 - 2 ; case 7
	.short _0223C18C - _0223C0F4 - 2 ; case 8
	.short _0223C18C - _0223C0F4 - 2 ; case 9
	.short _0223C18C - _0223C0F4 - 2 ; case 10
	.short _0223C18C - _0223C0F4 - 2 ; case 11
	.short _0223C18C - _0223C0F4 - 2 ; case 12
	.short _0223C164 - _0223C0F4 - 2 ; case 13
	.short _0223C18C - _0223C0F4 - 2 ; case 14
	.short _0223C122 - _0223C0F4 - 2 ; case 15
	.short _0223C122 - _0223C0F4 - 2 ; case 16
	.short _0223C122 - _0223C0F4 - 2 ; case 17
	.short _0223C122 - _0223C0F4 - 2 ; case 18
	.short _0223C122 - _0223C0F4 - 2 ; case 19
	.short _0223C122 - _0223C0F4 - 2 ; case 20
	.short _0223C122 - _0223C0F4 - 2 ; case 21
	.short _0223C122 - _0223C0F4 - 2 ; case 22
_0223C122:
	mov r0, #0x4a
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r0, _0223C194 ; =0x000005FE
	bl StopSE
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov70_02241184
	cmp r5, #0
	ldr r0, [r4, #4]
	ldr r1, _0223C198 ; =0x000010D8
	bne _0223C150
	mov r2, #0xba
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	add r1, r4, r1
	mov r3, #0
	bl ov70_0223CC04
	b _0223C15E
_0223C150:
	mov r2, #0xba
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	add r1, r4, r1
	mov r3, #1
	bl ov70_0223CC04
_0223C15E:
	mov r0, #0x12
	str r0, [r4, #0x2c]
	b _0223C18C
_0223C164:
	mov r0, #0x1b
	str r0, [r4, #0x2c]
	b _0223C18C
_0223C16A:
	bl sub_020399EC
	b _0223C18C
_0223C170:
	mov r0, #0x14
	str r0, [r4, #0x2c]
	b _0223C18C
_0223C176:
	ldr r0, _0223C190 ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223C18C
	bl sub_020399EC
_0223C18C:
	mov r0, #3
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223C190: .word 0x00001604
_0223C194: .word 0x000005FE
_0223C198: .word 0x000010D8
	thumb_func_end ov70_0223C0C8

	thumb_func_start ov70_0223C19C
ov70_0223C19C: ; 0x0223C19C
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x4a
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	ldr r1, _0223C1F0 ; =0x00000F0F
	bne _0223C1CC
	str r1, [sp]
	mov r1, #0xe
	mov r2, #1
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov70_02238D84
	ldr r0, _0223C1F4 ; =0x000005F3
	bl PlaySE
	b _0223C1EA
_0223C1CC:
	str r1, [sp]
	mov r1, #0x1e
	mov r2, #1
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0x13
	bl ov70_02238D84
	mov r0, #0x47
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_0223C1EA:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223C1F0: .word 0x00000F0F
_0223C1F4: .word 0x000005F3
	thumb_func_end ov70_0223C19C

	thumb_func_start ov70_0223C1F8
ov70_0223C1F8: ; 0x0223C1F8
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x47
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	add r2, r2, #1
	str r2, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #0x2d
	ble _0223C22C
	ldr r1, _0223C234 ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0x20
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov70_02238D84
	ldr r0, _0223C238 ; =0x000011DE
	mov r1, #1
	strh r1, [r4, r0]
_0223C22C:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223C234: .word 0x00000F0F
_0223C238: .word 0x000011DE
	thumb_func_end ov70_0223C1F8

	thumb_func_start ov70_0223C23C
ov70_0223C23C: ; 0x0223C23C
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xb9
	add r4, r0, #0
	mov r3, #0
	lsl r1, r1, #4
	strh r3, [r4, r1]
	ldr r1, _0223C26C ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0x26
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov70_02238D84
	ldr r0, _0223C270 ; =0x000005F3
	bl PlaySE
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223C26C: .word 0x00000F0F
_0223C270: .word 0x000005F3
	thumb_func_end ov70_0223C23C

	thumb_func_start ov70_0223C274
ov70_0223C274: ; 0x0223C274
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223C2A8 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x99
	mov r2, #4
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #0x1c
	bl ov70_02238D84
	mov r0, #0x47
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	ldr r0, _0223C2AC ; =0x000005F3
	bl PlaySE
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223C2A8: .word 0x00000F0F
_0223C2AC: .word 0x000005F3
	thumb_func_end ov70_0223C274

	thumb_func_start ov70_0223C2B0
ov70_0223C2B0: ; 0x0223C2B0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223C2E4 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x9e
	mov r2, #4
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #2
	bl ov70_02238D84
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	ldr r0, _0223C2E8 ; =0x000005F3
	bl PlaySE
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223C2E4: .word 0x00000F0F
_0223C2E8: .word 0x000005F3
	thumb_func_end ov70_0223C2B0

