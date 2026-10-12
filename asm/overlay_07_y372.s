	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02224008
	.extern ov07_0221C410
	.extern ov07_0221C468
	.extern ov07_0221C470
	.extern ov07_0221C4A8
	.extern ov07_0221FA04
	.extern ov07_0221FA48
	.extern ov07_0221FAB0
	.extern ov07_02223F5C
	.extern ov07_0223197C
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_02224008
ov07_02224008: ; 0x02224008
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x20
	add r4, r0, #0
	bl ov07_022324D8
	add r6, r0, #0
	str r4, [r6]
	mov r1, #0
	add r0, r4, #0
	str r1, [r6, #4]
	bl ov07_0221C4A8
	ldr r2, _022241D0 ; =0x00000802
	cmp r0, r2
	bgt _02224042
	bge _022240C8
	cmp r0, #8
	bgt _0222403C
	cmp r0, #2
	blt _0222403A
	beq _0222405A
	cmp r0, #4
	beq _0222406C
	cmp r0, #8
	beq _02224092
_0222403A:
	b _02224180
_0222403C:
	cmp r0, #0x10
	beq _022240A4
	b _02224180
_02224042:
	add r1, r2, #6
	cmp r0, r1
	bgt _02224052
	bge _02224124
	add r1, r2, #2
	cmp r0, r1
	beq _022240F8
	b _02224180
_02224052:
	add r2, #0xe
	cmp r0, r2
	beq _02224154
	b _02224180
_0222405A:
	add r0, r4, #0
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r6]
	bl ov07_0221FA48
	str r0, [r6, #4]
	b _02224184
_0222406C:
	add r0, r4, #0
	bl ov07_0221FAB0
	cmp r0, #1
	beq _02224078
	b _02224184
_02224078:
	ldr r0, [r6]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r6]
	bl ov07_0223197C
	add r1, r0, #0
	ldr r0, [r6]
	bl ov07_0221FA48
	str r0, [r6, #4]
	b _02224184
_02224092:
	add r0, r4, #0
	bl ov07_0221C470
	add r1, r0, #0
	ldr r0, [r6]
	bl ov07_0221FA48
	str r0, [r6, #4]
	b _02224184
_022240A4:
	add r0, r4, #0
	bl ov07_0221FAB0
	cmp r0, #1
	bne _02224184
	ldr r0, [r6]
	bl ov07_0221C470
	add r1, r0, #0
	ldr r0, [r6]
	bl ov07_0223197C
	add r1, r0, #0
	ldr r0, [r6]
	bl ov07_0221FA48
	str r0, [r6, #4]
	b _02224184
_022240C8:
	mov r7, #0xff
	mov r5, #0
_022240CC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_0221FA04
	cmp r0, #0
	beq _022240DC
	cmp r0, #2
	bne _022240E0
_022240DC:
	add r7, r5, #0
	b _022240E6
_022240E0:
	add r5, r5, #1
	cmp r5, #4
	blt _022240CC
_022240E6:
	cmp r7, #0xff
	bne _022240EC
	mov r7, #0
_022240EC:
	ldr r0, [r6]
	add r1, r7, #0
	bl ov07_0221FA48
	str r0, [r6, #4]
	b _02224184
_022240F8:
	mov r7, #0xff
	mov r5, #0
_022240FC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_0221FA04
	cmp r0, #4
	bne _0222410C
	add r7, r5, #0
	b _02224112
_0222410C:
	add r5, r5, #1
	cmp r5, #4
	blt _022240FC
_02224112:
	cmp r7, #0xff
	bne _02224118
	mov r7, #0
_02224118:
	ldr r0, [r6]
	add r1, r7, #0
	bl ov07_0221FA48
	str r0, [r6, #4]
	b _02224184
_02224124:
	mov r7, #0xff
	mov r5, #0
_02224128:
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_0221FA04
	cmp r0, #1
	beq _02224138
	cmp r0, #3
	bne _0222413C
_02224138:
	add r7, r5, #0
	b _02224142
_0222413C:
	add r5, r5, #1
	cmp r5, #4
	blt _02224128
_02224142:
	cmp r7, #0xff
	bne _02224148
	mov r7, #0
_02224148:
	ldr r0, [r6]
	add r1, r7, #0
	bl ov07_0221FA48
	str r0, [r6, #4]
	b _02224184
_02224154:
	mov r7, #0xff
	mov r5, #0
_02224158:
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_0221FA04
	cmp r0, #5
	bne _02224168
	add r7, r5, #0
	b _0222416E
_02224168:
	add r5, r5, #1
	cmp r5, #4
	blt _02224158
_0222416E:
	cmp r7, #0xff
	bne _02224174
	mov r7, #0
_02224174:
	ldr r0, [r6]
	add r1, r7, #0
	bl ov07_0221FA48
	str r0, [r6, #4]
	b _02224184
_02224180:
	bl GF_AssertFail
_02224184:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _02224192
	add r0, r6, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
_02224192:
	add r0, r4, #0
	mov r1, #1
	bl ov07_0221C4A8
	str r0, [r6, #0x10]
	add r0, r4, #0
	mov r1, #2
	bl ov07_0221C4A8
	str r0, [r6, #0xc]
	add r0, r4, #0
	mov r1, #3
	bl ov07_0221C4A8
	str r0, [r6, #0x14]
	add r0, r4, #0
	mov r1, #4
	bl ov07_0221C4A8
	str r0, [r6, #0x18]
	add r0, r4, #0
	mov r1, #5
	bl ov07_0221C4A8
	str r0, [r6, #0x1c]
	ldr r0, [r6]
	ldr r1, _022241D4 ; =ov07_02223F5C
	add r2, r6, #0
	bl ov07_0221C410
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022241D0: .word 0x00000802
_022241D4: .word ov07_02223F5C
	thumb_func_end ov07_02224008

