	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8CA4
	.extern ov102_021E8798
	.extern ov102_021E8F14

	.text

	.text
	thumb_func_start ov102_021E8CA4
ov102_021E8CA4: ; 0x021E8CA4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x62
	ldrh r2, [r0]
	ldr r0, _021E8D18 ; =0x0000FFFF
	cmp r2, r0
	bne _021E8CBC
	add r0, r4, #0
	add r0, #0x54
	bl ov102_021E8798
	add r2, r0, #0
_021E8CBC:
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bne _021E8CD4
	add r1, r4, #0
	add r1, #0x50
	ldrh r1, [r1]
	bl sub_02091C60
	b _021E8CDE
_021E8CD4:
	add r1, r4, #0
	add r1, #0x50
	ldrh r1, [r1]
	bl sub_02091CAC
_021E8CDE:
	add r2, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E8CF0
	cmp r0, #1
	beq _021E8CF4
	cmp r0, #2
	beq _021E8D02
	b _021E8D10
_021E8CF0:
	strh r2, [r4, #0x10]
	b _021E8D10
_021E8CF4:
	add r0, r4, #0
	add r0, #0x4e
	ldrh r0, [r0]
	lsl r0, r0, #1
	add r0, r4, r0
	strh r2, [r0, #0x10]
	b _021E8D10
_021E8D02:
	add r1, r4, #0
	add r1, #0x4e
	ldrh r1, [r1]
	add r0, r4, #0
	add r0, #8
	bl MailMsg_SetFieldI
_021E8D10:
	add r0, r4, #0
	bl ov102_021E8F14
	pop {r4, pc}
	.balign 4, 0
_021E8D18: .word 0x0000FFFF
	thumb_func_end ov102_021E8CA4

