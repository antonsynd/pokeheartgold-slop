	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E71E4
	.public ov99_021E7208
	.extern ov99_021E71DC

	.text

	.text
	thumb_func_start ov99_021E71E4
ov99_021E71E4: ; 0x021E71E4
	push {r4, lr}
	add r4, r1, #0
	beq _021E71F0
	ldr r1, _021E7204 ; =0x000001ED
	cmp r4, r1
	bls _021E71F4
_021E71F0:
	mov r0, #0
	pop {r4, pc}
_021E71F4:
	bl ov99_021E71DC
	add r1, r4, #0
	mov r2, #0
	bl Pokedex_GetSeenFormByIdx
	pop {r4, pc}
	nop
_021E7204: .word 0x000001ED
	thumb_func_end ov99_021E71E4

	thumb_func_start ov99_021E7208
ov99_021E7208: ; 0x021E7208
	push {r4, lr}
	add r4, r1, #0
	beq _021E7214
	ldr r1, _021E7238 ; =0x000001ED
	cmp r4, r1
	bls _021E7218
_021E7214:
	mov r0, #0
	pop {r4, pc}
_021E7218:
	bl ov99_021E71DC
	add r1, r4, #0
	mov r2, #0
	bl Pokedex_SpeciesGetLastSeenGender
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E7234
	add r0, r4, #0
	mov r1, #0
	bl GetGenderBySpeciesAndPersonality
_021E7234:
	pop {r4, pc}
	nop
_021E7238: .word 0x000001ED
	thumb_func_end ov99_021E7208

