	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7DBC
	.extern ov102_021E7968
	.extern ov102_021E79A0
	.extern ov102_021E7D30
	.extern ov102_021E940C

	.text

	.text
	thumb_func_start ov102_021E7DBC
ov102_021E7DBC: ; 0x021E7DBC
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #0x30]
	mov r1, #2
	add r3, r2, #0
	tst r3, r1
	beq _021E7DE0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
	add r0, r4, #0
	mov r1, #2
	bl ov102_021E7D30
	pop {r4, pc}
_021E7DE0:
	mov r1, #1
	add r3, r2, #0
	tst r3, r1
	beq _021E7DF2
	add r4, #0x4c
	ldrh r1, [r4]
	bl ov102_021E7D30
	pop {r4, pc}
_021E7DF2:
	mov r3, #0x40
	tst r3, r2
	beq _021E7E42
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	cmp r1, #0
	beq _021E7E16
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	add r4, #0x4c
	sub r1, r1, #1
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7D30
	pop {r4, pc}
_021E7E16:
	add r1, r4, #0
	add r1, #0x6a
	ldrb r1, [r1]
	cmp r1, #0
	beq _021E7E3E
	add r1, r4, #0
	add r1, #0x4e
	ldrh r1, [r1]
	cmp r1, #0
	beq _021E7E3E
	add r1, r4, #0
	add r1, #0x4e
	ldrh r1, [r1]
	add r4, #0x4e
	sub r1, r1, #1
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7D30
	pop {r4, pc}
_021E7E3E:
	mov r0, #1
	pop {r4, pc}
_021E7E42:
	mov r3, #0x80
	tst r2, r3
	beq _021E7EAE
	add r2, r4, #0
	add r2, #0x4c
	ldrh r2, [r2]
	cmp r2, #0
	bne _021E7E92
	add r1, r4, #0
	add r1, #0x6a
	ldrb r1, [r1]
	cmp r1, #2
	bne _021E7E7A
	add r1, r4, #0
	add r1, #0x4e
	ldrh r1, [r1]
	cmp r1, #0
	bne _021E7E7A
	add r1, r4, #0
	add r1, #0x4e
	ldrh r1, [r1]
	add r4, #0x4e
	add r1, r1, #1
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7D30
	pop {r4, pc}
_021E7E7A:
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4c
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #3
	bl ov102_021E7D30
	pop {r4, pc}
_021E7E92:
	cmp r2, #1
	bne _021E7EAA
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	add r4, #0x4c
	add r1, r1, #1
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7D30
	pop {r4, pc}
_021E7EAA:
	add r0, r1, #0
	pop {r4, pc}
_021E7EAE:
	ldrh r2, [r4, #0x34]
	mov r0, #0x20
	tst r0, r2
	beq _021E7ECC
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ov102_021E79A0
	add r0, r4, #0
	mov r1, #4
	bl ov102_021E7D30
	pop {r4, pc}
_021E7ECC:
	mov r0, #0x10
	tst r0, r2
	beq _021E7EE8
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ov102_021E7968
	add r0, r4, #0
	mov r1, #4
	bl ov102_021E7D30
	pop {r4, pc}
_021E7EE8:
	add r0, r1, #0
	pop {r4, pc}
	thumb_func_end ov102_021E7DBC

