	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6D34
	.extern ov99_021E6C14
	.extern ov99_021E6C30
	.extern ov99_021E6CF4
	.extern ov99_021E6D14
	.extern ov99_021E7068
	.extern ov99_021E7078
	.extern ov99_021E7088
	.extern ov99_021E7098
	.extern ov99_021E70A8
	.extern ov99_021E70B8
	.extern ov99_021E70C8
	.extern ov99_021E70D8
	.extern ov99_021E7100
	.extern ov99_021E7124
	.extern ov99_021E9D8C
	.extern ov99_021E9DAC

	.text

	.text
	thumb_func_start ov99_021E6D34
ov99_021E6D34: ; 0x021E6D34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5]
	bl ov99_021E70C8
	str r0, [sp, #0x1c]
	ldr r0, [r5]
	bl ov99_021E70B8
	str r0, [sp, #0x20]
	ldr r0, [r5]
	bl ov99_021E70A8
	str r0, [sp, #0x24]
	ldr r0, [r5]
	bl ov99_021E70D8
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl ov99_021E7088
	str r0, [sp, #0x28]
	add r0, r5, #0
	bl ov99_021E7124
	str r0, [sp, #0x14]
	ldr r0, [r5]
	bl ov99_021E7078
	bl ov98_0221EF80
	str r0, [sp, #0x10]
	ldr r0, [r5]
	bl ov99_021E7068
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	bl ov99_021E7100
	add r4, r0, #0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	add r0, r7, r0
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r5, #0x10]
	bl ov98_0221EEFC
	str r0, [sp, #0x2c]
	ldr r0, [r5]
	bl ov99_021E7098
	add r2, r0, #0
	ldr r0, [sp, #0x2c]
	mov r1, #0
	bl BufferPlayersName
	mov r1, #0
	str r1, [sp]
	ldr r0, [r5, #0x10]
	mov r2, #0xb
	mov r3, #1
	bl ov98_0221EC08
	ldr r0, [r5, #0x10]
	mov r1, #1
	mov r2, #0xc
	mov r3, #0
	bl ov98_0221EBD8
	ldr r0, [r5, #0x10]
	mov r1, #2
	mov r2, #0xd
	mov r3, #0
	bl ov98_0221EBD8
	ldr r0, [r5, #0x10]
	mov r1, #3
	mov r2, #0xe
	mov r3, #0
	bl ov98_0221EBD8
	ldr r0, [r5, #0x10]
	mov r1, #4
	mov r2, #0xf
	mov r3, #0
	bl ov98_0221EBD8
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #0x20
	mov r3, #2
	bl ov98_0221EC08
	mov r2, #0
	str r2, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #7
	mov r3, #1
	bl ov98_0221EBEC
	add r0, r5, #0
	add r1, r6, #0
	bl ov99_021E6CF4
	ldr r0, [r5, #0x10]
	mov r1, #8
	mov r2, #0x10
	mov r3, #0
	bl ov98_0221EBD8
	ldr r0, [r5, #0x10]
	mov r1, #0xd
	mov r2, #0x1f
	mov r3, #0
	bl ov98_0221EBD8
	ldr r0, [r5, #0x10]
	mov r1, #0xe
	mov r2, #1
	mov r3, #0
	bl ov98_0221EBD8
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r3, [sp, #0x1c]
	mov r1, #0xa
	mov r2, #0x1c
	bl ov98_0221ECD0
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r3, [sp, #0x20]
	mov r1, #0xb
	mov r2, #0x1d
	bl ov98_0221ECD0
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r3, [sp, #0x24]
	mov r1, #0xc
	mov r2, #0x1e
	bl ov98_0221ECD0
	add r0, r5, #0
	add r1, r4, #0
	bl ov99_021E6D14
	add r0, r5, #0
	bl ov99_021E6C14
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _021E6E98
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl ManagedSprite_SetAnim
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl ManagedSprite_SetPaletteOverride
_021E6E98:
	mov r0, #0xc8
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r2, #1
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #2
	str r2, [sp, #0xc]
	bl ov99_021E6C30
	mov r0, #0x50
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	mov r2, #3
	mov r3, #4
	bl ov99_021E6C30
	mov r0, #7
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r1, r5, #0
	ldr r0, [r5, #0x14]
	ldr r2, _021E6F68 ; =ov99_021E9DAC
	ldr r3, [sp, #0x14]
	add r1, #0x18
	bl ov98_0221E6F0
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x48
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r1, r5, #0
	ldr r0, [r5, #0x14]
	ldr r2, _021E6F68 ; =ov99_021E9DAC
	ldr r3, [sp, #0x10]
	add r1, #0x18
	bl ov98_0221E6F0
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x68
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r1, r5, #0
	ldr r0, [r5, #0x14]
	ldr r2, _021E6F68 ; =ov99_021E9DAC
	add r1, #0x18
	add r3, r7, #0
	bl ov98_0221E6F0
	mov r0, #0x25
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x88
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r1, r5, #0
	ldr r0, [r5, #0x14]
	ldr r2, _021E6F68 ; =ov99_021E9DAC
	add r1, #0x18
	add r3, r4, #0
	bl ov98_0221E6F0
	mov r0, #0x39
	str r0, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0x78
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	add r5, #0x18
	ldr r2, _021E6F6C ; =ov99_021E9D8C
	add r1, r5, #0
	add r3, r4, #0
	bl ov98_0221E6F0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6F68: .word ov99_021E9DAC
_021E6F6C: .word ov99_021E9D8C
	thumb_func_end ov99_021E6D34

