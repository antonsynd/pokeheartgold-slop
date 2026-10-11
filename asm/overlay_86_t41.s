	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E73EC
	.public ov86_021E7418

	.text

	.text
	thumb_func_start ov86_021E73EC
ov86_021E73EC: ; 0x021E73EC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl GetPokedexDataNarcID
	mov r1, #1
	str r1, [sp]
	add r1, sp, #8
	add r5, #0x12
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x79
	bl GfGfxLoader_LoadFromNarc_GetSizeOut
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov86_021E73EC

	thumb_func_start ov86_021E7418
ov86_021E7418: ; 0x021E7418
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0x89
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	mov r1, #0xb
	add r2, sp, #0x10
	bl sub_020312C4
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _021E74C2
	mov r0, #0
	str r0, [sp, #4]
_021E7438:
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	bl ov86_021E73EC
	add r7, r0, #0
	ldr r0, [sp, #4]
	lsl r1, r0, #3
	ldr r0, [sp]
	add r5, r0, r1
	ldr r1, [sp, #0xc]
	mov r0, #0x79
	lsl r1, r1, #1
	bl Heap_Alloc
	mov r1, #0x26
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _021E74AE
_021E7462:
	ldr r0, [sp]
	lsl r6, r4, #1
	ldrb r0, [r0, #6]
	bl sub_0205C144
	add r2, r0, #0
	mov r0, #0x89
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r3, [r7, r6]
	ldr r1, [sp, #8]
	bl sub_020312E0
	cmp r0, #0
	beq _021E74A2
	mov r2, #0x99
	mov r0, #0x26
	lsl r2, r2, #2
	lsl r0, r0, #4
	ldr r2, [r5, r2]
	ldrh r1, [r7, r6]
	ldr r0, [r5, r0]
	lsl r2, r2, #1
	strh r1, [r0, r2]
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r0, #1
	mov r0, #0x99
	lsl r0, r0, #2
	str r1, [r5, r0]
_021E74A2:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blo _021E7462
_021E74AE:
	add r0, r7, #0
	bl Heap_Free
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #0x1a
	blo _021E7438
_021E74C2:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021E74CC
	bl Heap_Free
_021E74CC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov86_021E7418

