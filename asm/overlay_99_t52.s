	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7258
	.public ov99_021E728C
	.public ov99_021E72C0
	.public ov99_021E738C
	.extern ov99_021E714C
	.extern ov99_021E7180
	.extern ov99_021E9F4C

	.text

	.text
	thumb_func_start ov99_021E7258
ov99_021E7258: ; 0x021E7258
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ov99_021E7180
	add r5, r0, #0
	mov r4, #0
	mov r7, #1
_021E7266:
	lsl r0, r4, #2
	add r1, r6, r0
	ldr r0, _021E7288 ; =0x00000444
	ldr r0, [r1, r0]
	add r1, r5, #0
	and r1, r7
	bl ManagedSprite_SetDrawFlag
	lsl r0, r5, #0x17
	lsr r5, r0, #0x18
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021E7266
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7288: .word 0x00000444
	thumb_func_end ov99_021E7258

	thumb_func_start ov99_021E728C
ov99_021E728C: ; 0x021E728C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl ov99_021E714C
	add r1, r0, #0
	mov r2, #0
	lsl r3, r1, #2
	ldr r1, _021E72BC ; =ov99_021E9F4C
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r1, [r1, r3]
	ldr r0, [r5, #8]
	ldr r3, [r5, #0xc]
	bl GfGfxLoader_LoadFromOpenNarc_GetSizeOut
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E72BC: .word ov99_021E9F4C
	thumb_func_end ov99_021E728C

	thumb_func_start ov99_021E72C0
ov99_021E72C0: ; 0x021E72C0
	push {r3, r4, r5, r6, r7, lr}
	add r1, sp, #0
	add r5, r0, #0
	bl ov99_021E728C
	mov r1, #0x3f
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [sp]
	mov r7, #0
	cmp r0, #0
	bls _021E7332
	add r6, r7, #0
_021E72DA:
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldrh r4, [r0, r6]
	cmp r4, #0
	beq _021E72EC
	ldr r0, _021E7384 ; =0x000001ED
	cmp r4, r0
	bls _021E72F0
_021E72EC:
	bl GF_AssertFail
_021E72F0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov99_021E7180
	cmp r0, #0
	beq _021E7328
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x17
	lsl r0, r0, #1
	add r0, r5, r0
	strh r4, [r0, #0x14]
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, _021E7388 ; =0xFFFFC01F
	and r0, r1
	lsl r1, r1, #0x12
	lsr r1, r1, #0x17
	add r1, r1, #1
	lsl r1, r1, #0x17
	lsr r1, r1, #0x12
	orr r1, r0
	mov r0, #0xfd
	lsl r0, r0, #2
	str r1, [r5, r0]
_021E7328:
	ldr r0, [sp]
	add r7, r7, #1
	add r6, r6, #2
	cmp r7, r0
	blo _021E72DA
_021E7332:
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x17
	beq _021E7380
	mov r1, #0x1e
	bl _u32_div_f
	mov r2, #0xfd
	lsl r2, r2, #2
	ldr r3, [r5, r2]
	mov r1, #0x1f
	bic r3, r1
	mov r1, #0x1f
	and r0, r1
	orr r0, r3
	str r0, [r5, r2]
	ldr r0, [r5, r2]
	mov r1, #0x1e
	lsl r0, r0, #0x12
	lsr r0, r0, #0x17
	bl _u32_div_f
	cmp r1, #0
	bne _021E7380
	mov r2, #0xfd
	lsl r2, r2, #2
	ldr r3, [r5, r2]
	mov r1, #0x1f
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x1b
	lsr r1, r1, #0x1b
	sub r3, r1, #1
	mov r1, #0x1f
	and r1, r3
	orr r0, r1
	str r0, [r5, r2]
_021E7380:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7384: .word 0x000001ED
_021E7388: .word 0xFFFFC01F
	thumb_func_end ov99_021E72C0

	thumb_func_start ov99_021E738C
ov99_021E738C: ; 0x021E738C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	mov r5, #0
	add r7, r0, #0
	str r2, [sp, #0x10]
	str r5, [sp, #0x14]
_021E739A:
	ldr r0, [sp, #0x10]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021E73A2:
	add r0, r4, r5
	add r1, r0, #1
	add r0, sp, #0x18
	strh r1, [r0]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, [r7]
	add r3, r3, r4
	lsl r3, r3, #0x18
	mov r1, #3
	add r2, sp, #0x18
	lsr r3, r3, #0x18
	bl LoadRectToBgTilemapRect
	add r4, r4, #1
	cmp r4, #2
	blt _021E73A2
	ldr r0, [sp, #0x10]
	add r5, r5, #2
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #2
	blt _021E739A
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov99_021E738C

