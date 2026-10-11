	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E7258
	.extern ov95_021E7450
	.extern ov95_021E7514

	.text

	.text
	thumb_func_start ov95_021E7258
ov95_021E7258: ; 0x021E7258
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	beq _021E7268
	cmp r1, #1
	beq _021E7278
	b _021E72AE
_021E7268:
	bl ov95_021E7450
	cmp r0, #0
	beq _021E72B2
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _021E72B2
_021E7278:
	bl ov95_021E7514
	cmp r0, #0
	beq _021E72B2
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _021E728A
	bl GF_AssertFail
_021E728A:
	mov r0, #5
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #0
	bl ToggleBgLayer
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x10
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldrb r0, [r4, #0x19]
	pop {r4, pc}
_021E72AE:
	bl GF_AssertFail
_021E72B2:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov95_021E7258

