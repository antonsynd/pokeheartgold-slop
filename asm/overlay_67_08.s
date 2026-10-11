	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E6080

	.text

	.text
	thumb_func_start ov67_021E6080
ov67_021E6080: ; 0x021E6080
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #4
	bl FontID_Release
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _021E6094
	mov r6, #0xa
	b _021E6096
_021E6094:
	mov r6, #0x23
_021E6096:
	mov r4, #0
	cmp r6, #0
	ble _021E60B2
	add r5, #0x6c
_021E609E:
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r6
	blt _021E609E
_021E60B2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov67_021E6080

