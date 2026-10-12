#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E5C74
	.extern ov73_021E72F4
	.extern ov73_021EA52A
	.extern ov73_021EA52B

	.text

	.text
	thumb_func_start ov73_021E5C74
ov73_021E5C74: ; 0x021E5C74
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0xc]
	add r1, #0xc
	cmp r0, #0
	beq _021E5CCE
	ldr r0, [r1, #4]
	ldr r3, [r1, #8]
	lsl r2, r0, #1
	ldr r0, _021E5CD0 ; =ov73_021EA52A
	ldrb r0, [r0, r2]
	cmp r3, r0
	ble _021E5CBE
	mov r0, #0
	str r0, [r1, #8]
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	lsl r3, r2, #1
	ldr r2, _021E5CD4 ; =ov73_021EA52B
	ldrb r2, [r2, r3]
	cmp r2, #0xff
	bne _021E5CA4
	str r0, [r1, #4]
_021E5CA4:
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	lsl r2, r1, #1
	ldr r1, _021E5CD4 ; =ov73_021EA52B
	ldrb r1, [r1, r2]
	mov r2, #0x20
	lsl r1, r1, #5
	add r0, r0, r1
	mov r1, #0
	bl GX_LoadOBJPltt
	b _021E5CC4
_021E5CBE:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_021E5CC4:
	mov r0, #0xde
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov73_021E72F4
_021E5CCE:
	pop {r4, pc}
	.balign 4, 0
_021E5CD0: .word ov73_021EA52A
_021E5CD4: .word ov73_021EA52B
	thumb_func_end ov73_021E5C74

