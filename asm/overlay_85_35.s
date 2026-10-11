	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E6224
	.extern ov85_021E7644
	.extern ov85_021E78A4
	.extern ov85_021E8530
	.extern ov85_021EA7C4

	.text

	.text
	thumb_func_start ov85_021E6224
ov85_021E6224: ; 0x021E6224
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, [r6, #0x28]
	ldr r2, [r6, #0x30]
	ldr r1, [r0, #0x1c]
	ldr r3, [r6, #0x2c]
	mov r0, #0xa
	mul r0, r2
	ldr r4, _021E629C ; =ov85_021EA7C4
	lsl r2, r3, #1
	add r0, r4, r0
	ldrh r0, [r2, r0]
	mov r5, #1
	lsl r5, r5, #0xe
	lsl r4, r0, #0xc
	str r1, [sp]
	sub r2, r4, r1
	bpl _021E6252
	mov r0, #0x5a
	lsl r0, r0, #0xe
	add r0, r4, r0
	sub r2, r0, r1
_021E6252:
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r2, r0
	bgt _021E625C
	asr r5, r5, #1
_021E625C:
	cmp r2, r5
	bge _021E6262
	add r5, r2, #0
_021E6262:
	add r0, r6, #0
	add r0, #0xd4
	add r1, r5, #0
	bl ov85_021E7644
	add r0, r6, #0
	add r1, r5, #0
	bl ov85_021E78A4
	add r0, sp, #0
	add r1, r5, #0
	bl ov85_021E8530
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	asr r0, r4, #0xb
	lsr r0, r0, #0x14
	add r0, r4, r0
	asr r0, r0, #0xc
	cmp r1, r0
	bne _021E6296
	mov r0, #0x20
	str r0, [r6]
_021E6296:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E629C: .word ov85_021EA7C4
	thumb_func_end ov85_021E6224

