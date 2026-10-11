#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223D44C
	.public ov70_0223D490
	.public ov70_0223D588
	.extern ov70_02238D84
	.extern ov70_02238E50
	.extern ov70_0223D690
	.extern ov70_0223E01C
	.extern ov70_0223E49C
	.extern ov70_0223E4DC
	.extern ov70_0223E5C8
	.extern ov70_0223E658

	.text

	.text
	thumb_func_start ov70_0223D44C
ov70_0223D44C: ; 0x0223D44C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0223D486
	ldr r0, [r5, #0x24]
	cmp r0, #5
	bne _0223D464
	mov r4, #0x15
	b _0223D46A
_0223D464:
	cmp r0, #6
	bne _0223D46A
	mov r4, #0x11
_0223D46A:
	ldr r0, _0223D48C ; =0x00000F0F
	mov r3, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	str r3, [sp, #4]
	bl ov70_0223E01C
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	bl ov70_02238D84
_0223D486:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223D48C: .word 0x00000F0F
	thumb_func_end ov70_0223D44C

	thumb_func_start ov70_0223D490
ov70_0223D490: ; 0x0223D490
	push {r4, lr}
	sub sp, #8
	ldr r1, _0223D578 ; =0x00000122
	add r4, r0, #0
	ldrh r1, [r4, r1]
	cmp r1, #0x1e
	bne _0223D4B4
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _0223D57C ; =0x000005DC
	bl PlaySE
	add sp, #8
	pop {r4, pc}
_0223D4B4:
	cmp r1, #0x1f
	beq _0223D572
	ldr r0, _0223D57C ; =0x000005DC
	bl PlaySE
	mov r3, #0x12
	lsl r3, r3, #4
	ldr r1, [r4]
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov70_0223E5C8
	cmp r0, #1
	beq _0223D4DE
	cmp r0, #2
	beq _0223D556
	add sp, #8
	pop {r4, pc}
_0223D4DE:
	mov r3, #0x12
	lsl r3, r3, #4
	ldr r1, [r4]
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov70_0223E4DC
	cmp r0, #0
	beq _0223D536
	mov r3, #0x12
	lsl r3, r3, #4
	ldr r1, [r4]
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov70_0223E49C
	add r2, r0, #0
	ldr r0, _0223D580 ; =0x00000B9C
	mov r1, #0
	ldr r0, [r4, r0]
	bl BufferBoxMonNickname
	ldr r0, _0223D584 ; =0x00000F0F
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #1
	str r3, [sp, #4]
	bl ov70_0223E01C
	add r0, r4, #0
	mov r1, #3
	mov r2, #7
	bl ov70_02238D84
	add sp, #8
	pop {r4, pc}
_0223D536:
	ldr r0, _0223D584 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x1a
	mov r3, #0
	str r2, [sp, #4]
	bl ov70_0223E01C
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ov70_02238D84
	add sp, #8
	pop {r4, pc}
_0223D556:
	ldr r0, _0223D584 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x1b
	mov r3, #0
	str r2, [sp, #4]
	bl ov70_0223E01C
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ov70_02238D84
_0223D572:
	add sp, #8
	pop {r4, pc}
	nop
_0223D578: .word 0x00000122
_0223D57C: .word 0x000005DC
_0223D580: .word 0x00000B9C
_0223D584: .word 0x00000F0F
	thumb_func_end ov70_0223D490

	thumb_func_start ov70_0223D588
ov70_0223D588: ; 0x0223D588
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r2, _0223D670 ; =0x00000122
	add r5, r0, #0
	ldrh r3, [r5, r2]
	cmp r3, #0x1e
	bne _0223D5A0
	mov r1, #6
	bl ov70_0223D690
	add sp, #8
	pop {r3, r4, r5, pc}
_0223D5A0:
	cmp r3, #0x1f
	beq _0223D66C
	ldr r1, [r5]
	sub r2, r2, #2
	ldr r0, [r1, #8]
	ldrh r2, [r5, r2]
	ldr r1, [r1, #0xc]
	bl ov70_0223E5C8
	cmp r0, #0
	beq _0223D666
	cmp r0, #1
	beq _0223D5C2
	cmp r0, #2
	beq _0223D666
	add sp, #8
	pop {r3, r4, r5, pc}
_0223D5C2:
	mov r3, #0x12
	lsl r3, r3, #4
	ldr r1, [r5]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov70_0223E49C
	mov r1, #0x35
	lsl r1, r1, #4
	add r3, r5, r1
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	sub r1, #8
	mul r1, r2
	add r1, r3, r1
	add r4, r0, #0
	bl ov70_0223E658
	cmp r0, #0
	beq _0223D65C
	mov r3, #0x12
	lsl r3, r3, #4
	ldr r1, [r5]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov70_0223E4DC
	cmp r0, #0
	beq _0223D63C
	ldr r0, _0223D674 ; =0x00000B9C
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl BufferBoxMonNickname
	ldr r0, _0223D678 ; =0x00000F0F
	mov r3, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #1
	str r3, [sp, #4]
	bl ov70_0223E01C
	add r0, r5, #0
	mov r1, #3
	mov r2, #9
	bl ov70_02238D84
	ldr r0, _0223D67C ; =0x000005DC
	bl PlaySE
	add sp, #8
	pop {r3, r4, r5, pc}
_0223D63C:
	ldr r0, _0223D678 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1a
	mov r3, #0
	str r2, [sp, #4]
	bl ov70_0223E01C
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov70_02238D84
	add sp, #8
	pop {r3, r4, r5, pc}
_0223D65C:
	ldr r0, _0223D67C ; =0x000005DC
	bl PlaySE
	add sp, #8
	pop {r3, r4, r5, pc}
_0223D666:
	ldr r0, _0223D67C ; =0x000005DC
	bl PlaySE
_0223D66C:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223D670: .word 0x00000122
_0223D674: .word 0x00000B9C
_0223D678: .word 0x00000F0F
_0223D67C: .word 0x000005DC
	thumb_func_end ov70_0223D588

