	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223B950
	.public ov57_0223B9C8

	.text

	.text
	thumb_func_start ov57_0223B950
ov57_0223B950: ; 0x0223B950
	push {r4, r5, r6, lr}
	sub sp, #0x48
	ldr r1, _0223B9BC ; =0x00000458
	add r5, r0, #0
	ldr r1, [r5, r1]
	add r0, sp, #0x38
	mov r2, #2
	bl GetPokemonSpriteCharAndPlttNarcIds
	ldr r0, _0223B9BC ; =0x00000458
	mov r1, #5
	ldr r0, [r5, r0]
	mov r2, #0
	bl GetMonData
	add r4, r0, #0
	ldr r0, _0223B9BC ; =0x00000458
	mov r1, #2
	ldr r0, [r5, r0]
	bl sub_0207083C
	add r6, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	str r6, [r5, r0]
	ldr r0, _0223B9C0 ; =0x0000045C
	lsl r2, r4, #0x10
	ldr r0, [r5, r0]
	add r1, sp, #0x10
	lsr r2, r2, #0x10
	mov r3, #1
	bl NARC_ReadPokepicAnimScript
	ldr r0, _0223B9C4 ; =0xFFFFFD80
	add r6, #0x30
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	mov r0, #0x71
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x38
	mov r2, #0xc0
	add r3, r6, #0
	bl PokepicManager_CreatePokepic
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x48
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223B9BC: .word 0x00000458
_0223B9C0: .word 0x0000045C
_0223B9C4: .word 0xFFFFFD80
	thumb_func_end ov57_0223B950

	thumb_func_start ov57_0223B9C8
ov57_0223B9C8: ; 0x0223B9C8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223BA14 ; =0x00000458
	mov r1, #5
	ldr r0, [r5, r0]
	mov r2, #0
	bl GetMonData
	add r4, r0, #0
	ldr r0, _0223BA14 ; =0x00000458
	ldr r0, [r5, r0]
	bl GetMonNature
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Pokepic_StartAnim
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r2, #0xa1
	str r0, [sp, #8]
	ldr r0, _0223BA18 ; =0x0000045C
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0xbc
	lsl r3, r4, #0x10
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	lsr r3, r3, #0x10
	bl sub_0207294C
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0223BA14: .word 0x00000458
_0223BA18: .word 0x0000045C
	thumb_func_end ov57_0223B9C8

