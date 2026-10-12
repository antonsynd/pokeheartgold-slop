	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223BA40
	.public ov57_0223BABC

	.text

	.text
	thumb_func_start ov57_0223BA40
ov57_0223BA40: ; 0x0223BA40
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl Pokepic_GetAttr
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0223BA5C
	mov r0, #0
	pop {r4, pc}
_0223BA5C:
	add r1, #0xc8
	ldr r0, [r4, r1]
	mov r1, #0xc
	bl Pokepic_GetAttr
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	blt _0223BA8E
	add r0, r2, #0
	add r0, #0xc8
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl Pokepic_SetAttr
	mov r0, #0x72
	lsl r0, r0, #2
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, r0]
	add r2, #0xf3
	bl Pokepic_SetAttr
	mov r0, #0
	pop {r4, pc}
_0223BA8E:
	add r2, #0xc8
	ldr r0, [r4, r2]
	mov r1, #0xc
	mov r2, #0x20
	bl Pokepic_AddAttr
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd
	mov r2, #0x20
	bl Pokepic_AddAttr
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200914C
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov57_0223BA40

	thumb_func_start ov57_0223BABC
ov57_0223BABC: ; 0x0223BABC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl Pokepic_GetAttr
	cmp r0, #0
	bne _0223BAD4
	mov r0, #0
	pop {r4, pc}
_0223BAD4:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl Pokepic_GetAttr
	cmp r0, #0
	bgt _0223BB04
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc
	mov r2, #0
	bl Pokepic_SetAttr
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd
	mov r2, #0
	bl Pokepic_SetAttr
	mov r0, #0
	pop {r4, pc}
_0223BB04:
	mov r0, #0x72
	lsl r0, r0, #2
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl Pokepic_AddAttr
	mov r0, #0x72
	lsl r0, r0, #2
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2d
	bl Pokepic_AddAttr
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200914C
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov57_0223BABC

