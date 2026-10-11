	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E70F4
	.extern _0221A680
	.extern ov00_021E70E0

	.text

	.text
	thumb_func_start ov00_021E70F4
ov00_021E70F4: ; 0x021E70F4
	push {r3, lr}
	ldr r0, _021E7124 ; =_0221A680
	ldr r2, [r0]
	ldr r0, _021E7128 ; =0x000010E0
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _021E710E
	mov r1, #1
	strb r1, [r2, r0]
	ldr r0, _021E712C ; =ov00_021E70E0
	mov r1, #0
	bl ov00_021F12F0
_021E710E:
	ldr r0, _021E7124 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E7128 ; =0x000010E0
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021E711E
	mov r0, #1
	pop {r3, pc}
_021E711E:
	mov r0, #0
	pop {r3, pc}
	nop
_021E7124: .word _0221A680
_021E7128: .word 0x000010E0
_021E712C: .word ov00_021E70E0
	thumb_func_end ov00_021E70F4

