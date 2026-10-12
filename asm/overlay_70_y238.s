#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223EF38
	.public ov70_0223EFB8
	.extern ov70_02238D84
	.extern ov70_0223E8E8
	.extern ov70_0223F3D8
	.extern ov70_02242144

	.text

	.text
	thumb_func_start ov70_0223EF38
ov70_0223EF38: ; 0x0223EF38
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0223EFA8 ; =0x000011A8
	ldr r0, [r4, r0]
	bl ov70_02242144
	cmp r0, #2
	bhi _0223EF58
	cmp r0, #0
	beq _0223EF70
	cmp r0, #1
	beq _0223EF70
	cmp r0, #2
	beq _0223EF70
	b _0223EFA0
_0223EF58:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0223EFA0
	ldr r0, _0223EFAC ; =0x00000F18
	mov r1, #0
	add r0, r4, r0
	bl ClearFrameAndWindow2
	mov r0, #0
	str r0, [r4, #0x2c]
	b _0223EFA0
_0223EF70:
	ldr r2, _0223EFB0 ; =0x00000B86
	add r0, r0, #1
	strb r0, [r4, r2]
	mov r1, #0xa
	str r1, [r4, #0x2c]
	sub r0, r2, #2
	ldrsh r0, [r4, r0]
	ldr r3, _0223EFB4 ; =0x00001058
	sub r1, #0xb
	str r0, [sp]
	ldrsb r0, [r4, r2]
	add r3, r4, r3
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0x1a
	add r1, #0x1e
	add r2, #0x16
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl ov70_0223F3D8
_0223EFA0:
	mov r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223EFA8: .word 0x000011A8
_0223EFAC: .word 0x00000F18
_0223EFB0: .word 0x00000B86
_0223EFB4: .word 0x00001058
	thumb_func_end ov70_0223EF38

	thumb_func_start ov70_0223EFB8
ov70_0223EFB8: ; 0x0223EFB8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223EFDC ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xb
	mov r2, #1
	mov r3, #0
	bl ov70_0223E8E8
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0xb
	bl ov70_02238D84
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223EFDC: .word 0x00000F0F
	thumb_func_end ov70_0223EFB8

