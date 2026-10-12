	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F609C
	.extern ov18_021F11C0
	.extern ov18_021F1294
	.extern ov18_021F12C8
	.extern ov18_021F5FFC

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
	thumb_func_start ov18_021F609C
ov18_021F609C: ; 0x021F609C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0
	add r5, r0, #0
	str r1, [sp, #4]
	add r6, r4, #0
	add r7, sp, #8
_021F60AA:
	add r1, r4, #0
	add r2, sp, #8
	add r0, r5, #0
	add r1, #0xe
	add r2, #2
	add r3, sp, #8
	str r6, [sp]
	bl ov18_021F12C8
	mov r0, #0
	ldrsh r1, [r7, r0]
	sub r0, #0xa
	cmp r1, r0
	beq _021F60D0
	cmp r1, #0x86
	beq _021F60D0
	add r4, r4, #1
	cmp r4, #6
	blo _021F60AA
_021F60D0:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _021F6126
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, #0xe
	mov r2, #0x30
	mov r3, #0x86
	bl ov18_021F1294
	ldr r0, _021F6174 ; =0x000018C5
	ldrsb r1, [r5, r0]
	sub r0, r0, #1
	ldrsb r0, [r5, r0]
	add r1, r1, #2
	cmp r1, r0
	blt _021F6106
	add r4, #0xe
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F11C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F6106:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xe
	mov r2, #1
	bl ov18_021F11C0
	ldr r2, _021F6174 ; =0x000018C5
	add r4, #0xe
	ldrsb r2, [r5, r2]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r2, #2
	bl ov18_021F5FFC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F6126:
	mov r2, #0x30
	mov r0, #0
	add r1, r4, #0
	add r3, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, #0xe
	sub r3, #0x3a
	bl ov18_021F1294
	ldr r0, _021F6174 ; =0x000018C5
	ldrsb r0, [r5, r0]
	sub r0, r0, #2
	bpl _021F6152
	add r4, #0xe
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F11C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F6152:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xe
	mov r2, #1
	bl ov18_021F11C0
	ldr r2, _021F6174 ; =0x000018C5
	add r4, #0xe
	ldrsb r2, [r5, r2]
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r2, #2
	bl ov18_021F5FFC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F6174: .word 0x000018C5
	thumb_func_end ov18_021F609C

