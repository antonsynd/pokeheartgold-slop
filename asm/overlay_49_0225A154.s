	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_0225A154
ov49_0225A154: ; 0x0225A154
	mov r1, #0xce
	lsl r1, r1, #2
	ldr r3, _0225A160 ; =ov49_0225AF04
	add r0, r0, r1
	bx r3
	nop
_0225A160: .word ov49_0225AF04
	thumb_func_end ov49_0225A154

	thumb_func_start ov49_0225A164
ov49_0225A164: ; 0x0225A164
	mov r2, #0xce
	lsl r2, r2, #2
	ldr r3, _0225A170 ; =ov49_0225AF08
	add r0, r0, r2
	bx r3
	nop
_0225A170: .word ov49_0225AF08
	thumb_func_end ov49_0225A164

	thumb_func_start ov49_0225A174
ov49_0225A174: ; 0x0225A174
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r3, [sp]
	mov r0, #0x77
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0xce
	lsl r0, r0, #2
	add r4, r2, #0
	add r0, r5, r0
	add r5, #0x3c
	add r2, r5, #0
	add r3, r4, #0
	bl ov49_0225AF30
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A174

	thumb_func_start ov49_0225A1A4
ov49_0225A1A4: ; 0x0225A1A4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r3, [sp]
	mov r0, #0x77
	str r0, [sp, #4]
	add r4, r2, #0
	add r0, sp, #0x10
	ldrb r2, [r0, #0x10]
	add r3, r4, #0
	str r2, [sp, #8]
	ldrb r2, [r0, #0x14]
	str r2, [sp, #0xc]
	ldrb r0, [r0, #0x18]
	str r0, [sp, #0x10]
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r5, r0
	add r5, #0x3c
	add r2, r5, #0
	bl ov49_0225AF30
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov49_0225A1A4

	thumb_func_start ov49_0225A1D4
ov49_0225A1D4: ; 0x0225A1D4
	mov r1, #0xce
	lsl r1, r1, #2
	ldr r3, _0225A1E0 ; =ov49_0225AFD8
	add r0, r0, r1
	bx r3
	nop
_0225A1E0: .word ov49_0225AFD8
	thumb_func_end ov49_0225A1D4

	thumb_func_start ov49_0225A1E4
ov49_0225A1E4: ; 0x0225A1E4
	mov r3, #0xce
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225A1F0 ; =ov49_0225B014
	bx r3
	nop
_0225A1F0: .word ov49_0225B014
	thumb_func_end ov49_0225A1E4

	thumb_func_start ov49_0225A1F4
ov49_0225A1F4: ; 0x0225A1F4
	mov r2, #0xce
	lsl r2, r2, #2
	ldr r3, _0225A200 ; =ov49_0225B06C
	add r0, r0, r2
	bx r3
	nop
_0225A200: .word ov49_0225B06C
	thumb_func_end ov49_0225A1F4

	thumb_func_start ov49_0225A204
ov49_0225A204: ; 0x0225A204
	push {r4, r5, lr}
	sub sp, #0xc
	str r2, [sp]
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r4, r1, #0
	mov r2, #0x77
	str r0, [sp, #8]
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r5, r0
	add r5, #0x3c
	add r1, r5, #0
	add r3, r4, #0
	bl ov49_0225B0E0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov49_0225A204

	thumb_func_start ov49_0225A22C
ov49_0225A22C: ; 0x0225A22C
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r3, _0225A238 ; =ov49_0225B124
	add r0, r0, r1
	bx r3
	nop
_0225A238: .word ov49_0225B124
	thumb_func_end ov49_0225A22C

	thumb_func_start ov49_0225A23C
ov49_0225A23C: ; 0x0225A23C
	push {r4, lr}
	mov r4, #0xf1
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov49_0225B148
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A23C

	thumb_func_start ov49_0225A24C
ov49_0225A24C: ; 0x0225A24C
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	mov r4, #0xf1
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov49_0225B178
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov49_0225A24C

	thumb_func_start ov49_0225A264
ov49_0225A264: ; 0x0225A264
	push {lr}
	sub sp, #0x14
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r0, #0x77
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	mov r0, #0xd
	mov r1, #0xce
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	add r0, r2, r1
	add r1, #0x6c
	add r1, r2, r1
	add r2, #0x3c
	bl ov49_0225AF30
	add sp, #0x14
	pop {pc}
	.balign 4, 0
	thumb_func_end ov49_0225A264

	thumb_func_start ov49_0225A294
ov49_0225A294: ; 0x0225A294
	push {lr}
	sub sp, #0x14
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x77
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	mov r0, #0xd
	mov r1, #0xce
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	add r0, r2, r1
	add r1, #0x6c
	add r1, r2, r1
	add r2, #0x3c
	mov r3, #0
	bl ov49_0225AF30
	add sp, #0x14
	pop {pc}
	thumb_func_end ov49_0225A294

	thumb_func_start ov49_0225A2C4
ov49_0225A2C4: ; 0x0225A2C4
	push {r3, lr}
	mov r1, #0xce
	lsl r1, r1, #2
	add r0, r0, r1
	bl ov49_0225AFD8
	cmp r0, #0
	beq _0225A2EA
	cmp r0, #1
	beq _0225A2E6
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0225A2EE
	ldr r0, _0225A2F4 ; =0x000005DC
	bl PlaySE
_0225A2E6:
	mov r0, #1
	pop {r3, pc}
_0225A2EA:
	mov r0, #0
	pop {r3, pc}
_0225A2EE:
	mov r0, #2
	pop {r3, pc}
	nop
_0225A2F4: .word 0x000005DC
	thumb_func_end ov49_0225A2C4

	thumb_func_start ov49_0225A2F8
ov49_0225A2F8: ; 0x0225A2F8
	mov r1, #0xce
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0
	ldr r3, _0225A308 ; =ov49_0225B014
	add r2, r1, #0
	bx r3
	nop
_0225A308: .word ov49_0225B014
	thumb_func_end ov49_0225A2F8

	thumb_func_start ov49_0225A30C
ov49_0225A30C: ; 0x0225A30C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225A318 ; =ov49_0225B388
	bx r3
	nop
_0225A318: .word ov49_0225B388
	thumb_func_end ov49_0225A30C

	thumb_func_start ov49_0225A31C
ov49_0225A31C: ; 0x0225A31C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0xb7
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov49_0225B3A8
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A31C

	thumb_func_start ov49_0225A334
ov49_0225A334: ; 0x0225A334
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x77
	add r4, r1, #0
	add r7, r2, #0
	bl PlayerProfile_New
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	bl ov45_0222A53C
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bne _0225A356
	bl ov45_0222A5C0
	b _0225A35C
_0225A356:
	add r1, r4, #0
	bl ov45_0222A578
_0225A35C:
	add r1, r6, #0
	mov r2, #0x77
	bl ov45_0222A844
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov49_0225B3C8
	add r0, r6, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A334

	thumb_func_start ov49_0225A37C
ov49_0225A37C: ; 0x0225A37C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225A388 ; =ov49_0225B3D8
	bx r3
	nop
_0225A388: .word ov49_0225B3D8
	thumb_func_end ov49_0225A37C

	thumb_func_start ov49_0225A38C
ov49_0225A38C: ; 0x0225A38C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225A398 ; =ov49_0225B3E8
	bx r3
	nop
_0225A398: .word ov49_0225B3E8
	thumb_func_end ov49_0225A38C

	thumb_func_start ov49_0225A39C
ov49_0225A39C: ; 0x0225A39C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225A3A8 ; =ov49_0225B3F8
	bx r3
	nop
_0225A3A8: .word ov49_0225B3F8
	thumb_func_end ov49_0225A39C

	thumb_func_start ov49_0225A3AC
ov49_0225A3AC: ; 0x0225A3AC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225A3B8 ; =BufferJPGreeting
	bx r3
	nop
_0225A3B8: .word BufferJPGreeting
	thumb_func_end ov49_0225A3AC

	thumb_func_start ov49_0225A3BC
ov49_0225A3BC: ; 0x0225A3BC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225A3C8 ; =BufferENGreeting
	bx r3
	nop
_0225A3C8: .word BufferENGreeting
	thumb_func_end ov49_0225A3BC

	thumb_func_start ov49_0225A3CC
ov49_0225A3CC: ; 0x0225A3CC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225A3D8 ; =BufferFRGreeting
	bx r3
	nop
_0225A3D8: .word BufferFRGreeting
	thumb_func_end ov49_0225A3CC

	thumb_func_start ov49_0225A3DC
ov49_0225A3DC: ; 0x0225A3DC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225A3E8 ; =BufferITGreeting
	bx r3
	nop
_0225A3E8: .word BufferITGreeting
	thumb_func_end ov49_0225A3DC

	thumb_func_start ov49_0225A3EC
ov49_0225A3EC: ; 0x0225A3EC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225A3F8 ; =BufferDEGreeting
	bx r3
	nop
_0225A3F8: .word BufferDEGreeting
	thumb_func_end ov49_0225A3EC

	thumb_func_start ov49_0225A3FC
ov49_0225A3FC: ; 0x0225A3FC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225A408 ; =BufferSPGreeting
	bx r3
	nop
_0225A408: .word BufferSPGreeting
	thumb_func_end ov49_0225A3FC

	thumb_func_start ov49_0225A40C
ov49_0225A40C: ; 0x0225A40C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl ov45_0222D7C0
	add r2, r0, #0
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl BufferTypeName
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225A40C

	thumb_func_start ov49_0225A428
ov49_0225A428: ; 0x0225A428
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	add r6, r2, #0
	bl ov49_0225B8F8
	cmp r4, r0
	bne _0225A468
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov49_0225B8FC
	cmp r0, #1
	bne _0225A468
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov49_0225B934
	cmp r0, #0
	bne _0225A468
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov49_0225B928
	cmp r6, r0
	beq _0225A476
_0225A468:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	add r2, r6, #0
	bl ov49_0225B89C
_0225A476:
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_0225A428

	thumb_func_start ov49_0225A478
ov49_0225A478: ; 0x0225A478
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r3, r0
	add r3, #0x3c
	add r2, r1, #0
	add r1, r3, #0
	mov r3, #0x77
	bl ov49_0225B8A8
	pop {r3, pc}
	thumb_func_end ov49_0225A478

	thumb_func_start ov49_0225A490
ov49_0225A490: ; 0x0225A490
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B8FC
	cmp r0, #0
	beq _0225A4CC
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B8F8
	add r1, r0, #0
	ldr r0, [r4, #0x34]
	bl ov45_0222A578
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [sp]
	add r0, r4, r1
	add r1, #8
	add r1, r4, r1
	add r4, #0x3c
	add r2, r4, #0
	mov r3, #0x77
	bl ov49_0225BEA0
_0225A4CC:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov49_0225A490

	thumb_func_start ov49_0225A4D0
ov49_0225A4D0: ; 0x0225A4D0
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225A4DC ; =ov49_0225B8E0
	add r0, r0, r1
	bx r3
	nop
_0225A4DC: .word ov49_0225B8E0
	thumb_func_end ov49_0225A4D0

	thumb_func_start ov49_0225A4E0
ov49_0225A4E0: ; 0x0225A4E0
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225A4EC ; =ov49_0225B8F8
	add r0, r0, r1
	bx r3
	nop
_0225A4EC: .word ov49_0225B8F8
	thumb_func_end ov49_0225A4E0

	thumb_func_start ov49_0225A4F0
ov49_0225A4F0: ; 0x0225A4F0
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225A4FC ; =ov49_0225B8FC
	add r0, r0, r1
	bx r3
	nop
_0225A4FC: .word ov49_0225B8FC
	thumb_func_end ov49_0225A4F0

	thumb_func_start ov49_0225A500
ov49_0225A500: ; 0x0225A500
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225A50C ; =ov49_0225B914
	add r0, r0, r1
	bx r3
	nop
_0225A50C: .word ov49_0225B914
	thumb_func_end ov49_0225A500

	thumb_func_start ov49_0225A510
ov49_0225A510: ; 0x0225A510
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225A51C ; =ov49_0225B8EC
	add r0, r0, r1
	bx r3
	nop
_0225A51C: .word ov49_0225B8EC
	thumb_func_end ov49_0225A510

	thumb_func_start ov49_0225A520
ov49_0225A520: ; 0x0225A520
	mov r2, #0xf7
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	ldr r3, _0225A52C ; =ov49_02268968
	mov r2, #1
	bx r3
	.balign 4, 0
_0225A52C: .word ov49_02268968
	thumb_func_end ov49_0225A520

	thumb_func_start ov49_0225A530
ov49_0225A530: ; 0x0225A530
	ldr r1, _0225A538 ; =0x0000018A
	mov r2, #1
	strh r2, [r0, r1]
	bx lr
	.balign 4, 0
_0225A538: .word 0x0000018A
	thumb_func_end ov49_0225A530

	thumb_func_start ov49_0225A53C
ov49_0225A53C: ; 0x0225A53C
	mov r2, #0x61
	lsl r2, r2, #2
	ldr r3, _0225A548 ; =ov49_0225BA34
	add r0, r0, r2
	bx r3
	nop
_0225A548: .word ov49_0225BA34
	thumb_func_end ov49_0225A53C

	thumb_func_start ov49_0225A54C
ov49_0225A54C: ; 0x0225A54C
	mov r1, #0xa6
	lsl r1, r1, #2
	ldr r3, _0225A558 ; =ov49_0225CB68
	add r0, r0, r1
	bx r3
	nop
_0225A558: .word ov49_0225CB68
	thumb_func_end ov49_0225A54C

	thumb_func_start ov49_0225A55C
ov49_0225A55C: ; 0x0225A55C
	mov r1, #0xf6
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	mov r2, #0
	str r2, [r0, r1]
	add r0, r3, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225A55C

	thumb_func_start ov49_0225A56C
ov49_0225A56C: ; 0x0225A56C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0225A57A
	bl GF_AssertFail
_0225A57A:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl ov45_0222A578
	bl ov45_0222AAC8
	add r6, r0, #0
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl ov49_022653C0
	ldr r0, [r5, #0x34]
	bl ov45_0222A53C
	cmp r4, r0
	bne _0225A5A8
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	bl ov45_0222AD70
_0225A5A8:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A56C

	thumb_func_start ov49_0225A5AC
ov49_0225A5AC: ; 0x0225A5AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0225A5BA
	bl GF_AssertFail
_0225A5BA:
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov49_022653F0
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225A5AC

	thumb_func_start ov49_0225A5C8
ov49_0225A5C8: ; 0x0225A5C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225E3AC
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_02258BE0
	add r4, #0x3c
	add r0, r4, #0
	bl ov49_0225A840
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A5C8

	thumb_func_start ov49_0225A5EC
ov49_0225A5EC: ; 0x0225A5EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x14]
	ldr r0, _0225A798 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0225A79C ; =0x04001050
	add r6, r2, #0
	strh r1, [r0]
	mov r0, #0x20
	add r1, r6, #0
	bl GF_CreateVramTransferManager
	ldr r0, _0225A7A0 ; =ov49_022697CC
	bl GfGfx_SetBanks
	ldr r0, _0225A7A4 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #0
	add r1, r0, #0
	bl BG_SetMaskColor
	ldr r0, _0225A7A8 ; =ov49_02269724
	bl SetBothScreensModesAndDisable
	add r0, r6, #0
	bl BgConfig_Alloc
	str r0, [r5]
	mov r0, #0
	ldr r7, _0225A7AC ; =ov49_0226981C
	ldr r4, _0225A7B0 ; =ov49_02269734
	str r0, [sp, #0x18]
_0225A636:
	ldr r1, [r4]
	ldr r0, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r7, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4]
	mov r1, #0x20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	add r3, r6, #0
	bl BG_ClearCharDataRange
	ldr r1, [r4]
	ldr r0, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	ldr r0, [sp, #0x18]
	add r7, #0x1c
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0225A636
	ldr r0, [sp, #0x14]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0
	mov r1, #0xa0
	add r2, r6, #0
	bl LoadFontPal0
	mov r0, #0
	mov r1, #0x80
	add r2, r6, #0
	bl LoadFontPal1
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r5]
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl LoadUserFrameGfx1
	mov r1, #1
	str r4, [sp]
	str r6, [sp, #4]
	ldr r0, [r5]
	add r2, r1, #0
	add r3, r1, #0
	bl LoadUserFrameGfx2
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	mov r1, #1
	mov r2, #0x1f
	mov r3, #2
	bl sub_0200EC0C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xd1
	mov r1, #0x5a
	mov r2, #0
	mov r3, #0x40
	str r6, [sp, #4]
	bl GfGfxLoader_GXLoadPal
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r6, [sp, #0x10]
	bl OamManager_Create
	ldr r0, _0225A7B4 ; =ov49_02269744
	ldr r2, _0225A7B8 ; =0x00100010
	mov r1, #0x10
	bl ObjCharTransfer_InitEx
	mov r0, #0x18
	add r1, r6, #0
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	mov r0, #1
	mov r1, #0x10
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	bl sub_0203A880
	add r1, r5, #0
	mov r0, #0x18
	add r1, #8
	add r2, r6, #0
	bl G2dRenderer_Init
	str r0, [r5, #4]
	add r0, r5, #0
	mov r2, #1
	add r0, #8
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r7, #0
	add r4, r5, #0
_0225A742:
	mov r0, #0x18
	add r1, r7, #0
	add r2, r6, #0
	bl Create2DGfxResObjMan
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #4
	blt _0225A742
	mov r0, #0x18
	add r1, r6, #0
	bl sub_02020654
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	str r0, [sp]
	ldr r0, _0225A7BC ; =ov49_0225A854
	mov r1, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #2
	add r3, r1, #0
	bl GF_3DVramMan_Create
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225A798: .word 0x04000050
_0225A79C: .word 0x04001050
_0225A7A0: .word ov49_022697CC
_0225A7A4: .word gSystem + 0x60
_0225A7A8: .word ov49_02269724
_0225A7AC: .word ov49_0226981C
_0225A7B0: .word ov49_02269734
_0225A7B4: .word ov49_02269744
_0225A7B8: .word 0x00100010
_0225A7BC: .word ov49_0225A854
	thumb_func_end ov49_0225A5EC

	thumb_func_start ov49_0225A7C0
ov49_0225A7C0: ; 0x0225A7C0
	push {r3, lr}
	ldr r0, [r0, #4]
	bl SpriteList_RenderAndAnimateSprites
	bl thunk_UpdateCellTransferStateManager
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A7C0

	thumb_func_start ov49_0225A7D0
ov49_0225A7D0: ; 0x0225A7D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl GF_DestroyVramTransferManager
	ldr r5, _0225A83C ; =ov49_02269734
	mov r4, #0
_0225A7DC:
	ldr r1, [r5]
	ldr r0, [r6]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FreeBgTilemapBuffer
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225A7DC
	ldr r0, [r6]
	bl Heap_Free
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_0202067C
	mov r0, #5
	lsl r0, r0, #6
	mov r4, #0
	add r7, r0, #0
	str r4, [r6, r0]
	add r5, r6, #0
	sub r7, #0x10
_0225A80E:
	ldr r0, [r5, r7]
	bl Destroy2DGfxResObjMan
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225A80E
	ldr r0, [r6, #4]
	bl SpriteList_Delete
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	bl OamManager_Free
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl GF_3DVramMan_Delete
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A83C: .word ov49_02269734
	thumb_func_end ov49_0225A7D0

	thumb_func_start ov49_0225A840
ov49_0225A840: ; 0x0225A840
	push {r3, lr}
	ldr r0, [r0]
	bl DoScheduledBgGpuUpdates
	bl OamManager_ApplyAndResetBuffers
	bl GF_RunVramTransferTasks
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A840

	thumb_func_start ov49_0225A854
ov49_0225A854: ; 0x0225A854
	push {r3, r4, lr}
	sub sp, #0xc
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _0225A964 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0225A968 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0225A96C ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _0225A970 ; =ov49_02269754
	bl G3X_SetEdgeColorTable
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r1, #0
	ldr r0, _0225A974 ; =0x00006B5A
	ldr r2, _0225A978 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _0225A97C ; =0xBFFF0000
	ldr r0, _0225A980 ; =0x04000580
	ldr r2, _0225A984 ; =0xFFFFF224
	str r1, [r0]
	ldr r1, _0225A988 ; =0xFFFFF805
	mov r0, #0
	mov r3, #0x6e
	bl NNS_G3dGlbLightVector
	mov r1, #0
	add r0, sp, #4
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl VEC_Fx16Normalize
	add r4, sp, #4
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	mov r0, #1
	bl NNS_G3dGlbLightVector
	mov r1, #0
	add r0, r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl VEC_Fx16Normalize
	mov r0, #2
	mov r1, #0
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r0]
	ldrsh r3, [r4, r3]
	bl NNS_G3dGlbLightVector
	ldr r1, _0225A978 ; =0x00007FFF
	mov r0, #2
	bl NNS_G3dGlbLightColor
	mov r1, #0
	add r0, r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl VEC_Fx16Normalize
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	mov r0, #3
	bl NNS_G3dGlbLightVector
	ldr r1, _0225A978 ; =0x00007FFF
	mov r0, #3
	bl NNS_G3dGlbLightColor
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0225A964: .word 0x04000008
_0225A968: .word 0xFFFFCFFD
_0225A96C: .word 0x0000CFFB
_0225A970: .word ov49_02269754
_0225A974: .word 0x00006B5A
_0225A978: .word 0x00007FFF
_0225A97C: .word 0xBFFF0000
_0225A980: .word 0x04000580
_0225A984: .word 0xFFFFF224
_0225A988: .word 0xFFFFF805
	thumb_func_end ov49_0225A854

	thumb_func_start ov49_0225A98C
ov49_0225A98C: ; 0x0225A98C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_02258B44
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0225A9B2
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225A9B2
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_0225EF24
_0225A9B2:
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225E318
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0225A9E8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225A9E8
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_02258B5C
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_0225EF30
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_02268870
_0225A9E8:
	add r0, r4, #0
	bl ov49_0225AA70
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0225AA1E
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _0225AA0A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _0225AA0A
	ldrb r0, [r4]
	cmp r0, #1
	bne _0225AA0E
_0225AA0A:
	mov r2, #1
	b _0225AA10
_0225AA0E:
	mov r2, #0
_0225AA10:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	mov r3, #0x77
	bl ov49_0225B518
_0225AA1E:
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_02265378
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A98C

	thumb_func_start ov49_0225AA2C
ov49_0225AA2C: ; 0x0225AA2C
	push {r4, lr}
	add r4, r0, #0
	bl Thunk_G3X_Reset
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225CBF4
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225E3A0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_02258BD4
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_02265398
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
	add r4, #0x3c
	add r0, r4, #0
	bl ov49_0225A7C0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225AA2C

	thumb_func_start ov49_0225AA70
ov49_0225AA70: ; 0x0225AA70
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [r7, #0x34]
	bl ov45_0222A394
	str r0, [sp, #8]
	mov r4, #0
_0225AA80:
	add r0, r4, #0
	bl ov45_0222F274
	add r6, r0, #0
	cmp r6, #1
	bne _0225AA9E
	add r0, r4, #0
	bl ov45_0222F294
	cmp r0, #0
	bne _0225AA9A
	mov r5, #1
	b _0225AAA0
_0225AA9A:
	mov r5, #0
	b _0225AAA0
_0225AA9E:
	mov r5, #0
_0225AAA0:
	add r0, r4, #0
	bl ov45_0222F314
	add r2, r0, #0
	ldr r0, [sp, #8]
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, r4, #0
	add r3, r6, #0
	bl ov49_0225E8C4
	add r4, r4, #1
	cmp r4, #3
	blt _0225AA80
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225AA70

	thumb_func_start ov49_0225AAC8
ov49_0225AAC8: ; 0x0225AAC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [r1]
	add r4, r2, #0
	add r6, r3, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #2
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r0, #6
	lsl r0, r0, #6
	add r1, r6, #0
	bl String_New
	str r0, [r5, #0x18]
	add r0, r4, #0
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	str r0, [r5, #0x14]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov49_0225AAC8

	thumb_func_start ov49_0225AB14
ov49_0225AB14: ; 0x0225AB14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _0225AB30
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_0225AB30:
	add r0, r4, #0
	bl ov49_0225AC38
	ldr r0, [r4, #0x18]
	bl String_Delete
	add r0, r4, #0
	bl RemoveWindow
	pop {r4, pc}
	thumb_func_end ov49_0225AB14

	thumb_func_start ov49_0225AB44
ov49_0225AB44: ; 0x0225AB44
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _0225AB64
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_0225AB64:
	add r0, r5, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl String_Copy
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, _0225ABA0 ; =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	bl AddTextPrinterParameterizedWithColor
	mov r1, #1
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl DrawFrameAndWindow2
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225ABA0: .word 0x0001020F
	thumb_func_end ov49_0225AB44

	thumb_func_start ov49_0225ABA4
ov49_0225ABA4: ; 0x0225ABA4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _0225ABC4
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_0225ABC4:
	add r0, r5, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl String_Copy
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225AC04 ; =0x0001020F
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	bl AddTextPrinterParameterizedWithColor
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl DrawFrameAndWindow2
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225AC04: .word 0x0001020F
	thumb_func_end ov49_0225ABA4

	thumb_func_start ov49_0225AC08
ov49_0225AC08: ; 0x0225AC08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225AC16
	bl GF_AssertFail
_0225AC16:
	add r0, r4, #0
	mov r1, #1
	bl WaitingIcon_New
	str r0, [r4, #0x1c]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225AC08

	thumb_func_start ov49_0225AC24
ov49_0225AC24: ; 0x0225AC24
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225AC36
	bl sub_0200F450
	mov r0, #0
	str r0, [r4, #0x1c]
_0225AC36:
	pop {r4, pc}
	thumb_func_end ov49_0225AC24

	thumb_func_start ov49_0225AC38
ov49_0225AC38: ; 0x0225AC38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225AC4A
	bl sub_0200F478
	mov r0, #0
	str r0, [r4, #0x1c]
_0225AC4A:
	pop {r4, pc}
	thumb_func_end ov49_0225AC38

	thumb_func_start ov49_0225AC4C
ov49_0225AC4C: ; 0x0225AC4C
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0225AC56
	mov r0, #1
	bx lr
_0225AC56:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225AC4C

	thumb_func_start ov49_0225AC5C
ov49_0225AC5C: ; 0x0225AC5C
	push {r3, lr}
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _0225AC70
	mov r0, #1
	pop {r3, pc}
_0225AC70:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov49_0225AC5C

	thumb_func_start ov49_0225AC74
ov49_0225AC74: ; 0x0225AC74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _0225AC90
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_0225AC90:
	add r0, r4, #0
	bl ov49_0225AC38
	add r0, r4, #0
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225AC74

	thumb_func_start ov49_0225ACA8
ov49_0225ACA8: ; 0x0225ACA8
	push {r4, lr}
	add r4, r0, #0
	bl ov49_0225AAC8
	add r0, r4, #0
	mov r1, #2
	bl SetWindowPaletteNum
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225ACA8

	thumb_func_start ov49_0225ACBC
ov49_0225ACBC: ; 0x0225ACBC
	ldr r3, _0225ACC0 ; =ov49_0225AB14
	bx r3
	.balign 4, 0
_0225ACC0: .word ov49_0225AB14
	thumb_func_end ov49_0225ACBC

	thumb_func_start ov49_0225ACC4
ov49_0225ACC4: ; 0x0225ACC4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _0225ACE4
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_0225ACE4:
	add r0, r5, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl String_Copy
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #1
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	bl AddTextPrinterParameterized
	str r0, [r5, #0x10]
	mov r0, #3
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #2
	bl DrawFrameAndWindow3
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225ACC4

	thumb_func_start ov49_0225AD20
ov49_0225AD20: ; 0x0225AD20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r2, #0
	add r7, r0, #0
	add r4, r1, #0
	mov r0, #0x3c
	add r1, r5, #0
	bl NARC_New
	add r6, r0, #0
	ldr r0, _0225AE44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x13
	str r5, [sp, #8]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r2, #4
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	str r0, [r7, #0x40]
	ldr r0, _0225AE44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4d
	str r5, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xa
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	str r0, [r7, #0x44]
	ldr r1, _0225AE44 ; =0x00001388
	mov r0, #2
	str r1, [sp]
	str r0, [sp, #4]
	lsr r0, r1, #4
	str r5, [sp, #8]
	ldr r0, [r4, r0]
	add r1, r6, #0
	mov r2, #5
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r7, #0x48]
	ldr r0, _0225AE44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4f
	str r5, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #6
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r7, #0x4c]
	add r0, r6, #0
	bl NARC_Delete
	ldr r0, [r7, #0x40]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	ldr r0, [r7, #0x44]
	bl SpriteTransfer_CreatePlttTransferTask
	ldr r1, _0225AE44 ; =0x00001388
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #0x13
	str r2, [sp, #0x10]
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	add r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	add r3, r0, #0
	add r3, #8
	ldr r3, [r4, r3]
	add r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r4, #4]
	mov r6, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #3
	lsl r0, r0, #0x12
	str r5, [sp, #0x48]
	ldr r4, _0225AE48 ; =ov49_022696E8
	str r6, [sp, #0x40]
	str r0, [sp, #0x34]
	add r5, r7, #0
_0225AE0E:
	ldrb r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_Create
	str r0, [r5, #0x50]
	add r1, r6, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r5, #0x50]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #2
	blt _0225AE0E
	mov r0, #0
	str r0, [r7, #0x3c]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225AE44: .word 0x00001388
_0225AE48: .word ov49_022696E8
	thumb_func_end ov49_0225AD20

	thumb_func_start ov49_0225AE4C
ov49_0225AE4C: ; 0x0225AE4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _0225AE5C
	bl ov49_0225AEE0
_0225AE5C:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0225AE6C
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225B014
_0225AE6C:
	mov r7, #0
	add r4, r5, #0
_0225AE70:
	ldr r0, [r4, #0x50]
	bl Sprite_Delete
	mov r0, #0
	str r0, [r4, #0x50]
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #2
	blt _0225AE70
	ldr r0, [r5, #0x40]
	bl SpriteTransfer_DeleteCharTransferTask
	ldr r0, [r5, #0x44]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r7, #0x13
	mov r4, #0
	lsl r7, r7, #4
_0225AE94:
	ldr r0, [r6, r7]
	ldr r1, [r5, #0x40]
	bl DestroySingle2DGfxResObj
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r4, #4
	blt _0225AE94
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225AE4C

	thumb_func_start ov49_0225AEA8
ov49_0225AEA8: ; 0x0225AEA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _0225AEBC
	bl GF_AssertFail
_0225AEBC:
	add r0, r4, #0
	add r1, r7, #0
	bl ListMenuItems_New
	str r0, [r5, #0x34]
	mov r1, #0
	strh r4, [r5, #0x38]
	cmp r4, #0
	bls _0225AEDE
	add r2, r1, #0
_0225AED0:
	ldr r0, [r5, #0x34]
	add r1, r1, #1
	add r0, r0, r2
	str r6, [r0, #4]
	add r2, #8
	cmp r1, r4
	blo _0225AED0
_0225AEDE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225AEA8

	thumb_func_start ov49_0225AEE0
ov49_0225AEE0: ; 0x0225AEE0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0225AEF4
	bl ListMenuItems_Delete
	mov r0, #0
	str r0, [r4, #0x34]
	strh r0, [r4, #0x38]
_0225AEF4:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225AEE0

	thumb_func_start ov49_0225AEF8
ov49_0225AEF8: ; 0x0225AEF8
	ldr r3, _0225AF00 ; =ListMenuItems_AddItem
	ldr r0, [r0, #0x34]
	bx r3
	nop
_0225AF00: .word ListMenuItems_AddItem
	thumb_func_end ov49_0225AEF8

	thumb_func_start ov49_0225AF04
ov49_0225AF04: ; 0x0225AF04
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end ov49_0225AF04

	thumb_func_start ov49_0225AF08
ov49_0225AF08: ; 0x0225AF08
	push {r3, r4}
	ldrh r2, [r0, #0x38]
	mov r3, #0
	cmp r2, #0
	ble _0225AF2A
	ldr r4, [r0, #0x34]
_0225AF14:
	ldr r2, [r4, #4]
	cmp r1, r2
	bne _0225AF20
	mov r0, #1
	pop {r3, r4}
	bx lr
_0225AF20:
	ldrh r2, [r0, #0x38]
	add r3, r3, #1
	add r4, #8
	cmp r3, r2
	blt _0225AF14
_0225AF2A:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov49_0225AF08

	thumb_func_start ov49_0225AF30
ov49_0225AF30: ; 0x0225AF30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0225AF46
	bl GF_AssertFail
_0225AF46:
	ldrh r0, [r4, #0x12]
	lsl r0, r0, #1
	cmp r0, #0x12
	blt _0225AF52
	bl GF_AssertFail
_0225AF52:
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, r5, #0
	add r1, #0x20
	str r1, [r5, #0xc]
	ldrh r0, [r4, #0x10]
	add r3, sp, #0x18
	mov r2, #1
	strh r0, [r5, #0x3a]
	ldr r0, _0225AFD4 ; =ov49_0225B058
	str r0, [r5, #4]
	ldrb r0, [r3, #0x1c]
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x12]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xca
	str r0, [sp, #0x10]
	ldrb r3, [r3, #0x18]
	ldr r0, [r6]
	bl AddWindowParameterized
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x20
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl DrawFrameAndWindow1
	add r2, sp, #0x18
	ldr r3, [sp, #0x2c]
	ldrh r2, [r2, #0x10]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r3, r3, #0x18
	bl ListMenuInit
	str r0, [r5, #0x30]
	add r5, #0x20
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225AFD4: .word ov49_0225B058
	thumb_func_end ov49_0225AF30

	thumb_func_start ov49_0225AFD8
ov49_0225AFD8: ; 0x0225AFD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _0225AFE8
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0225AFE8:
	bl ListMenu_ProcessInput
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0225AFFC
	add r0, r0, #1
	cmp r4, r0
	bne _0225B004
_0225AFFC:
	add r0, r5, #0
	bl ov49_0225B070
	b _0225B00A
_0225B004:
	ldr r0, _0225B010 ; =0x000005DC
	bl PlaySE
_0225B00A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0225B010: .word 0x000005DC
	thumb_func_end ov49_0225AFD8

	thumb_func_start ov49_0225B014
ov49_0225B014: ; 0x0225B014
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0225B056
	bl DestroyListMenu
	mov r0, #0
	str r0, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #1
	bl sub_0200E5D4
	add r0, r5, #0
	add r0, #0x20
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	add r0, #0x20
	bl RemoveWindow
	mov r4, #0
	str r4, [r5, #0x3c]
	add r6, r4, #0
_0225B046:
	ldr r0, [r5, #0x50]
	add r1, r6, #0
	bl Sprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0225B046
_0225B056:
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_0225B014

	thumb_func_start ov49_0225B058
ov49_0225B058: ; 0x0225B058
	push {r3, lr}
	cmp r2, #0
	bne _0225B064
	ldr r0, _0225B068 ; =0x000005DC
	bl PlaySE
_0225B064:
	pop {r3, pc}
	nop
_0225B068: .word 0x000005DC
	thumb_func_end ov49_0225B058

	thumb_func_start ov49_0225B06C
ov49_0225B06C: ; 0x0225B06C
	str r1, [r0, #0x3c]
	bx lr
	thumb_func_end ov49_0225B06C

	thumb_func_start ov49_0225B070
ov49_0225B070: ; 0x0225B070
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0225B090
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #4
	pop {r3, r4, pc}
_0225B090:
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	mov r2, #0
	bl ListMenuGetScrollAndRow
	add r0, sp, #0
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x50]
	bne _0225B0AC
	mov r1, #0
	bl Sprite_SetDrawFlag
	b _0225B0B2
_0225B0AC:
	mov r1, #1
	bl Sprite_SetDrawFlag
_0225B0B2:
	add r0, sp, #0
	ldrh r1, [r0]
	ldrh r0, [r4, #0x3a]
	sub r0, r0, #7
	cmp r1, r0
	ldr r0, [r4, #0x54]
	blt _0225B0CA
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #4
	pop {r3, r4, pc}
_0225B0CA:
	mov r1, #1
	bl Sprite_SetDrawFlag
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov49_0225B070

	thumb_func_start ov49_0225B0D4
ov49_0225B0D4: ; 0x0225B0D4
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225B0D4

	thumb_func_start ov49_0225B0D8
ov49_0225B0D8: ; 0x0225B0D8
	ldr r3, _0225B0DC ; =ov49_0225B124
	bx r3
	.balign 4, 0
_0225B0DC: .word ov49_0225B124
	thumb_func_end ov49_0225B0D8

	thumb_func_start ov49_0225B0E0
ov49_0225B0E0: ; 0x0225B0E0
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r2, [r0, #0x10]
	str r2, [sp]
	ldrb r2, [r0, #0x14]
	str r2, [sp, #4]
	ldrb r0, [r0, #0x18]
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xca
	str r0, [sp, #0x10]
	ldr r0, [r1]
	add r1, r4, #0
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl DrawFrameAndWindow1
	add r0, r4, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov49_0225B0E0

	thumb_func_start ov49_0225B124
ov49_0225B124: ; 0x0225B124
	push {r4, lr}
	add r4, r0, #0
	bl WindowIsInUse
	cmp r0, #1
	bne _0225B144
	add r0, r4, #0
	mov r1, #1
	bl sub_0200E5D4
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	bl RemoveWindow
_0225B144:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B124

	thumb_func_start ov49_0225B148
ov49_0225B148: ; 0x0225B148
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	str r3, [sp]
	add r5, r2, #0
	mov r1, #0xff
	str r1, [sp, #4]
	ldr r1, _0225B174 ; =0x0001020F
	add r4, r0, #0
	str r1, [sp, #8]
	mov r1, #0
	add r2, r6, #0
	add r3, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0225B174: .word 0x0001020F
	thumb_func_end ov49_0225B148

	thumb_func_start ov49_0225B178
ov49_0225B178: ; 0x0225B178
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	str r3, [sp]
	add r1, sp, #8
	add r4, r2, #0
	ldrh r1, [r1, #0x10]
	add r2, r5, #0
	add r3, r4, #0
	str r1, [sp, #4]
	mov r1, #0xf
	bl FillWindowPixelRect
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B178

	thumb_func_start ov49_0225B198
ov49_0225B198: ; 0x0225B198
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0225B1AA
	bl GF_AssertFail
_0225B1AA:
	mov r0, #2
	add r1, r6, #0
	bl ListMenuItems_New
	str r0, [r5]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x43
	bl ov49_0225B388
	add r1, r0, #0
	ldr r0, [r5]
	mov r2, #0
	bl ListMenuItems_AddItem
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x42
	bl ov49_0225B388
	add r1, r0, #0
	ldr r0, [r5]
	mov r2, #1
	bl ListMenuItems_AddItem
	ldr r3, _0225B1FC ; =ov49_022697AC
	add r2, r5, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #2
	strh r0, [r5, #0x14]
	ldr r0, [r5]
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
	nop
_0225B1FC: .word ov49_022697AC
	thumb_func_end ov49_0225B198

	thumb_func_start ov49_0225B200
ov49_0225B200: ; 0x0225B200
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0225B212
	bl ListMenuItems_Delete
	mov r0, #0
	str r0, [r4]
_0225B212:
	pop {r4, pc}
	thumb_func_end ov49_0225B200

	thumb_func_start ov49_0225B214
ov49_0225B214: ; 0x0225B214
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #4
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [r1]
	add r1, r4, #0
	mov r2, #1
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov49_0225B214

	thumb_func_start ov49_0225B244
ov49_0225B244: ; 0x0225B244
	ldr r3, _0225B248 ; =RemoveWindow
	bx r3
	.balign 4, 0
_0225B248: .word RemoveWindow
	thumb_func_end ov49_0225B244

	thumb_func_start ov49_0225B24C
ov49_0225B24C: ; 0x0225B24C
	push {r4, lr}
	sub sp, #0x10
	add r2, r1, #0
	mov r1, #0
	str r1, [sp]
	mov r3, #0xff
	str r3, [sp, #4]
	ldr r3, _0225B280 ; =0x0001020F
	add r4, r0, #0
	str r3, [sp, #8]
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl DrawFrameAndWindow1
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, pc}
	nop
_0225B280: .word 0x0001020F
	thumb_func_end ov49_0225B24C

	thumb_func_start ov49_0225B284
ov49_0225B284: ; 0x0225B284
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_020392D8
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl ov45_0222D7CC
	add r7, r0, #0
	mov r0, #2
	str r0, [sp]
	ldr r1, [r4]
	add r0, r5, #0
	mov r2, #5
	mov r3, #0
	bl ov49_0225B3A8
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	bl ov49_0225B388
	add r1, r0, #0
	add r0, r6, #0
	bl ov49_0225B24C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B284

	thumb_func_start ov49_0225B2C0
ov49_0225B2C0: ; 0x0225B2C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl ov45_0222E7FC
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov49_0225B3A8
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x20
	bl ov49_0225B388
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225B24C
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225B2C0

	thumb_func_start ov49_0225B2F0
ov49_0225B2F0: ; 0x0225B2F0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #2
	mov r2, #0xe
	bl ov49_0225B388
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225B24C
	pop {r4, pc}
	thumb_func_end ov49_0225B2F0

	thumb_func_start ov49_0225B308
ov49_0225B308: ; 0x0225B308
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	str r0, [sp]
	mov r0, #8
	mov r1, #0x40
	add r2, r7, #0
	bl MessageFormat_New_Custom
	ldr r1, [sp]
	ldr r4, _0225B358 ; =ov49_02269714
	str r0, [r1]
	mov r6, #0
	add r5, r1, #0
_0225B322:
	ldr r2, [r4]
	mov r0, #1
	mov r1, #0x1b
	add r3, r7, #0
	bl NewMsgDataFromNarc
	str r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _0225B322
	mov r0, #0x1e
	lsl r0, r0, #4
	add r1, r7, #0
	bl String_New
	ldr r1, [sp]
	str r0, [r1, #0x14]
	mov r0, #0x1e
	lsl r0, r0, #4
	add r1, r7, #0
	bl String_New
	ldr r1, [sp]
	str r0, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B358: .word ov49_02269714
	thumb_func_end ov49_0225B308

	thumb_func_start ov49_0225B35C
ov49_0225B35C: ; 0x0225B35C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6]
	bl MessageFormat_Delete
	mov r4, #0
	add r5, r6, #0
_0225B36A:
	ldr r0, [r5, #4]
	bl DestroyMsgData
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225B36A
	ldr r0, [r6, #0x14]
	bl String_Delete
	ldr r0, [r6, #0x18]
	bl String_Delete
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B35C

	thumb_func_start ov49_0225B388
ov49_0225B388: ; 0x0225B388
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #2
	add r0, r4, r0
	add r1, r2, #0
	ldr r0, [r0, #4]
	ldr r2, [r4, #0x18]
	bl ReadMsgDataIntoString
	ldr r0, [r4]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl StringExpandPlaceholders
	ldr r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end ov49_0225B388

	thumb_func_start ov49_0225B3A8
ov49_0225B3A8: ; 0x0225B3A8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	add r4, r2, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r1, r3, #0
	ldr r0, [r0]
	add r2, r5, #0
	add r3, r4, #0
	bl BufferIntegerAsString
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225B3A8

	thumb_func_start ov49_0225B3C8
ov49_0225B3C8: ; 0x0225B3C8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225B3D4 ; =BufferPlayersName
	ldr r0, [r0]
	bx r3
	.balign 4, 0
_0225B3D4: .word BufferPlayersName
	thumb_func_end ov49_0225B3C8

	thumb_func_start ov49_0225B3D8
ov49_0225B3D8: ; 0x0225B3D8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225B3E4 ; =BufferWiFiPlazaActivityName
	ldr r0, [r0]
	bx r3
	.balign 4, 0
_0225B3E4: .word BufferWiFiPlazaActivityName
	thumb_func_end ov49_0225B3D8

	thumb_func_start ov49_0225B3E8
ov49_0225B3E8: ; 0x0225B3E8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225B3F4 ; =BufferWiFiPlazaEventName
	ldr r0, [r0]
	bx r3
	.balign 4, 0
_0225B3F4: .word BufferWiFiPlazaEventName
	thumb_func_end ov49_0225B3E8

	thumb_func_start ov49_0225B3F8
ov49_0225B3F8: ; 0x0225B3F8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225B404 ; =BufferWiFiPlazaInstrumentName
	ldr r0, [r0]
	bx r3
	.balign 4, 0
_0225B404: .word BufferWiFiPlazaInstrumentName
	thumb_func_end ov49_0225B3F8

	thumb_func_start ov49_0225B408
ov49_0225B408: ; 0x0225B408
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225B414 ; =BufferCountryName
	ldr r0, [r0]
	bx r3
	.balign 4, 0
_0225B414: .word BufferCountryName
	thumb_func_end ov49_0225B408

	thumb_func_start ov49_0225B418
ov49_0225B418: ; 0x0225B418
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r1, r3, #0
	ldr r0, [r0]
	add r2, r5, #0
	add r3, r4, #0
	bl BufferCityName
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225B418

	thumb_func_start ov49_0225B42C
ov49_0225B42C: ; 0x0225B42C
	ldr r3, _0225B434 ; =BufferECWord
	ldr r0, [r0]
	bx r3
	nop
_0225B434: .word BufferECWord
	thumb_func_end ov49_0225B42C

	thumb_func_start ov49_0225B438
ov49_0225B438: ; 0x0225B438
	ldr r3, _0225B440 ; =MessageFormat_ResetBuffers
	ldr r0, [r0]
	bx r3
	nop
_0225B440: .word MessageFormat_ResetBuffers
	thumb_func_end ov49_0225B438

	thumb_func_start ov49_0225B444
ov49_0225B444: ; 0x0225B444
	mov r1, #0xf6
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225B444

	thumb_func_start ov49_0225B450
ov49_0225B450: ; 0x0225B450
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [sp, #0x20]
	add r5, r0, #0
	add r0, r3, #0
	add r7, r1, #0
	add r6, r2, #0
	bl PlayerProfile_GetTrainerGender
	str r0, [sp, #4]
	mov r0, #0xd1
	add r1, r4, #0
	bl NARC_New
	mov r2, #0x53
	lsl r2, r2, #2
	str r0, [r5, r2]
	str r4, [sp]
	ldr r2, [r5, r2]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_0225BABC
	mov r2, #0x53
	lsl r2, r2, #2
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #8
	add r1, r6, #0
	add r3, r4, #0
	bl ov49_0225BB84
	mov r2, #0x45
	lsl r2, r2, #2
	add r0, r5, r2
	add r2, #0x38
	ldr r2, [r5, r2]
	add r1, r6, #0
	add r3, r4, #0
	bl ov49_0225C844
	mov r1, #0
	strb r1, [r5, #2]
	strb r1, [r5, #1]
	ldrh r0, [r7, #6]
	cmp r0, #0
	bne _0225B4DC
	mov r0, #4
	strb r1, [r5]
	bl BG_SetMaskColor
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0225B4DC:
	mov r0, #5
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225B450

	thumb_func_start ov49_0225B4E4
ov49_0225B4E4: ; 0x0225B4E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r6, r1, #0
	add r4, r2, #0
	bl ov49_0225C8A8
	add r0, r5, #0
	add r0, #8
	add r1, r6, #0
	add r2, r4, #0
	bl ov49_0225BBA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225BB10
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl NARC_Delete
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B4E4

	thumb_func_start ov49_0225B518
ov49_0225B518: ; 0x0225B518
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	str r0, [sp, #0x38]
	add r0, #0x3c
	str r0, [sp, #0x38]
	mov r0, #0xb7
	lsl r0, r0, #2
	ldrb r1, [r4]
	add r7, r3, #0
	ldr r6, [r5, #0x34]
	str r0, [sp, #0x3c]
	cmp r1, #0xa
	bhi _0225B5FA
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225B544: ; jump table
	.short _0225B55A - _0225B544 - 2 ; case 0
	.short _0225B568 - _0225B544 - 2 ; case 1
	.short _0225B586 - _0225B544 - 2 ; case 2
	.short _0225B5D4 - _0225B544 - 2 ; case 3
	.short _0225B5F2 - _0225B544 - 2 ; case 4
	.short _0225B606 - _0225B544 - 2 ; case 5
	.short _0225B6E2 - _0225B544 - 2 ; case 6
	.short _0225B700 - _0225B544 - 2 ; case 7
	.short _0225B748 - _0225B544 - 2 ; case 8
	.short _0225B84E - _0225B544 - 2 ; case 9
	.short _0225B880 - _0225B544 - 2 ; case 10
_0225B55A:
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0225B5FA
	add r0, r1, #1
	add sp, #0x50
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225B568:
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0
	ldr r3, _0225B890 ; =0x00007FFF
	str r7, [sp, #8]
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225B586:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0225B5FA
	add r0, r6, #0
	bl ov45_0222A5C0
	mov r2, #0xb7
	lsl r2, r2, #2
	str r0, [sp]
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	add r2, r5, r2
	add r3, r7, #0
	bl ov49_0225B9AC
	mov r0, #4
	strb r0, [r4, #1]
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225B5D4:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r3, _0225B890 ; =0x00007FFF
	str r7, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225B5F2:
	bl IsPaletteFadeFinished
	cmp r0, #1
	beq _0225B5FC
_0225B5FA:
	b _0225B88C
_0225B5FC:
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225B606:
	cmp r2, #1
	beq _0225B708
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _0225B6D2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225B61C: ; jump table
	.short _0225B6D2 - _0225B61C - 2 ; case 0
	.short _0225B626 - _0225B61C - 2 ; case 1
	.short _0225B6C2 - _0225B61C - 2 ; case 2
	.short _0225B642 - _0225B61C - 2 ; case 3
	.short _0225B6D2 - _0225B61C - 2 ; case 4
_0225B626:
	mov r2, #0x45
	lsl r2, r2, #2
	add r0, r4, r2
	add r2, #0x38
	ldr r1, [sp, #0x38]
	ldr r2, [r4, r2]
	bl ov49_0225C8D4
	cmp r0, #1
	bne _0225B6D2
	add r0, r5, #0
	bl ov49_0225B444
	b _0225B6D2
_0225B642:
	ldr r2, _0225B894 ; =0x00000153
	ldrb r0, [r4, r2]
	cmp r0, #0
	beq _0225B66E
	sub r1, r2, #3
	mov r0, #0xf7
	sub r2, r2, #1
	lsl r0, r0, #2
	ldrh r1, [r4, r1]
	ldrb r2, [r4, r2]
	ldr r0, [r5, r0]
	bl ov49_02268968
	cmp r0, #0
	bne _0225B66E
	ldr r0, _0225B894 ; =0x00000153
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, #0x3f
	add r0, r4, r0
	bl ov49_0225CB68
_0225B66E:
	mov r2, #0x45
	lsl r2, r2, #2
	add r0, r4, r2
	add r2, #0x38
	ldr r1, [sp, #0x38]
	ldr r2, [r4, r2]
	add r3, r7, #0
	bl ov49_0225C8D4
	cmp r0, #1
	bne _0225B6D2
	add r0, r6, #0
	bl ov45_0222A53C
	add r1, r0, #0
	add r0, r6, #0
	bl ov45_0222ADD8
	add r0, r6, #0
	bl ov45_0222AE54
	add r0, r6, #0
	bl ov45_0222A53C
	add r1, r0, #0
	add r0, r6, #0
	bl ov45_0222ADA8
	add r1, sp, #0x4c
	add r2, sp, #0x48
	bl ov45_0222AE08
	ldr r0, _0225B894 ; =0x00000153
	mov r1, #1
	strb r1, [r4, r0]
	sub r1, r0, #3
	ldr r2, [sp, #0x4c]
	sub r0, r0, #1
	strh r2, [r4, r1]
	ldr r1, [sp, #0x48]
	strb r1, [r4, r0]
	b _0225B6D2
_0225B6C2:
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	add r1, #0x3c
	str r1, [sp, #0x3c]
	add r0, #8
	add r1, r5, r1
	bl ov49_0225BBCC
_0225B6D2:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0225B708
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225B6E2:
	mov r0, #3
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r2, #0
	str r7, [sp, #8]
	mov r0, #4
	add r3, r2, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225B700:
	bl IsPaletteFadeFinished
	cmp r0, #1
	beq _0225B70A
_0225B708:
	b _0225B88C
_0225B70A:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _0225B73E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225B71C: ; jump table
	.short _0225B73E - _0225B71C - 2 ; case 0
	.short _0225B726 - _0225B71C - 2 ; case 1
	.short _0225B730 - _0225B71C - 2 ; case 2
	.short _0225B726 - _0225B71C - 2 ; case 3
	.short _0225B726 - _0225B71C - 2 ; case 4
_0225B726:
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	bl ov49_0225BA20
	b _0225B73E
_0225B730:
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	add r1, r5, r1
	bl ov49_0225B99C
_0225B73E:
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225B748:
	ldrb r0, [r4, #2]
	cmp r0, #4
	bhi _0225B840
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225B75A: ; jump table
	.short _0225B840 - _0225B75A - 2 ; case 0
	.short _0225B764 - _0225B75A - 2 ; case 1
	.short _0225B77E - _0225B75A - 2 ; case 2
	.short _0225B810 - _0225B75A - 2 ; case 3
	.short _0225B764 - _0225B75A - 2 ; case 4
_0225B764:
	add r0, r6, #0
	bl ov45_0222A5C0
	mov r2, #0xb7
	lsl r2, r2, #2
	str r0, [sp]
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	add r2, r5, r2
	add r3, r7, #0
	bl ov49_0225B9AC
	b _0225B840
_0225B77E:
	add r0, r6, #0
	bl ov45_0222A5C0
	str r0, [sp, #0x28]
	ldrb r0, [r4, #3]
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl ov45_0222A53C
	ldr r1, [sp, #0x24]
	cmp r1, r0
	bne _0225B7A4
	add r0, r6, #0
	bl ov45_0222A5C0
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x2c]
	b _0225B7B0
_0225B7A4:
	add r0, r6, #0
	bl ov45_0222A578
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x2c]
_0225B7B0:
	ldrb r1, [r4, #3]
	add r0, r6, #0
	bl ov45_0222AB28
	str r0, [sp, #0x34]
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0225B7DC
	ldrb r1, [r4, #3]
	add r0, r6, #0
	bl ov45_0222AB48
	str r0, [sp, #0x30]
	ldrb r1, [r4, #3]
	add r0, r6, #0
	bl ov45_0222AB58
	cmp r0, #0
	bne _0225B7E0
	mov r1, #0
	str r1, [sp, #0x30]
	b _0225B7E0
_0225B7DC:
	mov r0, #0
	str r0, [sp, #0x30]
_0225B7E0:
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x3c]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x38]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x34]
	add r3, r5, r3
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x30]
	str r1, [sp, #0x14]
	mov r1, #0xc6
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r1, r5, r1
	bl ov49_0225B944
	b _0225B840
_0225B810:
	add r0, r6, #0
	bl ov45_0222A53C
	add r1, r0, #0
	add r0, r6, #0
	bl ov45_0222ADA8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0225B82C
	bl GF_AssertFail
	mov r0, #0
_0225B82C:
	add r1, sp, #0x44
	add r2, sp, #0x40
	bl ov45_0222AE08
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x40]
	add r0, r4, #0
	add r2, r7, #0
	bl ov49_0225B9F0
_0225B840:
	mov r0, #0
	strb r0, [r4, #2]
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225B84E:
	mov r0, #3
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _0225B876
	mov r1, #0xc6
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #8
	add r1, r5, r1
	bl ov49_0225BBCC
_0225B876:
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225B880:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0225B88C
	mov r0, #5
	strb r0, [r4]
_0225B88C:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B890: .word 0x00007FFF
_0225B894: .word 0x00000153
	thumb_func_end ov49_0225B518

	thumb_func_start ov49_0225B898
ov49_0225B898: ; 0x0225B898
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov49_0225B898

	thumb_func_start ov49_0225B89C
ov49_0225B89C: ; 0x0225B89C
	mov r3, #2
	strb r3, [r0, #2]
	strb r1, [r0, #3]
	strh r2, [r0, #4]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225B89C

	thumb_func_start ov49_0225B8A8
ov49_0225B8A8: ; 0x0225B8A8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	cmp r4, #0x1b
	blo _0225B8BA
	bl GF_AssertFail
_0225B8BA:
	ldrb r0, [r5, #1]
	cmp r0, #2
	beq _0225B8C4
	bl GF_AssertFail
_0225B8C4:
	ldrb r0, [r5, #1]
	cmp r0, #2
	bne _0225B8DE
	mov r2, #0x53
	str r4, [sp]
	lsl r2, r2, #2
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #8
	add r1, r6, #0
	add r3, r7, #0
	bl ov49_0225BFC4
_0225B8DE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225B8A8

	thumb_func_start ov49_0225B8E0
ov49_0225B8E0: ; 0x0225B8E0
	ldrb r1, [r0, #1]
	cmp r1, #1
	beq _0225B8EA
	mov r1, #1
	strb r1, [r0, #2]
_0225B8EA:
	bx lr
	thumb_func_end ov49_0225B8E0

	thumb_func_start ov49_0225B8EC
ov49_0225B8EC: ; 0x0225B8EC
	ldrb r1, [r0, #1]
	cmp r1, #3
	beq _0225B8F6
	mov r1, #3
	strb r1, [r0, #2]
_0225B8F6:
	bx lr
	thumb_func_end ov49_0225B8EC

	thumb_func_start ov49_0225B8F8
ov49_0225B8F8: ; 0x0225B8F8
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov49_0225B8F8

	thumb_func_start ov49_0225B8FC
ov49_0225B8FC: ; 0x0225B8FC
	ldrb r1, [r0, #2]
	cmp r1, #2
	bne _0225B906
	mov r0, #1
	bx lr
_0225B906:
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0225B910
	mov r0, #1
	bx lr
_0225B910:
	mov r0, #0
	bx lr
	thumb_func_end ov49_0225B8FC

	thumb_func_start ov49_0225B914
ov49_0225B914: ; 0x0225B914
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _0225B924
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0225B924
	mov r0, #1
	bx lr
_0225B924:
	mov r0, #0
	bx lr
	thumb_func_end ov49_0225B914

	thumb_func_start ov49_0225B928
ov49_0225B928: ; 0x0225B928
	ldr r3, _0225B930 ; =ov49_0225BFEC
	add r0, #8
	bx r3
	nop
_0225B930: .word ov49_0225BFEC
	thumb_func_end ov49_0225B928

	thumb_func_start ov49_0225B934
ov49_0225B934: ; 0x0225B934
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0225B93E
	mov r0, #1
	bx lr
_0225B93E:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225B934

	thumb_func_start ov49_0225B944
ov49_0225B944: ; 0x0225B944
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r3, #0
	ldrb r3, [r5, #1]
	add r6, r1, #0
	add r7, r2, #0
	cmp r3, #2
	bne _0225B95A
	bl ov49_0225B99C
_0225B95A:
	ldr r0, [sp, #0x40]
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x48]
	add r2, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4c]
	add r3, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov49_0225BBD0
	mov r0, #2
	strb r0, [r5, #1]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B944

	thumb_func_start ov49_0225B99C
ov49_0225B99C: ; 0x0225B99C
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	bl ov49_0225BF80
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end ov49_0225B99C

	thumb_func_start ov49_0225B9AC
ov49_0225B9AC: ; 0x0225B9AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #1]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #1
	beq _0225B9C8
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0225B9D0
_0225B9C8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225BA20
_0225B9D0:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, #0x38
	str r1, [sp]
	ldr r3, [sp, #0x20]
	add r0, r5, r0
	add r1, r4, #0
	add r2, r7, #0
	str r6, [sp, #4]
	bl ov49_0225C970
	mov r0, #1
	strb r0, [r5, #1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225B9AC

	thumb_func_start ov49_0225B9F0
ov49_0225B9F0: ; 0x0225B9F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldrb r2, [r5, #1]
	add r6, r1, #0
	add r7, r3, #0
	cmp r2, #3
	bne _0225BA04
	bl ov49_0225BA20
_0225BA04:
	mov r3, #0x45
	lsl r3, r3, #2
	add r0, r5, r3
	str r4, [sp]
	add r3, #0x38
	ldr r3, [r5, r3]
	add r1, r6, #0
	add r2, r7, #0
	bl ov49_0225CA30
	mov r0, #3
	strb r0, [r5, #1]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B9F0

	thumb_func_start ov49_0225BA20
ov49_0225BA20: ; 0x0225BA20
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225CAA8
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end ov49_0225BA20

	thumb_func_start ov49_0225BA34
ov49_0225BA34: ; 0x0225BA34
	ldr r2, _0225BA3C ; =0x0000011A
	strh r1, [r0, r2]
	bx lr
	nop
_0225BA3C: .word 0x0000011A
	thumb_func_end ov49_0225BA34

	thumb_func_start ov49_0225BA40
ov49_0225BA40: ; 0x0225BA40
	add r1, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	strh r2, [r1, r0]
	add r0, r0, #2
	strh r3, [r1, r0]
	ldr r3, _0225BA54 ; =SysTask_CreateOnVWaitQueue
	ldr r0, _0225BA58 ; =ov49_0225BA5C
	mov r2, #0
	bx r3
	.balign 4, 0
_0225BA54: .word SysTask_CreateOnVWaitQueue
_0225BA58: .word ov49_0225BA5C
	thumb_func_end ov49_0225BA40

	thumb_func_start ov49_0225BA5C
ov49_0225BA5C: ; 0x0225BA5C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	mov r3, #0
	ldr r1, _0225BAB8 ; =0x00000156
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r4, r1]
	mov r2, #4
	str r0, [sp, #4]
	add r0, r1, #0
	sub r1, r1, #2
	sub r0, #0xa
	ldrh r1, [r4, r1]
	ldr r0, [r4, r0]
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r1, #0xa0
	add r2, r1, #0
	add r2, #0xb6
	ldrh r2, [r4, r2]
	mov r0, #4
	bl LoadFontPal0
	bl sub_020776B4
	add r6, r0, #0
	bl sub_02077690
	add r1, r0, #0
	mov r0, #0x60
	str r0, [sp]
	add r0, #0xf6
	ldrh r0, [r4, r0]
	mov r3, #0x16
	mov r2, #4
	str r0, [sp, #4]
	add r0, r6, #0
	lsl r3, r3, #4
	bl GfGfxLoader_GXLoadPal
	add r0, r5, #0
	bl SysTask_Destroy
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225BAB8: .word 0x00000156
	thumb_func_end ov49_0225BA5C

	thumb_func_start ov49_0225BABC
ov49_0225BABC: ; 0x0225BABC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r2, #0
	ldr r4, [sp, #0x20]
	cmp r3, #0
	bne _0225BADC
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	mov r1, #0x56
	mov r2, #4
	str r4, [sp, #4]
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	b _0225BAEC
_0225BADC:
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	mov r1, #0x57
	mov r2, #4
	str r4, [sp, #4]
	bl GfGfxLoader_GXLoadPalFromOpenNarc
_0225BAEC:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r6]
	add r0, r5, #0
	mov r1, #0x36
	mov r3, #4
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #4
	mov r1, #0xa0
	add r2, r4, #0
	bl LoadFontPal0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_0225BABC

	thumb_func_start ov49_0225BB10
ov49_0225BB10: ; 0x0225BB10
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225BB10

	thumb_func_start ov49_0225BB14
ov49_0225BB14: ; 0x0225BB14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	add r6, r3, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	add r3, sp, #0xc
	ldr r4, [sp, #0x28]
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	ldr r2, [sp, #0xc]
	add r7, r0, #0
	ldr r0, [r2, #8]
	add r2, #0xc
	lsr r1, r0, #1
	mov r0, #0
	cmp r1, #0
	ble _0225BB4C
_0225BB3E:
	ldrh r3, [r2]
	add r0, r0, #1
	add r3, r3, r4
	strh r3, [r2]
	add r2, r2, #2
	cmp r0, r1
	blt _0225BB3E
_0225BB4C:
	ldr r2, [sp, #0xc]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	bl LoadRectToBgTilemapRect
	lsl r1, r6, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add r0, r7, #0
	bl Heap_Free
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225BB14

	thumb_func_start ov49_0225BB84
ov49_0225BB84: ; 0x0225BB84
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0225BBA4 ; =ov49_022697F4
	add r7, r1, #0
	mov r6, #0
	add r5, r0, #4
_0225BB8E:
	ldr r0, [r7]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #5
	blt _0225BB8E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225BBA4: .word ov49_022697F4
	thumb_func_end ov49_0225BB84

	thumb_func_start ov49_0225BBA8
ov49_0225BBA8: ; 0x0225BBA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r3, [r4, #0x54]
	cmp r3, #0
	beq _0225BBB6
	bl ov49_0225BF80
_0225BBB6:
	mov r5, #0
	add r4, r4, #4
_0225BBBA:
	add r0, r4, #0
	bl RemoveWindow
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #5
	blt _0225BBBA
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225BBA8

	thumb_func_start ov49_0225BBCC
ov49_0225BBCC: ; 0x0225BBCC
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225BBCC

	thumb_func_start ov49_0225BBD0
ov49_0225BBD0: ; 0x0225BBD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r4, [sp, #0x28]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r5, r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r6, r3, #0
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl ov49_0225B438
	ldr r0, [sp, #0x38]
	bl ov45_0222A9CC
	cmp r0, #0
	bne _0225BC1C
	ldr r0, [sp, #0x40]
	ldr r7, _0225BE98 ; =0x00070800
	cmp r0, #0
	bne _0225BC0E
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x56
	bl ov49_0225BA40
	b _0225BC40
_0225BC0E:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x58
	bl ov49_0225BA40
	b _0225BC40
_0225BC1C:
	ldr r0, [sp, #0x40]
	mov r7, #0xc1
	lsl r7, r7, #0xa
	cmp r0, #0
	bne _0225BC34
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x57
	bl ov49_0225BA40
	b _0225BC40
_0225BC34:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x58
	bl ov49_0225BA40
_0225BC40:
	ldr r0, [r6]
	mov r1, #4
	mov r2, #0
	bl BgFillTilemapBufferAndSchedule
	ldr r0, [r6]
	mov r1, #5
	mov r2, #0
	bl BgFillTilemapBufferAndSchedule
	ldr r0, [r6]
	mov r1, #6
	mov r2, #0
	bl BgFillTilemapBufferAndSchedule
	add r0, r5, #0
	bl ov49_0225C3C0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x5c
	mov r3, #4
	bl ov49_0225BB14
	ldr r0, [sp, #0x34]
	bl PlayerProfile_New
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	bl ov45_0222A844
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x2c
	str r7, [sp, #8]
	bl ov49_0225C3DC
	ldr r0, [sp, #0x10]
	bl PlayerProfile_GetTrainerID_VisibleHalf
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov49_0225B3A8
	mov r0, #0x7a
	str r0, [sp]
	mov r2, #0
	ldr r0, _0225BE9C ; =0x00010200
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x31
	bl ov49_0225C414
	mov r2, #0
	str r2, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x2d
	str r7, [sp, #8]
	bl ov49_0225C3DC
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225C470
	mov r0, #0x7a
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0x32
	bl ov49_0225C414
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225C460
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	mov r3, #0x2e
	str r7, [sp, #8]
	bl ov49_0225C3DC
	ldr r0, [sp, #0x38]
	bl ov45_0222AA84
	cmp r0, #0
	bne _0225BD3E
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x37
	bl ov49_0225C3DC
	b _0225BD60
_0225BD3E:
	ldr r2, [sp, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225C480
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x33
	bl ov49_0225C3DC
_0225BD60:
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225C460
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0225BE06
	mov r0, #1
	str r0, [r5]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225C470
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x38
	str r7, [sp, #8]
	bl ov49_0225C3DC
	ldr r2, [sp, #0x48]
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225C4B0
	mov r0, #6
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3b
	bl ov49_0225C3DC
	mov r0, #0x5a
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3c
	bl ov49_0225C3DC
	mov r0, #6
	str r0, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3d
	bl ov49_0225C3DC
	mov r0, #0x5a
	str r0, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3e
	bl ov49_0225C3DC
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225C460
	b _0225BE3A
_0225BE06:
	mov r1, #0
	str r1, [r5]
	mov r0, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x30
	str r7, [sp, #8]
	bl ov49_0225C3DC
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225C460
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x34]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_0225C4CC
_0225BE3A:
	ldr r0, [sp, #0x38]
	bl ov45_0222AAC8
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	ldr r2, [sp, #0x30]
	str r0, [sp, #4]
	ldr r3, [sp, #0x34]
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_0225BFF0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _0225BE6A
	ldr r0, [sp, #0x38]
	bl ov45_0222A9CC
	cmp r0, #1
	bne _0225BE66
	mov r0, #0x61
	b _0225BE70
_0225BE66:
	mov r0, #0
	b _0225BE70
_0225BE6A:
	ldr r0, [sp, #0x38]
	bl ov45_0222AA5C
_0225BE70:
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r3, [sp, #0x34]
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_0225C180
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_0225BEA0
	ldr r0, [sp, #0x10]
	bl Heap_Free
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225BE98: .word 0x00070800
_0225BE9C: .word 0x00010200
	thumb_func_end ov49_0225BBD0

	thumb_func_start ov49_0225BEA0
ov49_0225BEA0: ; 0x0225BEA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r0, [sp, #0x48]
	ldr r6, _0225BF78 ; =ov49_0226978C
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, _0225BF7C ; =ov49_022696F8
	add r5, r2, #0
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r4, #2
_0225BEB8:
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x24]
	bl ov45_0222AAEC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _0225BF60
	bl ov45_0222D7C0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	bl sub_020776B4
	str r0, [sp, #0x28]
	add r0, r7, #0
	bl sub_02077678
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	mov r2, #1
	bl GfGfxLoader_LoadFromNarc
	add r1, sp, #0x30
	str r0, [sp, #0x2c]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #0x20]
	mov r1, #6
	ldrh r0, [r0]
	add r3, r1, #0
	add r3, #0xfa
	str r0, [sp]
	ldr r2, [sp, #0x30]
	ldr r0, [r5]
	ldr r2, [r2, #0x14]
	bl BG_LoadCharTilesData
	ldr r0, [sp, #0x2c]
	bl Heap_Free
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	lsl r3, r4, #0x18
	str r6, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	ldr r0, [r5]
	mov r1, #6
	mov r2, #0x1a
	lsr r3, r3, #0x18
	bl CopyToBgTilemapRect
	add r0, r7, #0
	bl sub_0207769C
	mov r1, #4
	add r0, #0xb
	str r1, [sp]
	mov r1, #2
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r3, r4, #0x18
	ldr r0, [r5]
	mov r1, #6
	mov r2, #0x1a
	lsr r3, r3, #0x18
	bl BgTilemapRectChangePalette
	ldr r0, [r5]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
_0225BF60:
	ldr r0, [sp, #0x20]
	add r6, #0x10
	add r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	blt _0225BEB8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225BF78: .word ov49_0226978C
_0225BF7C: .word ov49_022696F8
	thumb_func_end ov49_0225BEA0

	thumb_func_start ov49_0225BF80
ov49_0225BF80: ; 0x0225BF80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #1
	bne _0225BF92
	mov r0, #0
	str r0, [r5]
	b _0225BF98
_0225BF92:
	add r1, r4, #0
	bl ov49_0225C78C
_0225BF98:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225C148
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225C328
	ldr r0, [r4]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225BF80

	thumb_func_start ov49_0225BFC4
ov49_0225BFC4: ; 0x0225BFC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov49_0225C148
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov49_0225BFF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225BFC4

	thumb_func_start ov49_0225BFEC
ov49_0225BFEC: ; 0x0225BFEC
	ldr r0, [r0]
	bx lr
	thumb_func_end ov49_0225BFEC

	thumb_func_start ov49_0225BFF0
ov49_0225BFF0: ; 0x0225BFF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r0, #0
	ldr r0, [sp, #0x90]
	add r4, r1, #0
	add r6, r3, #0
	str r2, [sp, #0x2c]
	cmp r0, #0x1b
	blo _0225C006
	bl GF_AssertFail
_0225C006:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _0225C010
	bl GF_AssertFail
_0225C010:
	ldr r0, [sp, #0x90]
	mov r1, #3
	bl _u32_div_f
	add r7, r0, #0
	ldr r0, [sp, #0x90]
	mov r1, #3
	bl _u32_div_f
	str r1, [sp, #0x30]
	lsl r0, r7, #1
	str r0, [sp, #0x34]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	add r1, #0xcc
	ldr r0, [r4, r1]
	add r2, r7, r2
	ldr r1, [sp, #0x2c]
	add r2, #0x3d
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	str r0, [r5, #0x58]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	cmp r0, #0
	bne _0225C052
	bl GF_AssertFail
_0225C052:
	ldr r0, [r5, #0x58]
	bl sub_0200A740
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, #0xd0
	ldr r0, [r4, r1]
	ldr r1, [sp, #0x2c]
	mov r2, #0x59
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	str r0, [r5, #0x5c]
	bl SpriteTransfer_CreatePlttTransferTask
	cmp r0, #0
	bne _0225C082
	bl GF_AssertFail
_0225C082:
	ldr r0, [r5, #0x5c]
	bl sub_0200A740
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	add r1, #0xd4
	ldr r0, [r4, r1]
	add r2, r7, r2
	ldr r1, [sp, #0x2c]
	add r2, #0x3c
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r5, #0x60]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	add r1, #0xd8
	ldr r0, [r4, r1]
	add r2, r7, r2
	ldr r1, [sp, #0x2c]
	add r2, #0x3b
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r5, #0x64]
	mov r0, #0
	add r2, sp, #0x38
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x64
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x65
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	add r2, r1, #0
	str r0, [sp, #0x10]
	add r2, #0xcc
	ldr r2, [r4, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xd0
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xd4
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xd8
	ldr r2, [r4, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r4, #4]
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	mov r0, #0x10
	str r0, [sp, #0x4c]
	mov r0, #2
	str r0, [sp, #0x50]
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [sp, #0x40]
	mov r0, #0x66
	lsl r0, r0, #0xe
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	str r6, [sp, #0x54]
	bl Sprite_Create
	ldr r1, [sp, #0x30]
	str r0, [r5, #0x54]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #0x94]
	bl Sprite_SetDrawFlag
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225BFF0

	thumb_func_start ov49_0225C148
ov49_0225C148: ; 0x0225C148
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	bl Sprite_Delete
	mov r0, #0
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x58]
	bl SpriteTransfer_DeleteCharTransferTask
	ldr r0, [r5, #0x5c]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r7, #0x13
	mov r6, #0
	lsl r7, r7, #4
_0225C16A:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x58]
	bl DestroySingle2DGfxResObj
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #4
	cmp r6, #4
	blt _0225C16A
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C148

	thumb_func_start ov49_0225C180
ov49_0225C180: ; 0x0225C180
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	add r6, r0, #0
	ldr r0, [r6, #0x68]
	add r5, r1, #0
	str r3, [sp, #0x2c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _0225C196
	bl GF_AssertFail
_0225C196:
	ldr r1, _0225C324 ; =ov49_0226988C
	mov r0, #0
_0225C19A:
	ldrh r2, [r1]
	cmp r4, r2
	bne _0225C1AA
	ldrh r2, [r1, #2]
	str r2, [sp, #0x34]
	ldrh r2, [r1, #4]
	str r2, [sp, #0x30]
	ldrh r7, [r1, #6]
_0225C1AA:
	add r0, r0, #1
	add r1, #8
	cmp r0, #0x12
	blo _0225C19A
	ldr r0, [sp, #0x34]
	mov r1, #2
	add r2, sp, #0x7c
	bl sub_02070D84
	mov r1, #0x65
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, #0xcb
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x80]
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r6, #0x6c]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	cmp r0, #0
	bne _0225C1E4
	bl GF_AssertFail
_0225C1E4:
	mov r1, #0x65
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r1, #0xcf
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x84]
	mov r3, #0
	bl AddPlttResObjFromNarc
	str r0, [r6, #0x70]
	bl GF2DGfxResObj_GetPlttDataPtr
	bl ov49_0225C368
	ldr r0, [r6, #0x70]
	bl SpriteTransfer_CreatePlttTransferTask
	cmp r0, #0
	bne _0225C21A
	bl GF_AssertFail
_0225C21A:
	ldr r0, [r6, #0x70]
	bl sub_0200A740
	mov r1, #0x65
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, #0xd3
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x88]
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r6, #0x74]
	mov r1, #0x65
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, #0xd7
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x8c]
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r6, #0x78]
	mov r0, #0
	add r2, sp, #0x38
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x65
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x66
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r2, #3
	str r2, [sp, #0x10]
	add r2, r1, #0
	add r2, #0xcb
	ldr r2, [r5, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xcf
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xd3
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xd7
	ldr r2, [r5, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r5, #4]
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	mov r0, #0x20
	str r0, [sp, #0x4c]
	mov r0, #2
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0225C2D4
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225C2E2
_0225C2D4:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225C2E2:
	bl _ffix
	str r0, [sp, #0x40]
	cmp r7, #0
	beq _0225C2FE
	lsl r0, r7, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225C30C
_0225C2FE:
	lsl r0, r7, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225C30C:
	bl _ffix
	mov r1, #1
	lsl r1, r1, #0x14
	add r0, r0, r1
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	bl Sprite_Create
	str r0, [r6, #0x68]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225C324: .word ov49_0226988C
	thumb_func_end ov49_0225C180

	thumb_func_start ov49_0225C328
ov49_0225C328: ; 0x0225C328
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x68]
	add r4, r1, #0
	bl Sprite_GetImageProxy
	bl ObjCharTransfer_DeleteTaskCopyByProxyPtr
	ldr r0, [r5, #0x68]
	bl Sprite_Delete
	mov r0, #0
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x6c]
	bl SpriteTransfer_DeleteCharTransferTask
	ldr r0, [r5, #0x70]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r7, #0x13
	mov r6, #0
	lsl r7, r7, #4
_0225C354:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x6c]
	bl DestroySingle2DGfxResObj
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #4
	cmp r6, #4
	blt _0225C354
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225C328

	thumb_func_start ov49_0225C368
ov49_0225C368: ; 0x0225C368
	push {r4, r5, r6, r7}
	ldr r1, [r0, #8]
	ldr r4, [r0, #0xc]
	lsr r3, r1, #1
	mov r2, #0
	cmp r3, #0
	ble _0225C3BC
	mov r5, #0xc8
_0225C378:
	ldrh r6, [r4]
	mov r0, #0x1f
	add r2, r2, #1
	add r1, r6, #0
	asr r7, r6, #5
	and r1, r0
	and r0, r7
	asr r7, r6, #0xa
	mov r6, #0x1f
	and r6, r7
	mov r7, #0x1d
	mul r7, r6
	mov r6, #0x4c
	mul r6, r1
	mov r1, #0x97
	mul r1, r0
	add r0, r6, r1
	add r0, r7, r0
	asr r6, r0, #8
	lsl r0, r6, #8
	add r7, r6, #0
	asr r1, r0, #8
	lsl r0, r6, #7
	mul r7, r5
	asr r0, r0, #8
	asr r6, r7, #8
	lsl r0, r0, #0xa
	lsl r6, r6, #5
	orr r0, r6
	orr r0, r1
	strh r0, [r4]
	add r4, r4, #2
	cmp r2, r3
	blt _0225C378
_0225C3BC:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov49_0225C368

	thumb_func_start ov49_0225C3C0
ov49_0225C3C0: ; 0x0225C3C0
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #4
	add r6, r4, #0
_0225C3C8:
	add r0, r5, #0
	add r1, r6, #0
	bl FillWindowPixelBuffer
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _0225C3C8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C3C0

	thumb_func_start ov49_0225C3DC
ov49_0225C3DC: ; 0x0225C3DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	mov r1, #1
	add r2, r3, #0
	bl ov49_0225B388
	add r3, sp, #0x10
	add r2, r0, #0
	ldrb r0, [r3, #0x14]
	mov r1, #0
	add r5, r5, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r0, r4, #4
	ldrb r3, [r3, #0x10]
	add r0, r5, r0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C3DC

	thumb_func_start ov49_0225C414
ov49_0225C414: ; 0x0225C414
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	mov r1, #1
	add r2, r3, #0
	bl ov49_0225B388
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	sub r3, r1, r0
	bpl _0225C43C
	mov r3, #0
_0225C43C:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	add r2, r5, #4
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	lsl r0, r4, #4
	add r0, r2, r0
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C414

	thumb_func_start ov49_0225C460
ov49_0225C460: ; 0x0225C460
	ldr r3, _0225C46C ; =ScheduleWindowCopyToVram
	add r2, r0, #4
	lsl r0, r1, #4
	add r0, r2, r0
	bx r3
	nop
_0225C46C: .word ScheduleWindowCopyToVram
	thumb_func_end ov49_0225C460

	thumb_func_start ov49_0225C470
ov49_0225C470: ; 0x0225C470
	ldr r3, _0225C47C ; =ov49_0225B3C8
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	bx r3
	nop
_0225C47C: .word ov49_0225B3C8
	thumb_func_end ov49_0225C470

	thumb_func_start ov49_0225C480
ov49_0225C480: ; 0x0225C480
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov45_0222AA84
	add r4, r0, #0
	add r0, r6, #0
	bl ov45_0222AAA8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_0225B408
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ov49_0225B418
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C480

	thumb_func_start ov49_0225C4B0
ov49_0225C4B0: ; 0x0225C4B0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r2, #0
	mov r4, #0
_0225C4B8:
	ldrh r2, [r5]
	add r0, r6, #0
	add r1, r4, #0
	bl ov49_0225B42C
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0225C4B8
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_0225C4B0

	thumb_func_start ov49_0225C4CC
ov49_0225C4CC: ; 0x0225C4CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	add r7, r0, #0
	ldr r0, [sp, #0xb0]
	add r5, r1, #0
	str r0, [sp, #0xb0]
	mov r0, #0xd7
	add r1, r3, #0
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	bl NARC_New
	str r0, [sp, #0x50]
	ldr r0, [sp, #0xb4]
	bl ov45_0222A99C
	str r0, [sp, #0x44]
	ldr r0, [sp, #0xb4]
	bl ov45_0222A9CC
	str r0, [sp, #0x4c]
	ldr r0, _0225C77C ; =ov49_02269774
	mov r6, #0
	str r0, [sp, #0x40]
	ldr r0, _0225C780 ; =ov49_02269704
	add r4, r7, #0
	str r0, [sp, #0x3c]
	ldr r0, _0225C784 ; =ov49_022696FC
	str r0, [sp, #0x38]
_0225C506:
	cmp r6, #2
	bne _0225C526
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne _0225C546
	add r1, r4, #0
	add r1, #0xac
	mov r0, #0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
	b _0225C5EC
_0225C526:
	cmp r6, #3
	bne _0225C546
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _0225C546
	add r1, r4, #0
	add r1, #0xac
	mov r0, #0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
	b _0225C5EC
_0225C546:
	ldr r0, [sp, #0x40]
	ldrh r0, [r0]
	cmp r0, #0xd7
	bne _0225C554
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x34]
	b _0225C558
_0225C554:
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x34]
_0225C558:
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x40]
	ldrh r0, [r0, #4]
	ldr r1, [sp, #0x34]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r2, [r2, #2]
	ldr r0, [r5, r0]
	bl AddPlttResObjFromOpenNarc
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl SpriteTransfer_CreatePlttTransferTask
	cmp r0, #0
	bne _0225C596
	bl GF_AssertFail
_0225C596:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0200A740
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x3c]
	str r0, [sp, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x34]
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1]
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x38]
	str r0, [sp, #8]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x34]
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
_0225C5EC:
	ldr r0, [sp, #0x40]
	add r6, r6, #1
	add r0, r0, #6
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r4, r4, #4
	add r0, r0, #2
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	add r0, r0, #2
	str r0, [sp, #0x38]
	cmp r6, #4
	bge _0225C608
	b _0225C506
_0225C608:
	ldr r0, _0225C788 ; =ov49_0226991C
	mov r6, #0
	str r0, [sp, #0x48]
_0225C60E:
	ldr r0, [sp, #0xb0]
	add r1, r6, #0
	bl ov45_0222A92C
	add r4, r0, #0
	ldr r0, [sp, #0xb0]
	add r1, r6, #0
	bl ov45_0222A964
	add r1, r0, #0
	cmp r4, #0x18
	bne _0225C632
	add r1, r7, #0
	add r1, #0xbc
	mov r0, #0
	str r0, [r1]
	str r0, [r7, #0x7c]
	b _0225C760
_0225C632:
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x4c]
	add r0, r4, #0
	bl ov49_0225C828
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _0225C648
	ldr r1, [sp, #0x2c]
	b _0225C64A
_0225C648:
	ldr r1, [sp, #0x50]
_0225C64A:
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrh r2, [r4, #2]
	ldr r0, [r5, r0]
	bl AddCharResObjFromOpenNarc
	add r1, r7, #0
	add r1, #0xbc
	str r0, [r1]
	add r0, r7, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	cmp r0, #0
	bne _0225C67E
	bl GF_AssertFail
_0225C67E:
	add r0, r7, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_0200A740
	ldrb r2, [r4]
	mov r0, #0
	mvn r0, r0
	add r2, #0x96
	str r2, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	str r0, [sp, #0x14]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x96
	str r0, [sp, #0x18]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, r2, #0
	str r0, [sp, #0x1c]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x54
	bl CreateSpriteResourcesHeader
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x48]
	str r0, [sp, #0x78]
	add r0, sp, #0x54
	str r0, [sp, #0x7c]
	mov r0, #0
	str r0, [sp, #0x8c]
	mov r0, #2
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x30]
	add r3, sp, #0x80
	str r0, [sp, #0x94]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225C708
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225C716
_0225C708:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225C716:
	bl _ffix
	ldr r1, [sp, #0x80]
	add r0, r1, r0
	str r0, [sp, #0x80]
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225C73A
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225C748
_0225C73A:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225C748:
	bl _ffix
	ldr r1, [sp, #0x84]
	add r0, r1, r0
	str r0, [sp, #0x84]
	add r0, sp, #0x78
	bl Sprite_Create
	str r0, [r7, #0x7c]
	ldrb r1, [r4, #1]
	bl Sprite_SetPalOffsetRespectVramOffset
_0225C760:
	ldr r0, [sp, #0x48]
	add r6, r6, #1
	add r0, #0xc
	add r7, r7, #4
	str r0, [sp, #0x48]
	cmp r6, #0xc
	bge _0225C770
	b _0225C60E
_0225C770:
	ldr r0, [sp, #0x50]
	bl NARC_Delete
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225C77C: .word ov49_02269774
_0225C780: .word ov49_02269704
_0225C784: .word ov49_022696FC
_0225C788: .word ov49_0226991C
	thumb_func_end ov49_0225C4CC

	thumb_func_start ov49_0225C78C
ov49_0225C78C: ; 0x0225C78C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r7, #0
	add r4, r5, #0
_0225C796:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	beq _0225C7CC
	ldr r0, [r4, #0x7c]
	bl Sprite_Delete
	mov r0, #0
	str r0, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl SpriteTransfer_DeleteCharTransferTask
	mov r0, #0x13
	add r1, r4, #0
	lsl r0, r0, #4
	add r1, #0xbc
	ldr r0, [r6, r0]
	ldr r1, [r1]
	bl DestroySingle2DGfxResObj
	add r1, r4, #0
	add r1, #0xbc
	mov r0, #0
	str r0, [r1]
_0225C7CC:
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #0xc
	blt _0225C796
	mov r4, #0
	add r7, r4, #0
_0225C7D8:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _0225C81C
	bl SpriteTransfer_DeletePlttTransferTask
	mov r0, #0x4d
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xac
	ldr r0, [r6, r0]
	ldr r1, [r1]
	bl DestroySingle2DGfxResObj
	mov r0, #0x4e
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xec
	ldr r0, [r6, r0]
	ldr r1, [r1]
	bl DestroySingle2DGfxResObj
	mov r0, #0x4f
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xfc
	ldr r0, [r6, r0]
	ldr r1, [r1]
	bl DestroySingle2DGfxResObj
	add r0, r5, #0
	add r0, #0xac
	str r7, [r0]
_0225C81C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225C7D8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C78C

	thumb_func_start ov49_0225C828
ov49_0225C828: ; 0x0225C828
	cmp r1, r2
	bne _0225C834
	ldr r1, _0225C83C ; =ov49_02269764
	lsl r0, r3, #3
	add r0, r1, r0
	bx lr
_0225C834:
	ldr r1, _0225C840 ; =ov49_022699AC
	lsl r0, r0, #3
	add r0, r1, r0
	bx lr
	.balign 4, 0
_0225C83C: .word ov49_02269764
_0225C840: .word ov49_022699AC
	thumb_func_end ov49_0225C828

	thumb_func_start ov49_0225C844
ov49_0225C844: ; 0x0225C844
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, [r1]
	ldr r1, [sp, #4]
	str r2, [sp, #8]
	ldr r2, _0225C89C ; =ov49_0226970C
	add r1, #0xc
	add r7, r3, #0
	bl AddWindow
	ldr r4, [sp, #4]
	ldr r5, [sp, #4]
	mov r6, #0
	add r4, #0x2c
_0225C862:
	add r1, r6, #0
	ldr r0, [sp, #8]
	add r1, #0x38
	mov r2, #0
	add r3, r4, #0
	str r7, [sp]
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	str r0, [r5, #0x20]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _0225C862
	ldr r0, _0225C8A0 ; =ov49_022696F4
	ldr r2, _0225C8A4 ; =ov49_0225CB50
	ldr r3, [sp, #4]
	mov r1, #1
	str r7, [sp]
	bl TouchHitboxController_Create
	ldr r1, [sp, #4]
	str r0, [r1, #0x1c]
	ldr r0, [sp, #4]
	mov r1, #1
	strh r1, [r0, #6]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225C89C: .word ov49_0226970C
_0225C8A0: .word ov49_022696F4
_0225C8A4: .word ov49_0225CB50
	thumb_func_end ov49_0225C844

	thumb_func_start ov49_0225C8A8
ov49_0225C8A8: ; 0x0225C8A8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x1c]
	bl TouchHitboxController_Destroy
	add r0, r6, #0
	add r0, #0xc
	bl RemoveWindow
	mov r4, #0
	add r5, r6, #0
_0225C8BE:
	ldr r0, [r5, #0x20]
	bl Heap_Free
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0225C8BE
	mov r0, #0
	strb r0, [r6, #2]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C8A8

	thumb_func_start ov49_0225C8D4
ov49_0225C8D4: ; 0x0225C8D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5, #6]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _0225C8F2
	ldr r0, [r5, #0x1c]
	bl TouchHitboxController_IsTriggered
	b _0225C8F6
_0225C8F2:
	mov r0, #1
	strb r0, [r5, #3]
_0225C8F6:
	ldrb r0, [r5, #2]
	cmp r0, #1
	bne _0225C912
	mov r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0225C912
	strb r2, [r5, #2]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	str r4, [sp]
	bl ov49_0225CAD4
_0225C912:
	ldrb r1, [r5, #3]
	ldrh r0, [r5, #4]
	cmp r1, r0
	beq _0225C968
	strh r1, [r5, #4]
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _0225C932
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	add r3, r7, #0
	str r4, [sp]
	bl ov49_0225CAD4
	b _0225C954
_0225C932:
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _0225C948
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	bl ov49_0225CAD4
	b _0225C954
_0225C948:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ov49_0225CAD4
_0225C954:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0225C968
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _0225C968
	mov r0, #1
	strb r0, [r5, #2]
	str r0, [sp, #4]
	strh r0, [r5]
_0225C968:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C8D4

	thumb_func_start ov49_0225C970
ov49_0225C970: ; 0x0225C970
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r6, r1, #0
	ldr r4, [sp, #0x34]
	str r0, [sp, #8]
	ldr r7, [sp, #0x30]
	str r3, [sp, #0x14]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [r6]
	add r0, r7, #0
	mov r1, #0x37
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	strh r0, [r5, #8]
	ldr r0, [sp, #0x14]
	bl ov45_0222AAC8
	strh r0, [r5, #0xa]
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r2, [r6]
	add r0, r7, #0
	mov r3, #6
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r2, [r5, #0xa]
	add r0, r6, #0
	add r1, r7, #0
	add r2, #0x1b
	mov r3, #6
	bl ov49_0225BB14
	ldr r0, [sp, #0x10]
	mov r1, #1
	mov r2, #0x3f
	bl ov49_0225B388
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	ldr r0, _0225CA2C ; =0x000F0E00
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	str r1, [sp, #0xc]
	add r0, #0xc
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _0225CA1A
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	bl ov49_0225CAD4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0225CA1A:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ov49_0225CAD4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225CA2C: .word 0x000F0E00
	thumb_func_end ov49_0225C970

	thumb_func_start ov49_0225CA30
ov49_0225CA30: ; 0x0225CA30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp, #0x10]
	ldr r4, [sp, #0x28]
	cmp r7, #3
	blo _0225CA46
	bl GF_AssertFail
_0225CA46:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r6]
	mov r1, #0x37
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #1
	strh r0, [r5, #8]
	mov r0, #5
	strh r7, [r5, #0xa]
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r0, [sp, #0x10]
	ldr r2, [r6]
	add r1, #0x5d
	mov r3, #6
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _0225CA96
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov49_0225CAD4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0225CA96:
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	bl ov49_0225CAD4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225CA30

	thumb_func_start ov49_0225CAA8
ov49_0225CAA8: ; 0x0225CAA8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225CAA8

	thumb_func_start ov49_0225CAD4
ov49_0225CAD4: ; 0x0225CAD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x20
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp]
	mov r1, #0x15
	str r1, [sp, #4]
	lsl r1, r6, #2
	add r1, r5, r1
	ldr r1, [r1, #0x2c]
	add r7, r3, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r3, #3
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	bl CopyToBgTilemapRect
	ldr r0, [r4]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	ldrh r0, [r5, #8]
	cmp r0, #1
	bne _0225CB34
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r2, _0225CB48 ; =ov49_022696EC
	str r0, [sp, #4]
	ldrh r3, [r5, #0xa]
	ldrb r2, [r2, r6]
	add r0, r4, #0
	lsl r3, r3, #1
	add r2, r2, r3
	add r1, r7, #0
	add r2, #0x60
	mov r3, #6
	bl ov49_0225BB14
_0225CB34:
	ldr r3, _0225CB4C ; =ov49_022696F0
	ldr r0, [r4]
	ldrsb r3, [r3, r6]
	mov r1, #6
	mov r2, #3
	bl ScheduleSetBgPosText
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225CB48: .word ov49_022696EC
_0225CB4C: .word ov49_022696F0
	thumb_func_end ov49_0225CAD4


    .rodata

ov49_022696E8: ; 0x022696E8
	.byte 0x14, 0x88, 0x00, 0x00

ov49_022696EC: ; 0x022696EC
	.byte 0x00, 0x01, 0x00, 0x00

ov49_022696F0: ; 0x022696F0
	.byte 0x00, 0x09, 0x06, 0x00

ov49_022696F4: ; 0x022696F4
	.byte 0x20, 0xA0, 0x28, 0xD8

ov49_022696F8: ; 0x022696F8
	.byte 0xE4, 0x02, 0xEC, 0x02

ov49_022696FC: ; 0x022696FC
	.byte 0x03, 0x00, 0x69, 0x00
	.byte 0x34, 0x00, 0x38, 0x00

ov49_02269704: ; 0x02269704
	.byte 0x02, 0x00, 0x68, 0x00, 0x33, 0x00, 0x37, 0x00

ov49_0226970C: ; 0x0226970C
	.byte 0x05, 0x01, 0x00, 0x18
	.byte 0x03, 0x05, 0xD0, 0x01

ov49_02269714: ; 0x02269714
	.byte 0x08, 0x03, 0x00, 0x00, 0x09, 0x03, 0x00, 0x00, 0x20, 0x03, 0x00, 0x00
	.byte 0xFE, 0x02, 0x00, 0x00

ov49_02269724: ; 0x02269724
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00

ov49_02269734: ; 0x02269734
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00

ov49_02269744: ; 0x02269744
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x77, 0x00, 0x00, 0x00

ov49_02269754: ; 0x02269754
	.byte 0x00, 0x00, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10
	.byte 0x84, 0x10, 0x84, 0x10

ov49_02269764: ; 0x02269764
	.byte 0x02, 0x00, 0x32, 0x00, 0xF8, 0xFF, 0xFA, 0xFF, 0x03, 0x00, 0x36, 0x00
	.byte 0xF8, 0xFF, 0xFA, 0xFF

ov49_02269774: ; 0x02269774
	.byte 0xD7, 0x00, 0x00, 0x00, 0x08, 0x00, 0xD1, 0x00, 0x66, 0x00, 0x02, 0x00
	.byte 0xD7, 0x00, 0x31, 0x00, 0x01, 0x00, 0xD7, 0x00, 0x35, 0x00, 0x01, 0x00

ov49_0226978C: ; 0x0226978C
	.byte 0xE4, 0x02, 0xE5, 0x02
	.byte 0xE6, 0x02, 0xE7, 0x02, 0xE8, 0x02, 0xE9, 0x02, 0xEA, 0x02, 0xEB, 0x02, 0xEC, 0x02, 0xED, 0x02
	.byte 0xEE, 0x02, 0xEF, 0x02, 0xF0, 0x02, 0xF1, 0x02, 0xF2, 0x02, 0xF3, 0x02

ov49_022697AC: ; 0x022697AC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00
	.byte 0x00, 0x08, 0x00, 0x10, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov49_022697CC: ; 0x022697CC
	.byte 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00

ov49_022697F4: ; 0x022697F4
	.byte 0x06, 0x08, 0x02, 0x10, 0x04, 0x05, 0x40, 0x01, 0x06, 0x01, 0x07, 0x1E
	.byte 0x06, 0x05, 0x80, 0x01, 0x06, 0x01, 0x0E, 0x13, 0x04, 0x05, 0x34, 0x02, 0x06, 0x01, 0x13, 0x13
	.byte 0x04, 0x05, 0x80, 0x02, 0x06, 0x00, 0x0E, 0x16, 0x08, 0x05, 0x34, 0x02

ov49_0226981C: ; 0x0226981C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov49_0226988C: ; 0x0226988C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x23, 0x00, 0x61, 0x00, 0x01, 0x00, 0x26, 0x00, 0x24, 0x00, 0x03, 0x00, 0x3C, 0x00
	.byte 0x26, 0x00, 0x19, 0x00, 0x05, 0x00, 0x06, 0x00, 0x2C, 0x00, 0x20, 0x00, 0x0B, 0x00, 0x18, 0x00
	.byte 0x26, 0x00, 0x2C, 0x00, 0x1F, 0x00, 0x39, 0x00, 0x28, 0x00, 0x28, 0x00, 0x32, 0x00, 0x30, 0x00
	.byte 0x2C, 0x00, 0x1A, 0x00, 0x33, 0x00, 0x0E, 0x00, 0x2C, 0x00, 0x25, 0x00, 0x3E, 0x00, 0x20, 0x00
	.byte 0x1D, 0x00, 0x28, 0x00, 0x46, 0x00, 0x31, 0x00, 0x2A, 0x00, 0x2C, 0x00, 0x06, 0x00, 0x03, 0x00
	.byte 0x27, 0x00, 0x22, 0x00, 0x07, 0x00, 0x0A, 0x00, 0x28, 0x00, 0x24, 0x00, 0x0D, 0x00, 0x24, 0x00
	.byte 0x26, 0x00, 0x29, 0x00, 0x0E, 0x00, 0x19, 0x00, 0x24, 0x00, 0x2A, 0x00, 0x23, 0x00, 0x55, 0x00
	.byte 0x26, 0x00, 0x26, 0x00, 0x25, 0x00, 0x23, 0x00, 0x26, 0x00, 0x27, 0x00, 0x2A, 0x00, 0x12, 0x00
	.byte 0x26, 0x00, 0x23, 0x00, 0x3F, 0x00, 0x21, 0x00, 0x28, 0x00, 0x2C, 0x00

ov49_0226991C: ; 0x0226991C
	.byte 0x00, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x03, 0x00, 0x00, 0x00, 0x19, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x06, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x09, 0x00, 0x00, 0x00, 0x19, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x03, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00
	.byte 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x06, 0x00, 0x00, 0x00, 0x1B, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x09, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00

ov49_022699AC: ; 0x022699AC
	.byte 0x00, 0x00, 0x01, 0x00
	.byte 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x06, 0x04, 0x00, 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x01, 0x07, 0x00
	.byte 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x02, 0x0A, 0x00, 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x06, 0x0D, 0x00
	.byte 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x05, 0x10, 0x00, 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x03, 0x13, 0x00
	.byte 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x04, 0x16, 0x00, 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x00, 0x19, 0x00
	.byte 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x07, 0x1C, 0x00, 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x04, 0x1F, 0x00
	.byte 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x01, 0x22, 0x00, 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x05, 0x25, 0x00
	.byte 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x05, 0x28, 0x00, 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x02, 0x2B, 0x00
	.byte 0xF8, 0xFF, 0xFA, 0xFF, 0x00, 0x03, 0x2E, 0x00, 0xF8, 0xFF, 0xFA, 0xFF, 0x01, 0x00, 0x67, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x6A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x6D, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x76, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x73, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x79, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x00

