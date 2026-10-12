#include "constants/sndseq.h"
#include "constants/species.h"
#include "constants/maps.h"
#include "constants/pokemon.h"
#include "constants/flags.h"
#include "constants/vars.h"
#include "constants/items.h"
#include "constants/std_script.h"
#include "fielddata/script/scr_seq/event_D24R0204.h"
#include "constants/field_move_response.h"
	.include "asm/macros.inc"
	.include "unk_020632B0.inc"
	.include "global.inc"
	.public TryGetSeenByNpcTrainers
	.public sub_020640A4
	.extern CheckSeenByNpcTrainers
	.extern GetEngagingTrainerParams
	.extern sub_02064520

	.text

	.text
	thumb_func_start sub_020640A4
sub_020640A4: ; 0x020640A4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _020640B0
	ldr r0, _020640C0 ; =0x00000106
	pop {r4, pc}
_020640B0:
	cmp r4, #0
	bne _020640B8
	bl GF_AssertFail
_020640B8:
	ldr r0, _020640C4 ; =ov01_02207274
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_020640C0: .word 0x00000106
_020640C4: .word ov01_02207274
	thumb_func_end sub_020640A4

	thumb_func_start TryGetSeenByNpcTrainers
TryGetSeenByNpcTrainers: ; 0x020640C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	ldr r7, [r5, #0x40]
	add r4, r1, #0
	ldr r6, [r5, #0x3c]
	add r1, sp, #0x40
	str r1, [sp]
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl CheckSeenByNpcTrainers
	cmp r0, #0
	bne _020640EC
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020640EC:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02064172
	ldr r1, _020641E8 ; =std_trainer_approach
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	bl StartMapSceneScript
	cmp r4, #0
	beq _02064114
	add r0, sp, #0x28
	str r0, [sp]
	ldr r3, [sp, #0x54]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl CheckSeenByNpcTrainers
	cmp r0, #0
	bne _02064134
_02064114:
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	bl FieldSystem_SetEngagedTrainer
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02064134:
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	bl FieldSystem_SetEngagedTrainer
	ldr r0, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r5, #0
	bl FieldSystem_SetEngagedTrainer
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02064172:
	cmp r0, #1
	bne _020641DE
	cmp r4, #0
	bne _02064180
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02064180:
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x4c]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02064520
	add r1, r0, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, sp, #0x10
	bl GetEngagingTrainerParams
	ldr r1, _020641E8 ; =std_trainer_approach
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	bl StartMapSceneScript
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	bl FieldSystem_SetEngagedTrainer
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl FieldSystem_SetEngagedTrainer
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020641DE:
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_020641E8: .word std_trainer_approach
	thumb_func_end TryGetSeenByNpcTrainers

