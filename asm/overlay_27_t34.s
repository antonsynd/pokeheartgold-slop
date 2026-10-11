	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225C06C
	.public ov27_0225C088
	.public ov27_0225C0E0
	.public ov27_0225C10C
	.public ov27_0225C170
	.public ov27_0225C1AC
	.extern ov27_0225BF84
	.extern ov27_0225BFCC
	.extern ov27_0225C044
	.extern ov27_0225CF94
	.extern ov27_0225CFC8

	.text

	.text
	thumb_func_start ov27_0225C06C
ov27_0225C06C: ; 0x0225C06C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl FieldSystem_GetParkBallCount
	add r3, r0, #0
	mov r1, #0xe
	lsl r3, r3, #0x10
	add r0, r4, #0
	add r2, r1, #0
	lsr r3, r3, #0x10
	bl ov27_0225BF84
	pop {r4, pc}
	thumb_func_end ov27_0225C06C

	thumb_func_start ov27_0225C088
ov27_0225C088: ; 0x0225C088
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl FieldSystem_BugContest_Get
	add r4, r0, #0
	bne _0225C09A
	bl GF_AssertFail
_0225C09A:
	add r0, r4, #0
	bl BugContest_GetSportBallsAddr
	add r3, r0, #0
	mov r1, #0xe
	ldrh r3, [r3]
	add r0, r5, #0
	add r2, r1, #0
	bl ov27_0225BF84
	ldrb r0, [r4, #0x17]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225C0BE
	add r0, r5, #0
	add r1, r4, #0
	bl ov27_0225BFCC
_0225C0BE:
	ldrb r1, [r4, #0x17]
	mov r0, #0xea
	lsl r0, r0, #2
	lsl r1, r1, #0x1f
	ldr r0, [r5, r0]
	lsr r1, r1, #0x1f
	bl Sprite_SetDrawFlag
	ldr r0, _0225C0DC ; =0x0000051A
	mov r1, #0
	strb r1, [r5, r0]
	sub r0, #0x7a
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_0225C0DC: .word 0x0000051A
	thumb_func_end ov27_0225C088

	thumb_func_start ov27_0225C0E0
ov27_0225C0E0: ; 0x0225C0E0
	push {r3, lr}
	ldr r1, _0225C108 ; =0x0000051C
	ldr r1, [r0, r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _0225C0F4
	bl ov27_0225C044
	pop {r3, pc}
_0225C0F4:
	cmp r1, #2
	bne _0225C0FE
	bl ov27_0225C088
	pop {r3, pc}
_0225C0FE:
	cmp r1, #3
	bne _0225C106
	bl ov27_0225C06C
_0225C106:
	pop {r3, pc}
	.balign 4, 0
_0225C108: .word 0x0000051C
	thumb_func_end ov27_0225C0E0

	thumb_func_start ov27_0225C10C
ov27_0225C10C: ; 0x0225C10C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _0225C160 ; =ov27_0225CFC8
	mov r4, #0
	add r6, r5, #0
_0225C116:
	ldr r0, _0225C164 ; =0x0000051C
	ldr r0, [r5, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	lsl r0, r0, #3
	add r0, r7, r0
	ldrb r1, [r4, r0]
	cmp r1, #0xd
	beq _0225C14C
	cmp r1, #7
	bge _0225C13A
	ldr r0, [r5, #0x10]
	bl FieldSystem_ShouldDrawStartMenuIcon
	ldr r1, _0225C168 ; =0x00000514
	add r2, r5, r4
	strb r0, [r2, r1]
	b _0225C14C
_0225C13A:
	ldr r0, _0225C16C ; =ov27_0225CF94
	lsl r1, r1, #2
	add r0, r0, r1
	ldrh r0, [r0, #2]
	add r1, r5, r4
	lsl r0, r0, #0x10
	lsr r2, r0, #0x1f
	ldr r0, _0225C168 ; =0x00000514
	strb r2, [r1, r0]
_0225C14C:
	ldr r0, _0225C168 ; =0x00000514
	add r1, r5, r4
	ldrb r1, [r1, r0]
	sub r0, #0xa4
	add r4, r4, #1
	strb r1, [r6, r0]
	add r6, #8
	cmp r4, #7
	blt _0225C116
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225C160: .word ov27_0225CFC8
_0225C164: .word 0x0000051C
_0225C168: .word 0x00000514
_0225C16C: .word ov27_0225CF94
	thumb_func_end ov27_0225C10C

	thumb_func_start ov27_0225C170
ov27_0225C170: ; 0x0225C170
	push {r3, r4, r5, lr}
	mov r4, #0
	sub r2, r1, #7
	mvn r4, r4
	cmp r2, #1
	bhi _0225C180
	add r0, r1, #0
	pop {r3, r4, r5, pc}
_0225C180:
	add r3, r1, #1
	mov r5, #0
	cmp r3, #0
	ble _0225C19C
	mov r1, #0x47
	lsl r1, r1, #4
_0225C18C:
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _0225C194
	add r4, r4, #1
_0225C194:
	add r5, r5, #1
	add r0, #8
	cmp r5, r3
	blt _0225C18C
_0225C19C:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0225C1A8
	bl GF_AssertFail
_0225C1A8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov27_0225C170

	thumb_func_start ov27_0225C1AC
ov27_0225C1AC: ; 0x0225C1AC
	push {r4, r5, r6, r7}
	mov r5, #0
	mov r6, #0
	mov r2, #0x47
	mvn r5, r5
	add r4, r6, #0
	add r7, r0, #0
	lsl r2, r2, #4
_0225C1BC:
	ldrb r3, [r7, r2]
	cmp r3, #0
	beq _0225C1CC
	cmp r1, r6
	bne _0225C1CA
	add r5, r4, #0
	b _0225C1D4
_0225C1CA:
	add r6, r6, #1
_0225C1CC:
	add r4, r4, #1
	add r7, #8
	cmp r4, #7
	blt _0225C1BC
_0225C1D4:
	mov r1, #0
	mvn r1, r1
	cmp r5, r1
	bne _0225C1E4
	ldr r0, [r0, #0x10]
	mov r5, #0
	add r0, #0xd3
	strb r5, [r0]
_0225C1E4:
	add r0, r5, #0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov27_0225C1AC

