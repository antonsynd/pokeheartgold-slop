#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F2CD4
	.extern ov112_021F1CC8
	.extern ov112_021F2328
	.extern ov112_021F2B80
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F2CD4
ov112_021F2CD4: ; 0x021F2CD4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	bne _021F2CEC
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021F2CEC:
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1c
	beq _021F2CFC
	cmp r0, #1
	beq _021F2D2E
	cmp r0, #2
	beq _021F2DA8
	b _021F2DCA
_021F2CFC:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021F2DD4 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl BeginNormalPaletteFade
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _021F2DD8 ; =0xFFFF87FF
	and r0, r2
	lsl r2, r2, #0x11
	lsr r2, r2, #0x1c
	add r2, r2, #1
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x11
	orr r0, r2
	str r0, [r4, r1]
	b _021F2DCE
_021F2D2E:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F2DCE
	ldr r0, _021F2DDC ; =0x0000013D
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021F2D42
	mov r1, #1
	b _021F2D44
_021F2D42:
	mov r1, #0
_021F2D44:
	ldr r0, [r4, #0x70]
	bl ManagedSprite_SetDrawFlag
	ldr r0, _021F2DDC ; =0x0000013D
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _021F2D5C
	mov r1, #1
	b _021F2D5E
_021F2D5C:
	mov r1, #0
_021F2D5E:
	ldr r0, [r4, #0x74]
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	mov r1, #0
	bl ov112_021F1CC8
	add r0, r4, #0
	bl ov112_021F2328
	add r0, r4, #0
	bl ov112_021F2B80
	mov r0, #2
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	ldr r3, _021F2DD4 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	bl BeginNormalPaletteFade
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _021F2DD8 ; =0xFFFF87FF
	and r0, r2
	lsl r2, r2, #0x11
	lsr r2, r2, #0x1c
	add r2, r2, #1
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x11
	orr r0, r2
	str r0, [r4, r1]
	b _021F2DCE
_021F2DA8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F2DCE
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _021F2DD8 ; =0xFFFF87FF
	add sp, #0xc
	and r0, r2
	str r0, [r4, r1]
	ldr r2, [r4, r1]
	ldr r0, _021F2DE0 ; =0xFFFFFBFF
	and r0, r2
	str r0, [r4, r1]
	mov r0, #1
	pop {r3, r4, pc}
_021F2DCA:
	bl GF_AssertFail
_021F2DCE:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021F2DD4: .word 0x00007FFF
_021F2DD8: .word 0xFFFF87FF
_021F2DDC: .word 0x0000013D
_021F2DE0: .word 0xFFFFFBFF
	thumb_func_end ov112_021F2CD4

