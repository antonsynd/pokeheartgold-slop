	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E498
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34
	.extern ov10_0221EF7C
	.extern ov10_0221F084

	.text

	.text
	thumb_func_start ov10_0221E498
ov10_0221E498: ; 0x0221E498
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r1, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r6, #0
	bl ov10_0221EEF0
	str r0, [sp, #0x28]
	add r0, r6, #0
	bl ov10_0221EEF0
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl ov10_0221EEF0
	ldr r7, _0221E59C ; =0x000003CF
	str r0, [sp, #0x20]
	mov r4, #0
	add r5, sp, #0x2c
_0221E4C6:
	ldrb r1, [r6, r7]
	add r2, r4, #0
	add r0, r6, #0
	add r2, #0xa
	mov r3, #0
	bl GetBattlerVar
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _0221E4C6
	ldr r0, _0221E59C ; =0x000003CF
	ldrb r4, [r6, r0]
	mov r0, #0xc0
	add r5, r4, #0
	mul r5, r0
	add r0, r6, #0
	add r1, r4, #0
	bl GetBattlerAbility
	add r1, sp, #0x34
	str r1, [sp]
	ldr r3, _0221E5A0 ; =0x00002DB8
	add r1, r6, r5
	ldrh r1, [r1, r3]
	add r2, r4, #0
	str r1, [sp, #4]
	add r1, sp, #0x2c
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	mul r0, r4
	add r1, r6, r0
	add r0, r3, #0
	add r0, #0x14
	ldr r0, [r1, r0]
	sub r3, #0x6c
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x24]
	add r3, r6, r3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	add r3, r3, r5
	bl ov10_0221EF7C
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x1c]
	lsl r1, r1, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne _0221E54A
	ldr r0, _0221E5A4 ; =0x00000355
	ldrb r1, [r6, r0]
	add r0, #0x17
	add r1, r6, r1
	ldrb r5, [r1, r0]
	b _0221E54C
_0221E54A:
	mov r5, #0x64
_0221E54C:
	mov r0, #0xc0
	add r7, r4, #0
	mul r7, r0
	add r0, r6, #0
	add r1, r4, #0
	bl GetBattlerAbility
	add r1, sp, #0x2c
	str r1, [sp]
	str r4, [sp, #4]
	lsl r2, r4, #1
	add r4, r6, r2
	ldr r3, _0221E5A8 ; =0x00002DCC
	add r7, r6, r7
	str r0, [sp, #8]
	ldr r0, [r7, r3]
	ldr r2, _0221E5AC ; =0x0000307C
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0xc]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	sub r3, #0x14
	ldrh r2, [r4, r2]
	ldrh r3, [r7, r3]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	bl ov10_0221F084
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	ble _0221E596
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	bl ov10_0221EF24
_0221E596:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0221E59C: .word 0x000003CF
_0221E5A0: .word 0x00002DB8
_0221E5A4: .word 0x00000355
_0221E5A8: .word 0x00002DCC
_0221E5AC: .word 0x0000307C
	thumb_func_end ov10_0221E498

