	.include "macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E5A70
	.extern ov109_021E5D08
	.extern ov109_021E7890

	.text

	.text
	thumb_func_start ov109_021E5A70
ov109_021E5A70: ; 0x021E5A70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #8]
	bl MenuInputStateMgr_GetState
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetOptionsAddr
	add r4, r0, #0
	bl Options_GetTextFrameDelay
	add r1, r5, #0
	add r1, #0x22
	strb r0, [r1]
	add r0, r4, #0
	bl Options_GetFrame
	add r1, r5, #0
	add r1, #0x23
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	mov r1, #0xc
	ldrb r6, [r0, #2]
	add r0, r6, #0
	bl _s32_div_f
	ldr r0, _021E5B3C ; =ov109_021E7890
	ldrb r4, [r0, r1]
	add r0, r6, #0
	mov r1, #0xc
	bl _s32_div_f
	strb r0, [r5, #0x19]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r5, #0x1b]
	lsr r0, r4, #2
	strb r0, [r5, #0x1c]
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl Save_PhotoAlbum_Get
	mov r1, #0x7b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	ldr r1, [r5]
	bl PhotoAlbum_LoadAllInUsePhotos
	add r1, r5, #0
	add r1, #0xc8
	str r0, [r1]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl PhotoAlbum_GetNumSaved
	add r1, r5, #0
	add r1, #0xc4
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0xc4
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xc5
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	mov r1, #0xc
	bl _s32_div_f
	strb r0, [r5, #0x1a]
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	mov r1, #0xc
	bl _s32_div_f
	cmp r1, #0
	beq _021E5B26
	ldrb r0, [r5, #0x1a]
	add r0, r0, #1
	strb r0, [r5, #0x1a]
_021E5B26:
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E5B34
	mov r0, #1
	strb r0, [r5, #0x1a]
_021E5B34:
	add r0, r5, #0
	bl ov109_021E5D08
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E5B3C: .word ov109_021E7890
	thumb_func_end ov109_021E5A70

