	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E60B8
	.extern ov86_021E6114
	.extern ov86_021E62F4
	.extern ov86_021E64E0
	.extern ov86_021E66D0
	.extern ov86_021E690C
	.extern ov86_021E6A88
	.extern ov86_021E6BA8

	.text

	.text
	thumb_func_start ov86_021E60B8
ov86_021E60B8: ; 0x021E60B8
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #7]
	cmp r1, #6
	bhi _021E610C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E60CE: ; jump table
	.short _021E610C - _021E60CE - 2 ; case 0
	.short _021E60FA - _021E60CE - 2 ; case 1
	.short _021E60DC - _021E60CE - 2 ; case 2
	.short _021E60DC - _021E60CE - 2 ; case 3
	.short _021E60EE - _021E60CE - 2 ; case 4
	.short _021E60E8 - _021E60CE - 2 ; case 5
	.short _021E60F4 - _021E60CE - 2 ; case 6
_021E60DC:
	bl ov86_021E6114
	add r0, r4, #0
	bl ov86_021E62F4
	pop {r4, pc}
_021E60E8:
	bl ov86_021E64E0
	pop {r4, pc}
_021E60EE:
	bl ov86_021E66D0
	pop {r4, pc}
_021E60F4:
	bl ov86_021E690C
	pop {r4, pc}
_021E60FA:
	ldrb r1, [r4, #6]
	cmp r1, #1
	bhi _021E6106
	bl ov86_021E6A88
	pop {r4, pc}
_021E6106:
	bl ov86_021E6BA8
	pop {r4, pc}
_021E610C:
	add r0, r4, #0
	bl ov86_021E690C
	pop {r4, pc}
	thumb_func_end ov86_021E60B8

