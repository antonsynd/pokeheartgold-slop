	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F5CC4
	.extern ov18_021F12C8
	.extern ov18_021F5000
	.extern ov18_021F5180
	.extern ov18_021F54C0
	.extern ov18_021F55D8

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F5CC4
ov18_021F5CC4: ; 0x021F5CC4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	bhi _021F5DB2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
ov18_021F5CDC: ; jump table
	.short ov18_021F5CE4 - ov18_021F5CDC - 2 ; case 0
	.short ov18_021F5CFC - ov18_021F5CDC - 2 ; case 1
	.short _021F5D70 - ov18_021F5CDC - 2 ; case 2
	.short ov18_021F5D82 - ov18_021F5CDC - 2 ; case 3
ov18_021F5CE4:
	ldr r0, _021F5DB8 ; =0x000008EE
	bl PlaySE
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xa
	mov r2, #0
	bl ov18_021F5180
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
ov18_021F5CFC:
	ldr r1, [r4]
	ldr r0, _021F5DBC ; =0x0000068C
	ldr r0, [r1, r0]
	ldr r1, [r4, #0xc]
	bl ManagedSprite_OffsetAffineZRotation
	ldr r1, [r4]
	ldr r0, _021F5DBC ; =0x0000068C
	ldr r0, [r1, r0]
	bl ManagedSprite_GetRotation
	add r5, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	bl ov18_021F5000
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _021F5D4E
	mov r1, #0xf6
	lsl r1, r1, #8
	cmp r5, r1
	bhi _021F5DB2
	ldr r2, [r4]
	ldr r0, _021F5DBC ; =0x0000068C
	ldr r0, [r2, r0]
	bl ManagedSprite_SetAffineZRotation
	mov r1, #0xf6
	ldr r0, [r4]
	lsl r1, r1, #8
	bl ov18_021F5000
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
	b _021F5D70
_021F5D4E:
	mov r1, #0xa
	lsl r1, r1, #8
	cmp r5, r1
	blo _021F5DB2
	ldr r2, [r4]
	ldr r0, _021F5DBC ; =0x0000068C
	ldr r0, [r2, r0]
	bl ManagedSprite_SetAffineZRotation
	mov r1, #0xa
	ldr r0, [r4]
	lsl r1, r1, #8
	bl ov18_021F5000
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
_021F5D70:
	mov r1, #0x17
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl ov18_021F54C0
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
ov18_021F5D82:
	add r0, r4, #0
	bl ov18_021F55D8
	cmp r0, #0
	bne _021F5D92
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F5D92:
	mov r0, #1
	str r0, [sp]
	ldrh r1, [r4, #0x1c]
	add r2, sp, #4
	ldr r0, [r4]
	add r2, #2
	add r3, sp, #4
	bl ov18_021F12C8
	add r1, sp, #4
	mov r0, #0
	ldrsh r2, [r1, r0]
	mov r1, #0xff
	mvn r1, r1
	cmp r2, r1
	ble ov18_021F5DB4
_021F5DB2:
	mov r0, #1
ov18_021F5DB4:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F5DB8: .word 0x000008EE
_021F5DBC: .word 0x0000068C
	thumb_func_end ov18_021F5CC4

