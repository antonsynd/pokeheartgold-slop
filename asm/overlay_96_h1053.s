	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02212F94
	.public ov96_022130EC
	.public ov96_022132FC
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E8228
	.extern ov96_022143DC
	.extern ov96_0221D268
	.extern ov96_0221D280
	.extern ov96_0221D474

	.text

	.extern PokeathlonCourse_RunSubStateLoop
	.extern PokeathlonCourse_InitStateInfo
	.extern PokeathlonCourse_InitPlayerProfiles
	.extern PokeathlonCourse_GetPlayerProfile
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_GetParticipantData
	.extern PokeathlonCourse_GetParticipantUnk04
	.extern PokeathlonCourse_GetSaveData
	.extern PokeathlonCourse_GetFieldData
	.extern PokeathlonCourse_GetFieldData_AtIndex
	.extern PokeathlonCourse_GetFieldBA4
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_FreePtr4HeapAlloc
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetHeapID
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_SetField1ED
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern ov96_021E5E04
	.extern PokeathlonCourse_GetField3D8_ForCurrentParticipant
	.extern PokeathlonCourse_GetField3D8_AtIndex
	.extern ov96_021E5E7C
	.extern PokeathlonCourse_GetCurrentParticipantIndex
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetField1EF
	.extern PokeathlonCourse_IncrementField1EF
	.extern PokeathlonCourse_ResetField1EF
	.extern PokeathlonCourse_GetSystem
	.extern ov96_021E5F24
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern PokeathlonCourse_GetField974_AtIndex
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_ResetDataCopyArea
	.extern PokeathlonCourse_SetField3A4
	.extern PokeathlonCourse_ResetField3A4
	.extern PokeathlonCourse_GetField3A4
	.extern PokeathlonCourse_GetUnkConstant4
	.extern PokeathlonCourse_SetField5E0_AtIndex
	.extern PokeathlonCourse_GetField5F0_AtIndex
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateField07_IfDifferent
	.extern PokeathlonCourse_SetStateTransitionType
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern PokeathlonCourse_GetGraphicsSystem

	.text
	thumb_func_start ov96_02212F94
ov96_02212F94: ; 0x02212F94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp]
	add r1, sp, #0x1c
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r1, r5, #0
	add r1, #0x40
	ldrb r1, [r1]
	cmp r1, #3
	bhi _02213032
	add r1, r4, #0
	add r1, #0x40
	ldrb r1, [r1]
	cmp r1, #3
	bls _02213006
	add r0, r4, #0
	add r0, #0x39
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x39
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x3c
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x3c
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x3d
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x3d
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x3e
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x3e
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x40
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x40
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x41
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x41
	strb r1, [r0]
	b _0221305C
_02213006:
	add r1, r5, #0
	add r1, #0x39
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x3c
	strb r0, [r1]
	add r1, r5, #0
	mov r2, #0x1e
	add r1, #0x3d
	strb r2, [r1]
	add r1, r5, #0
	mov r2, #1
	add r1, #0x3e
	strb r2, [r1]
	add r1, r5, #0
	mov r2, #3
	add r1, #0x40
	strb r2, [r1]
	add r1, r5, #0
	add r1, #0x41
	strb r0, [r1]
	b _0221305C
_02213032:
	add r1, r5, #0
	add r1, #0x39
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x3c
	strb r0, [r1]
	add r1, r5, #0
	mov r2, #0x1e
	add r1, #0x3d
	strb r2, [r1]
	add r1, r5, #0
	mov r2, #1
	add r1, #0x3e
	strb r2, [r1]
	add r1, r5, #0
	mov r2, #3
	add r1, #0x40
	strb r2, [r1]
	add r1, r5, #0
	add r1, #0x41
	strb r0, [r1]
_0221305C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r5, #0
	add r0, #8
	add r1, #8
	add r2, #0x20
	bl VEC_Subtract
	add r0, r5, #0
	add r0, #0x20
	bl VEC_Mag
	cmp r0, #0
	bne _022130B4
	ldr r3, _022130E4 ; =ov96_0221D268
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _022130E8 ; =ov96_0221D280
	str r0, [r2]
	add r7, sp, #4
	ldmia r3!, {r0, r1}
	add r2, r7, #0
	stmia r7!, {r0, r1}
	ldr r0, [r3]
	str r0, [r7]
	ldr r0, [sp]
	cmp r0, #0
	bne _022130A8
	add r2, r5, #0
	ldmia r6!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	str r0, [r2]
	b _022130B4
_022130A8:
	add r3, r5, #0
	ldmia r2!, {r0, r1}
	add r3, #0x20
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
_022130B4:
	add r0, r5, #0
	add r0, #0x20
	add r1, r0, #0
	bl VEC_Normalize
	add r0, r5, #0
	add r0, #0x40
	ldrb r0, [r0]
	add r1, r5, #0
	add r3, r5, #0
	lsl r0, r0, #0xc
	add r1, #0x20
	add r2, sp, #0x1c
	add r3, #0x14
	bl VEC_MultAdd
	add r4, #0x3b
	ldrb r0, [r4]
	cmp r0, #0xc
	bhs _022130E0
	add r5, #0x3b
	strb r0, [r5]
