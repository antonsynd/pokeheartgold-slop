	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7AA4
	.extern _0221A684

	.text

	.text
	thumb_func_start ov00_021E7AA4
ov00_021E7AA4: ; 0x021E7AA4
	push {r3, lr}
	sub sp, #0x10
	ldr r0, _021E7AC8 ; =_0221A684
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021E7AC2
	add r0, sp, #0
	bl VCT_GetVADInfo
	ldr r0, [sp, #4]
	cmp r0, #2
	ble _021E7AC2
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, pc}
_021E7AC2:
	mov r0, #0
	add sp, #0x10
	pop {r3, pc}
	.balign 4, 0
_021E7AC8: .word _0221A684
	thumb_func_end ov00_021E7AA4

