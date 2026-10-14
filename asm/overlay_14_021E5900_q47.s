#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E6CF8
	.public ov14_021E6F3C
	.public ov14_021E7034
	.extern ov14_021E6070
	.extern ov14_021E690C
	.extern ov14_021E6A3C
	.extern ov14_021E6B48
	.extern ov14_021E6C0C
	.extern ov14_021E6CC8

    .text

	.text
	thumb_func_start ov14_021E6CF8
ov14_021E6CF8: ; 0x021E6CF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	str r2, [sp, #4]
	ldr r2, [r6, #0x34]
	str r1, [sp]
	ldr r0, [r2, #0xc]
	mov r1, #1
	str r0, [sp, #0x14]
	ldr r0, _021E6F38 ; =0x000040C4
	str r1, [r2, r0]
	mov r1, #0
	ldr r2, [sp, #0x14]
	add r0, r1, #0
_021E6D14:
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	add r1, r1, #1
	add r2, #0x20
	cmp r1, #7
	blo _021E6D14
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add r1, #0xec
	str r0, [r1]
	cmp r0, #0xff
	beq _021E6D40
	ldr r1, [sp]
	cmp r1, r0
	beq _021E6D40
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E690C
	cmp r0, #0
	bne _021E6D66
_021E6D40:
	ldr r0, [sp, #0x14]
	mov r1, #0xff
	add r0, #0xe4
	str r1, [r0]
	ldr r0, [sp, #0x14]
	add r0, #0xe8
	str r1, [r0]
	ldr r1, [sp]
	ldr r0, [sp, #0x14]
	str r1, [r0, #4]
	str r1, [r0, #8]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl ov14_021E6B48
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6D66:
	ldr r1, [sp, #0x14]
	ldr r0, [sp]
	add r1, #0xe4
	str r0, [r1]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add r1, #0xe8
	str r0, [r1]
	ldr r0, [r6, #8]
	bl Party_GetCount
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0x80
	tst r0, r1
	beq _021E6E06
	ldr r0, [sp]
	cmp r0, #0x1e
	bhs _021E6DAE
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	str r1, [r0, #4]
	ldr r1, [sp, #4]
	str r1, [r0, #8]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl ov14_021E6B48
	ldr r1, [r6, #0x34]
	ldr r0, _021E6F38 ; =0x000040C4
	mov r2, #0
	str r2, [r1, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6DAE:
	str r0, [sp, #0x10]
	sub r0, #0x1e
	add r5, r0, #1
	str r0, [sp, #0x10]
	cmp r5, #6
	bhs _021E6DE0
	ldr r0, [sp, #0x14]
	lsl r1, r5, #5
	add r4, r0, r1
	mov r7, #1
_021E6DC2:
	add r0, r5, #0
	add r0, #0x1e
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x1d
	str r0, [r4, #8]
	add r0, r6, #0
	add r1, r4, #0
	str r7, [r4, #0xc]
	bl ov14_021E6B48
	add r5, r5, #1
	add r4, #0x20
	cmp r5, #6
	blo _021E6DC2
_021E6DE0:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #5
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	ldr r0, [sp]
	str r0, [r1, #4]
	ldr r0, [sp, #4]
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	ldr r1, [r6, #0x34]
	ldr r0, _021E6F38 ; =0x000040C4
	mov r2, #0
	str r2, [r1, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6E06:
	ldr r0, [sp]
	cmp r0, #0x1e
	bhs _021E6E44
	ldr r0, [sp, #4]
	cmp r0, #0x1e
	bhs _021E6E20
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E6CC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6E20:
	sub r0, #0x1e
	cmp r0, r7
	bhs _021E6E34
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E6CC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6E34:
	add r7, #0x1e
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #0
	bl ov14_021E6CC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6E44:
	ldr r0, [sp, #4]
	cmp r0, #0x1e
	bhs _021E6ED2
	ldr r1, [sp, #4]
	add r0, r6, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E6E68
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E6CC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6E68:
	ldr r0, [sp]
	str r0, [sp, #8]
	sub r0, #0x1e
	add r5, r0, #1
	str r0, [sp, #8]
	cmp r5, r7
	bhs _021E6E9C
	ldr r0, [sp, #0x14]
	lsl r1, r5, #5
	add r4, r0, r1
_021E6E7C:
	add r0, r5, #0
	add r0, #0x1e
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x1d
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl ov14_021E6B48
	add r5, r5, #1
	add r4, #0x20
	cmp r5, r7
	blo _021E6E7C
_021E6E9C:
	ldr r0, [sp, #8]
	lsl r1, r0, #5
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	ldr r0, [sp]
	str r0, [r1, #4]
	ldr r0, [sp, #4]
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	lsl r1, r7, #5
	ldr r0, [sp, #0x14]
	add r7, #0x1d
	add r1, r0, r1
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	str r7, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6ED2:
	sub r0, #0x1e
	cmp r0, r7
	bhs _021E6EE6
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E6CC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6EE6:
	ldr r0, [sp]
	str r0, [sp, #0xc]
	sub r0, #0x1e
	add r5, r0, #1
	str r0, [sp, #0xc]
	cmp r5, r7
	bhs _021E6F1A
	ldr r0, [sp, #0x14]
	lsl r1, r5, #5
	add r4, r0, r1
_021E6EFA:
	add r0, r5, #0
	add r0, #0x1e
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x1d
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl ov14_021E6B48
	add r5, r5, #1
	add r4, #0x20
	cmp r5, r7
	blo _021E6EFA
_021E6F1A:
	ldr r0, [sp, #0xc]
	add r7, #0x1d
	lsl r1, r0, #5
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	ldr r0, [sp]
	str r0, [r1, #4]
	str r7, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6F38: .word 0x000040C4
	thumb_func_end ov14_021E6CF8

	thumb_func_start ov14_021E6F3C
ov14_021E6F3C: ; 0x021E6F3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r2, [sp, #4]
	ldr r2, [r6, #0x34]
	str r1, [sp]
	ldr r0, [r2, #0xc]
	mov r1, #1
	str r0, [sp, #0xc]
	ldr r0, _021E7030 ; =0x000040C4
	str r1, [r2, r0]
	mov r1, #0
	ldr r2, [sp, #0xc]
	add r0, r1, #0
_021E6F58:
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	add r1, r1, #1
	add r2, #0x20
	cmp r1, #7
	blo _021E6F58
	ldr r0, [sp, #4]
	cmp r0, #0xff
	beq _021E6F7A
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E6A3C
	cmp r0, #0
	bne _021E6FA0
_021E6F7A:
	ldr r0, [sp, #0xc]
	mov r1, #0xff
	add r0, #0xe4
	str r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, #0xe8
	str r1, [r0]
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	str r1, [r0, #4]
	str r1, [r0, #8]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E6FA0:
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add r1, #0xe4
	str r0, [r1]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, #0xe8
	str r0, [r1]
	ldr r0, [r6, #8]
	bl Party_GetCount
	add r7, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0x1e
	bhs _021E702C
	ldr r0, [sp]
	str r0, [sp, #8]
	sub r0, #0x1e
	add r5, r0, #1
	str r0, [sp, #8]
	cmp r5, r7
	bhs _021E6FF2
	ldr r0, [sp, #0xc]
	lsl r1, r5, #5
	add r4, r0, r1
_021E6FD2:
	add r0, r5, #0
	add r0, #0x1e
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x1d
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl ov14_021E6C0C
	add r5, r5, #1
	add r4, #0x20
	cmp r5, r7
	blo _021E6FD2
_021E6FF2:
	ldr r0, [sp, #8]
	lsl r1, r0, #5
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp]
	str r0, [r1, #4]
	ldr r0, [sp, #4]
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6C0C
	lsl r1, r7, #5
	ldr r0, [sp, #0xc]
	add r7, #0x1d
	add r1, r0, r1
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	str r7, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6C0C
	ldr r1, [r6, #0x34]
	ldr r0, _021E7030 ; =0x000040C4
	mov r2, #0
	str r2, [r1, r0]
_021E702C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7030: .word 0x000040C4
	thumb_func_end ov14_021E6F3C

	thumb_func_start ov14_021E7034
ov14_021E7034: ; 0x021E7034
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	ldr r2, [r5, #0x34]
	ldr r0, _021E70AC ; =0x000040C4
	add r6, r1, #0
	ldr r4, [r2, #0xc]
	mov r1, #1
	str r1, [r2, r0]
	mov r0, #0
	add r1, r4, #0
	add r3, r0, #0
_021E704C:
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #0xc]
	add r0, r0, #1
	add r1, #0x20
	cmp r0, #7
	blo _021E704C
	cmp r7, #0xff
	beq _021E706C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0xac
	bl ov14_021E6070
	cmp r0, #0
	beq _021E708C
_021E706C:
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0xe4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe8
	str r1, [r0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E6B48
	pop {r3, r4, r5, r6, r7, pc}
_021E708C:
	add r0, r4, #0
	add r0, #0xe4
	str r6, [r0]
	add r4, #0xe8
	str r7, [r4]
	ldr r0, [r5, #8]
	bl Party_GetCount
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x1e
	bl ov14_021E6CC8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E70AC: .word 0x000040C4
	thumb_func_end ov14_021E7034