_022130E0:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022130E4: .word ov96_0221D268
_022130E8: .word ov96_0221D280
	thumb_func_end ov96_02212F94

	thumb_func_start ov96_022130EC
ov96_022130EC: ; 0x022130EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, _022132F0 ; =0x0000062C
	str r0, [sp, #0x14]
	add r5, r0, r1
	add r0, #0x5c
	str r0, [sp, #0x14]
_02213108:
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _02213172
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _02213120
	cmp r0, #2
	bne _02213172
_02213120:
	ldr r1, [r5, #8]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x18]
	ldr r1, [r5, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov96_022143DC
	ldr r1, _022132F4 ; =ov96_0221D474
	lsl r2, r0, #4
	str r0, [sp, #8]
	ldr r0, _022132F4 ; =ov96_0221D474
	add r1, r1, r2
	add r0, r0, r2
	add r1, #8
	add r2, sp, #0x18
	bl sub_02020E80
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _02213172
	add r1, r5, #0
	add r1, #0x39
	mov r0, #1
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x3a
	mov r0, #0xa
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0x3b
	ldrb r4, [r0]
	cmp r4, #0xc
	bne _02213174
_02213172:
	b _022132DC
_02213174:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x5d
	lsl r0, r0, #2
	add r2, r7, #0
	mul r2, r0
	ldr r0, [sp, #0x14]
	add r6, r1, #0
	add r4, r0, r2
	mov r0, #0x7c
	mul r6, r0
	ldr r0, [sp, #8]
	cmp r0, r7
	bne _02213238
	add r0, r4, r6
	add r0, #0x5e
	ldrh r0, [r0]
	cmp r0, #0
	beq _022131B6
	add r0, r4, r6
	add r0, #0x5e
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r4, r6
	add r0, #0x5e
	strh r1, [r0]
_022131B6:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	mov r1, #3
	bl _s32_div_f
	lsl r1, r0, #2
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	ldr r1, _022132F8 ; =0x000006F4
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _022131DA
	ldr r1, _022132F8 ; =0x000006F4
	ldr r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _022132F8 ; =0x000006F4
	str r2, [r0, r1]
_022131DA:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r6, [r0]
	mov r1, #3
	add r0, r6, #0
	bl _s32_div_f
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r4, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #8
	bl ov96_021E8228
	add r0, r5, #0
	add r0, #0x3b
	ldrb r6, [r0]
	mov r1, #3
	add r0, r6, #0
	bl _s32_div_f
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r4, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov96_021E8228
	b _022132DC
_02213238:
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	mov r7, #0
	cmp r0, #1
	bne _02213248
	mov r7, #1
	b _02213254
_02213248:
	cmp r0, #2
	bne _02213250
	mov r7, #2
	b _02213254
_02213250:
	bl GF_AssertFail
_02213254:
	add r0, r4, r6
	add r0, #0x5e
	ldrh r0, [r0]
	add r0, r0, r7
	cmp r0, #0x63
	bgt _0221326E
	add r0, r4, r6
	add r0, #0x5e
	ldrh r0, [r0]
	add r1, r0, r7
	add r0, r4, r6
	add r0, #0x5e
	strh r1, [r0]
_0221326E:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	mov r1, #3
	bl _s32_div_f
	lsl r1, r0, #2
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	ldr r1, _022132F8 ; =0x000006F4
	ldr r1, [r0, r1]
	add r1, r7, r1
	cmp r1, #0x63
	bgt _02213294
	ldr r1, _022132F8 ; =0x000006F4
	ldr r1, [r0, r1]
	add r2, r1, r7
	ldr r1, _022132F8 ; =0x000006F4
	str r2, [r0, r1]
_02213294:
	ldr r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	ldr r1, _022132F8 ; =0x000006F4
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _022132AE
	ldr r1, _022132F8 ; =0x000006F4
	ldr r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _022132F8 ; =0x000006F4
	str r2, [r0, r1]
_022132AE:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r6, [r0]
	mov r1, #3
	add r0, r6, #0
	bl _s32_div_f
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r4, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #3
	bl ov96_021E8228
_022132DC:
	ldr r0, [sp, #0x10]
	add r5, #0x4c
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #2
	bge _022132EA
	b _02213108
_022132EA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022132F0: .word 0x0000062C
_022132F4: .word ov96_0221D474
_022132F8: .word 0x000006F4
	thumb_func_end ov96_022130EC

	thumb_func_start ov96_022132FC
ov96_022132FC: ; 0x022132FC
	push {r3, r4, r5, r6, r7, lr}
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	mov r5, #0
	mov r7, #3
	add r6, #0x5c
_0221330A:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x5d
	lsl r0, r0, #2
	mul r0, r4
	add r2, r6, r0
	mov r0, #0x7c
	mul r0, r1
	add r0, r2, r0
	ldr r2, [r0, #0x78]
	cmp r2, #2
	beq _02213346
	add r1, r0, #0
	add r1, #0x71
	ldrb r1, [r1]
	cmp r1, #0x1e
	bhs _0221333E
	str r7, [r0, #0x78]
	b _02213346
_0221333E:
	cmp r2, #1
	beq _02213346
	mov r1, #0
	str r1, [r0, #0x78]
_02213346:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	blo _0221330A
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_022132FC

