	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222CA94

	.text

	thumb_func_start ov80_0222CA94
ov80_0222CA94: ; 0x0222CA94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0209680C
	add r1, r5, #0
	add r1, #0x78
	ldrh r1, [r1]
	add r4, r0, #0
	bl ov80_02239700
	add r5, #0x78
	add r6, r0, #0
	ldrh r1, [r5]
	add r0, r4, #0
	bl ov80_02239734
	cmp r0, #0
	beq _0222CAC6
	add r0, r6, #0
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	bne _0222CACA
_0222CAC6:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222CACA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov80_0222CA94

