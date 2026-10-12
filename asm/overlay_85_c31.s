	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E5FE0
	.extern ov85_021E750C
	.extern ov85_021E7644
	.extern ov85_021E8128
	.extern ov85_021E8144
	.extern ov85_021E8150
	.extern ov85_021E834C
	.extern ov85_021E8358
	.extern ov85_021E8558
	.extern ov85_021E8570

	.text

	.text
	thumb_func_start ov85_021E5FE0
ov85_021E5FE0: ; 0x021E5FE0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov85_021E8570
	cmp r0, #1
	bne _021E6002
	add r0, r4, #0
	bl ov85_021E8150
	cmp r0, #0
	bne _021E6002
	mov r0, #0x1d
	str r0, [r4]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6002:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021E6018
	add r0, r4, #0
	bl ov85_021E8150
	cmp r0, #0
	bne _021E6018
	add r0, r4, #0
	bl ov85_021E8128
_021E6018:
	add r0, r4, #0
	bl ov85_021E834C
	cmp r0, #0
	bne _021E6046
	add r0, r4, #0
	bl ov85_021E750C
	cmp r0, #1
	bne _021E6046
	add r0, r4, #0
	bl ov85_021E8150
	cmp r0, #0
	bne _021E6040
	add r0, r4, #0
	bl ov85_021E8128
	mov r0, #1
	str r0, [r4, #0x38]
_021E6040:
	add r0, r4, #0
	bl ov85_021E8358
_021E6046:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021E6068
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	add r2, r4, #0
	ldr r0, [r0, #0x30]
	mov r1, #0xa
	add r2, #0x38
	mov r3, #1
	bl sub_02096D4C
	cmp r0, #1
	bne _021E6068
	mov r0, #0
	str r0, [r4, #0x38]
_021E6068:
	add r0, r4, #0
	mov r1, #0x4b
	ldr r2, [r4, #8]
	add r0, #0xd4
	lsl r1, r1, #2
	cmp r2, r1
	ldr r2, [r0, #0x48]
	bge _021E6088
	mov r1, #0xe
	add r2, #0xbf
	lsl r1, r1, #0xc
	str r2, [r0, #0x48]
	cmp r2, r1
	blt _021E6096
	str r1, [r0, #0x48]
	b _021E6096
_021E6088:
	mov r1, #1
	sub r2, #0xbf
	lsl r1, r1, #0xe
	str r2, [r0, #0x48]
	cmp r2, r1
	bge _021E6096
	str r1, [r0, #0x48]
_021E6096:
	ldr r5, [r0, #0x48]
	add r0, r4, #0
	bl ov85_021E8144
	cmp r0, #1
	bne _021E60AE
	add r0, r4, #0
	add r0, #0xd4
	lsl r1, r5, #1
	bl ov85_021E7644
	b _021E60B6
_021E60AE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov85_021E8558
_021E60B6:
	ldr r0, [r4, #8]
	add r2, sp, #0
	mov r1, #0x47
	strh r0, [r2, #2]
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	sub r1, #0xc
	asr r0, r3, #0xb
	lsr r0, r0, #0x14
	add r0, r3, r0
	asr r0, r0, #0xc
	strh r0, [r2, #4]
	ldr r1, [r4, r1]
	add r4, #0xd0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r2, #6]
	ldr r0, [r4]
	mov r1, #0xb
	add r2, sp, #0
	mov r3, #8
	bl sub_02096D4C
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov85_021E5FE0

