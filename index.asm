.MODEL SMALL
.STACK 100h
.DATA
    ;========================;
    ;    Message Strings     ;
    ;========================;
    MESSAGE_NAME            DB  'Type your name: $'
    MESSAGE_INTRO_TITLE     DB  'WELCOME TO THE QUIZ CHALLENGE - TEST YOUR MIND AND WIT$'
    MESSAGE_INTRO_DESC1     DB  'Here, you will face 10 fun and surprising questions$'
    MESSAGE_INTRO_DESC2A    DB  'Each question has 4 options: A, B, C, and D$'
    MESSAGE_INTRO_DESC2B    DB  '- and you only have one chance to choose the correct answer.$'
    MESSAGE_INTRO_DESC3A    DB  'Every correct answer brings you closer$'
    MESSAGE_INTRO_DESC3B    DB  'to earning the title of Quiz Master.$'
    MESSAGE_INTRO_DESC4     DB  'Can you answer all 10 questions without making a mistake?$'
    MESSAGE_INTRO_DESC5     DB  'Get ready, stay focused, and... let the challenge begin!$'
    MESSAGE_INTRO_DESC6     DB  'Press any key to continue...$'
    MESSAGE_INTRO_CREDIT    DB  'Made by Nhom BTL4 - D23CQCE01-B with love!$'
    MESSAGE_QUIZ_TITLE      DB  'Question $'
    MESSAGE_QUIZ_OPT_A      DB  'A. $'
    MESSAGE_QUIZ_OPT_B      DB  'B. $'
    MESSAGE_QUIZ_OPT_C      DB  'C. $'
    MESSAGE_QUIZ_OPT_D      DB  'D. $'
    MESSAGE_QUIZ_ANSWER     DB  'Your answer: $'
    MESSAGE_QUIZ_ERROR      DB  10, 13, 'Invalid Input!!! Touch some grass man.$'
    MESSAGE_OUTRO_TITLE     DB  '                                 GAME OVER!$'
    MESSAGE_OUTRO_DESC1     DB  '                              Your score: $'
    MESSAGE_OUTRO_DESC2     DB  '                             Rank: $'
    MESSAGE_OUTRO_DESC3     DB  '                           Thank you for playing!$'
    MESSAGE_GAME_RANK1      DB  'QUIZ MASTER$'
    MESSAGE_GAME_RANK2      DB  'QUIZ EXPERT$'
    MESSAGE_GAME_RANK3      DB  'QUIZ COMPETENT$'
    MESSAGE_GAME_RANK4      DB  'QUIZ LEARNER$'
    MESSAGE_GAME_RANK5      DB  'QUIZ NOVICE$'

    ;========================;
    ;      Game Strings      ;
    ;========================;
    GAME_QUIZ_1_Q           DB  'Neu thanh ghi AL dang chua ma ASCII cua mot ki tu viet hoa (A den Z), de chuyen ki tu do thanh dang viet thuong (a den z) ta dung lenh Assembly nao sau day?$'
    GAME_QUIZ_2_Q           DB  'Doi voi nhiem vu cua khoi dieu khien (trong CPU), phat bieu nao sau day la sai?$'
    GAME_QUIZ_3_Q           DB  'Doi voi khoi dieu khien trong CPU, phat bieu nao sau day la dung?$'
    GAME_QUIZ_4_Q           DB  'Bo xu ly nhan lenh tai:$'
    GAME_QUIZ_5_Q           DB  'Cho may tinh co dung luong bo nho chinh: 256MB, cache: 128KB, line: 16 byte. Trong truong hop ky thuat anh xa truc tiep, dang dia chi do bo xu ly phat ra de truy nhap cache la:$'
    GAME_QUIZ_6_Q           DB  'Doi voi bo nho cache, xet nguyen ly dinh vi ve khong gian, phat bieu nao sau day la dung?$'
    GAME_QUIZ_7_Q           DB  'Khi CPU truy nhap cache, co hai kha nang sau:$'
    GAME_QUIZ_8_Q           DB  'Lenh LOOPNE KT se lap lai khoi lenh neu:$'
    GAME_QUIZ_9_Q           DB  'Phat bieu nao sau day la SAI ve lenh CALL PROC1?$'
    GAME_QUIZ_10_Q          DB  'Danh gia nao sau day la DUNG ve Dr. Dang Hoang Long?$'
    
    GAME_QUIZ_1_A           DB  'SUB AL, 32$'
    GAME_QUIZ_1_B           DB  'SUB AL, 32H$'
    GAME_QUIZ_1_C           DB  'ADD AL, 32$'
    GAME_QUIZ_1_D           DB  'ADD AL, 32H$'

    GAME_QUIZ_2_A           DB  'Dieu khien nhan lenh tiep theo tu bo nho, dua vao thanh ghi lenh.$'
    GAME_QUIZ_2_B           DB  'Tang noi dung cua PC de tro vao lenh tiep theo.$'
    GAME_QUIZ_2_C           DB  'Van chuyen lenh tu thanh ghi ra bo nho.$'
    GAME_QUIZ_2_D           DB  'Phat ra cac tin hieu dieu khien thuc hien lenh.$'
    
    GAME_QUIZ_3_A           DB  'Tiep nhan tin hieu tu CPU den.$'
    GAME_QUIZ_3_B           DB  'Khong tiep nhan tin hieu tu TBNV.$'
    GAME_QUIZ_3_C           DB  'Giai ma lenh duoc chuyen tu thanh ghi trang thai den.$'
    GAME_QUIZ_3_D           DB  'Giai ma lenh duoc chuyen tu thanh ghi lenh den.$'
    
    GAME_QUIZ_4_A           DB  'Bo nho hoac thiet bi ngoai vi$'
    GAME_QUIZ_4_B           DB  'Bo nho$'
    GAME_QUIZ_4_C           DB  'Thiet bi ngoai vi$'
    GAME_QUIZ_4_D           DB  'CPU$'
    
    GAME_QUIZ_5_A           DB  '11 + 13 + 4$'
    GAME_QUIZ_5_B           DB  '11 + 14 + 2$'
    GAME_QUIZ_5_C           DB  '12 + 13 + 4$'
    GAME_QUIZ_5_D           DB  '12 + 12 + 3$'
    
    GAME_QUIZ_6_A           DB  'Muc thong tin vua truy nhap thi xac suat lon la sau do cac muc lan can duoc truy nhap.$'
    GAME_QUIZ_6_B           DB  'Muc thong tin vua truy nhap thi xac suat be la sau do cac muc lan can duoc truy nhap.$'
    GAME_QUIZ_6_C           DB  'Muc thong tin vua truy nhap thi chac chan la sau do cac muc lan can duoc truy nhap.$'
    GAME_QUIZ_6_D           DB  'Thong tin vua truy nhap thi chac chan la sau do cac muc lan can khong duoc truy nhap.$'
    
    GAME_QUIZ_7_A           DB  'Truot cache, trung cache$'
    GAME_QUIZ_7_B           DB  'Sai cache, dung cache$'
    GAME_QUIZ_7_C           DB  'Tren cache, duoi cache$'
    GAME_QUIZ_7_D           DB  'Trong cache, ngoai cache$'
    
    GAME_QUIZ_8_A           DB  'CX != 0 VA ZF = 1$'
    GAME_QUIZ_8_B           DB  'CX != 0 VA ZF = 0$'
    GAME_QUIZ_8_C           DB  'CX = 0 VA ZF = 0$'
    GAME_QUIZ_8_D           DB  'CX = 0 VA ZF = 1$'
    
    GAME_QUIZ_9_A           DB  'Dia chi cua lenh ke tiep sau CALL duoc day vao stack.$'
    GAME_QUIZ_9_B           DB  'Con tro lenh (IP) duoc thay doi bang dia chi cua PROC1.$'
    GAME_QUIZ_9_C           DB  'Thanh ghi CS khong bao gio thay doi boi lenh CALL.$'
    GAME_QUIZ_9_D           DB  'Lenh RET trong PROC1 se lay dia chi tro ve tu stack.$'
    
    GAME_QUIZ_10_A          DB  'Dep trai, tre trung, nhiet huyet giang day.$'
    GAME_QUIZ_10_B          DB  'Phong cach giang day de hieu, giup sinh vien tiep thu nhanh.$'
    GAME_QUIZ_10_C          DB  'Luon ho tro kip thoi va truyen dong luc cho sinh vien.$'
    GAME_QUIZ_10_D          DB  'Ca 3 phuong an tren.$'
    
    GAME_QUIZ_1_CHOICE      DW OFFSET GAME_QUIZ_1_A, OFFSET GAME_QUIZ_1_B, OFFSET GAME_QUIZ_1_C, OFFSET GAME_QUIZ_1_D
    GAME_QUIZ_2_CHOICE      DW OFFSET GAME_QUIZ_2_A, OFFSET GAME_QUIZ_2_B, OFFSET GAME_QUIZ_2_C, OFFSET GAME_QUIZ_2_D
    GAME_QUIZ_3_CHOICE      DW OFFSET GAME_QUIZ_3_A, OFFSET GAME_QUIZ_3_B, OFFSET GAME_QUIZ_3_C, OFFSET GAME_QUIZ_3_D
    GAME_QUIZ_4_CHOICE      DW OFFSET GAME_QUIZ_4_A, OFFSET GAME_QUIZ_4_B, OFFSET GAME_QUIZ_4_C, OFFSET GAME_QUIZ_4_D
    GAME_QUIZ_5_CHOICE      DW OFFSET GAME_QUIZ_5_A, OFFSET GAME_QUIZ_5_B, OFFSET GAME_QUIZ_5_C, OFFSET GAME_QUIZ_5_D
    GAME_QUIZ_6_CHOICE      DW OFFSET GAME_QUIZ_6_A, OFFSET GAME_QUIZ_6_B, OFFSET GAME_QUIZ_6_C, OFFSET GAME_QUIZ_6_D
    GAME_QUIZ_7_CHOICE      DW OFFSET GAME_QUIZ_7_A, OFFSET GAME_QUIZ_7_B, OFFSET GAME_QUIZ_7_C, OFFSET GAME_QUIZ_7_D
    GAME_QUIZ_8_CHOICE      DW OFFSET GAME_QUIZ_8_A, OFFSET GAME_QUIZ_8_B, OFFSET GAME_QUIZ_8_C, OFFSET GAME_QUIZ_8_D
    GAME_QUIZ_9_CHOICE      DW OFFSET GAME_QUIZ_9_A, OFFSET GAME_QUIZ_9_B, OFFSET GAME_QUIZ_9_C, OFFSET GAME_QUIZ_9_D
    GAME_QUIZ_10_CHOICE     DW OFFSET GAME_QUIZ_10_A, OFFSET GAME_QUIZ_10_B, OFFSET GAME_QUIZ_10_C, OFFSET GAME_QUIZ_10_D

    GAME_QUIZ_LABEL         DW OFFSET MESSAGE_QUIZ_OPT_A, OFFSET MESSAGE_QUIZ_OPT_B, OFFSET MESSAGE_QUIZ_OPT_C, OFFSET MESSAGE_QUIZ_OPT_D
    GAME_QUIZ_CHOICES       DW OFFSET GAME_QUIZ_1_CHOICE, OFFSET GAME_QUIZ_2_CHOICE, OFFSET GAME_QUIZ_3_CHOICE, OFFSET GAME_QUIZ_4_CHOICE, OFFSET GAME_QUIZ_5_CHOICE, OFFSET GAME_QUIZ_6_CHOICE, OFFSET GAME_QUIZ_7_CHOICE, OFFSET GAME_QUIZ_8_CHOICE, OFFSET GAME_QUIZ_9_CHOICE, OFFSET GAME_QUIZ_10_CHOICE
    GAME_QUIZ_Q_ARRAY       DW OFFSET GAME_QUIZ_1_Q, OFFSET GAME_QUIZ_2_Q, OFFSET GAME_QUIZ_3_Q, OFFSET GAME_QUIZ_4_Q, OFFSET GAME_QUIZ_5_Q, OFFSET GAME_QUIZ_6_Q, OFFSET GAME_QUIZ_7_Q, OFFSET GAME_QUIZ_8_Q, OFFSET GAME_QUIZ_9_Q, OFFSET GAME_QUIZ_10_Q
    GAME_QUIZ_SCORES        DW  0, 0, 10, 0         ; Q1: C
                            DW  0, 0, 10, 0         ; Q2: C
                            DW  0, 0, 0, 10         ; Q3: D
                            DW  0, 10, 0, 0         ; Q4: B
                            DW  10, 0, 0, 0         ; Q5: A
                            DW  10, 0, 0, 0         ; Q6: A
                            DW  10, 0, 0, 0         ; Q7: A
                            DW  0, 10, 0, 0         ; Q8: B
                            DW  0, 0, 10, 0         ; Q9: C
                            DW  5, 2, 3, 10         ; Q10: D
                            
    ;========================;
    ;     Input Buffers      ;
    ;========================;
    INPUT_NAME              DB  100 DUP('$')
    INPUT_CHOICE            DB  '?', '$'
    
    ;========================;
    ;        Variables       ;
    ;========================;
    SCORE                   DB  0
    CURRENT_INDEX           DB  0
    CURRENT_QUESTION        DB  1

    ;========================;
    ;        Utilities       ;
    ;========================;
    UTILS_ENDL              DB  13, 10, '$'
    UTILS_COLON             DB  ': $'
    UTILS_SPACE_XL          DB  '                        $'
    UTILS_SPACE_LG          DB  '             $'
    UTILS_SPACE_MD          DB  '         $'
.CODE
    ; MACRO TO CALL PRINT STRING
    STRING_OUT MACRO  
        MOV AH, 09h                                 ; PRINT STRING MODE
        INT 21h
    ENDM
    
    ; MACRO TO CALL PRINT BREAK LINE
    ENDL_OUT MACRO  
        LEA DX, UTILS_ENDL                          ; DX <- BREAK LINE
        STRING_OUT                                  ; PRINT OUT BREAK LINE
    ENDM

    ; MACRO TO PRINT STRING MSG (WITH BREAK LINE)
    PRINTF_STRING MACRO MSG 
        LEA DX, MSG                                 ; DX <- MSG (STRING)
        STRING_OUT                                  ; PRINT MSG
        ENDL_OUT                                    ; PRINT ENDL
    ENDM

    ; MACRO TO PRINT STRING MSG (WITHOUT BREAK LINE)
    PRINTF_STRING_INLINE MACRO MSG 
        LEA DX, MSG                                 ; DX <- MSG (STRING)
        STRING_OUT                                  ; PRINT MSG
    ENDM

    ; MACRO TO PRINT 1-DIGIT NUMBER NUM
    PRINTF_DIGIT MACRO NUM 
        MOV AL, NUM                                 ; AL <- NUM
        ADD AL, '0'                                 ; AL <- AL + '0' (TURN AL TO ASCII)
        MOV DL, AL                                  ; DL <- AL
        MOV AH, 02h                                 ; PRINT CHAR MODE
        INT 21h
    ENDM

    ; MACRO TO PRINT N-DIGIT NUMBER NUM
    PRINTF_NUMBER MACRO NUM
        LOCAL CONVERT_LOOP, PRINT_LOOP
        ; AX = TARGET
        MOV AL, NUM                                 ; AL <- NUM
        XOR AH, AH                                  ; AH <- 0 (RESET AH -> 16BIT MODE)
        MOV CX, 10                                  ; CX <- 10
        XOR BX, BX                                  ; BX <- 0 (RESET BX FOR COUNT NUMBER OF DIGITS)

    CONVERT_LOOP:
        XOR DX, DX                                  ; DX <- 0 (RESET DX)
        DIV CX                                      ; AX / CX (10) => AX = Q, DX = R
        PUSH DX                                     ; PUSH DX (R) TO STACK
        INC BX                                      ; BX <- BX + 1
        CMP AX, 0                                   ; COMPARE AX (Q) WITH 0
        JNE CONVERT_LOOP                            ; IF AX != 0 LOOP BACK

    PRINT_LOOP:
        POP DX                                      ; DX <- POP DIGIT FROM STACK
        PRINTF_DIGIT DL                             ; PRINT DL
        DEC BX                                      ; BX <- BX - 1
        JNZ PRINT_LOOP                              ; IF BX != 0 LOOP BACK

    ENDM

    ; PROCEDURE TO CLEAR SCREEN
    CLS PROC
        MOV AX, 03h                                 ; AX <- 03h (80 X 25 MODE)
        INT 10h
        RET
    CLS ENDP
    
    ; PROCEDURE TO EVALUATE RANK BASED ON SCORE
    EVALUATE_RANK PROC
        PRINTF_STRING_INLINE MESSAGE_OUTRO_DESC2    ; PRINT RANK DESCRIPTION
        
        MOV AL, [SCORE]                             ; AL <- [SCORE] (COPY SCORE VALUE TO AL)
        CMP AL, 93                                  ; COMPARE AL WITH 93
        JGE EVALUATE_RANK1                          ; AL >= 93 -> RANK 1
        
        CMP AL, 70                                  ; COMPARE AL WITH 70
        JGE EVALUATE_RANK2                          ; 93 > AL >= 70 -> RANK 2

        CMP AL, 50                                  ; COMPARE AL WITH 50
        JGE EVALUATE_RANK3                          ; 70 > AL >= 50 -> RANK 3
        
        CMP AL, 30                                  ; COMPARE AL WITH 30
        JGE EVALUATE_RANK4                          ; 50 > AL >= 30 -> RANK 4
        
        JMP EVALUATE_RANK5                          ; AL < 30 -> RANK 5

    EVALUATE_RANK1:
        PRINTF_STRING MESSAGE_GAME_RANK1            ; STRING RANK 1
        JMP EVALUATE_END
    
    EVALUATE_RANK2:
        PRINTF_STRING MESSAGE_GAME_RANK2            ; STRING RANK 2
        JMP EVALUATE_END
    
    EVALUATE_RANK3:
        PRINTF_STRING MESSAGE_GAME_RANK3            ; STRING RANK 3
        JMP EVALUATE_END

    EVALUATE_RANK4:
        PRINTF_STRING MESSAGE_GAME_RANK4            ; STRING RANK 4
        JMP EVALUATE_END

    EVALUATE_RANK5:
        PRINTF_STRING MESSAGE_GAME_RANK5            ; STRING RANK 5
        JMP EVALUATE_END

    EVALUATE_END:
        RET
    EVALUATE_RANK ENDP
    
    ; OPENING SCREEN
    INTRO_SCREEN PROC
        ENDL_OUT
        ENDL_OUT
        ENDL_OUT
        PRINTF_STRING_INLINE UTILS_SPACE_LG
        PRINTF_STRING MESSAGE_INTRO_TITLE           ; PRINT OPENING TITLE
        ENDL_OUT
        ENDL_OUT
        PRINTF_STRING_INLINE UTILS_SPACE_MD
        PRINTF_STRING MESSAGE_INTRO_DESC1           ; PRINT OPENING DESCRIPTION
        PRINTF_STRING_INLINE UTILS_SPACE_MD
        PRINTF_STRING MESSAGE_INTRO_DESC2A
        PRINTF_STRING_INLINE UTILS_SPACE_MD
        PRINTF_STRING MESSAGE_INTRO_DESC2B
        PRINTF_STRING_INLINE UTILS_SPACE_MD
        PRINTF_STRING MESSAGE_INTRO_DESC3A
        PRINTF_STRING_INLINE UTILS_SPACE_MD
        PRINTF_STRING MESSAGE_INTRO_DESC3B
        PRINTF_STRING_INLINE UTILS_SPACE_MD
        PRINTF_STRING MESSAGE_INTRO_DESC4
        PRINTF_STRING_INLINE UTILS_SPACE_MD
        PRINTF_STRING MESSAGE_INTRO_DESC5
        PRINTF_STRING_INLINE UTILS_SPACE_MD
        ENDL_OUT
        ENDL_OUT
        PRINTF_STRING_INLINE UTILS_SPACE_MD
        PRINTF_STRING MESSAGE_INTRO_CREDIT          ; PRINT OPENING CREDIT
        ENDL_OUT
        ENDL_OUT
        PRINTF_STRING_INLINE UTILS_SPACE_XL
        PRINTF_STRING_INLINE MESSAGE_INTRO_DESC6
        MOV AH, 07h                                 ; KEYBOARD INTERRUPT
        INT 21h
        RET
    INTRO_SCREEN ENDP

    QUIZ_SCREEN PROC
        CALL CLS                                    ; CLEAN SCREEN
        CALL QUESTION_SCREEN                        ; QUESTION SCREEN
        RET
    QUIZ_SCREEN ENDP
    
    OUTRO_SCREEN PROC
        CALL CLS                                    ; CLEAN SCREEN
        ENDL_OUT
        ENDL_OUT
        ENDL_OUT
        PRINTF_STRING MESSAGE_OUTRO_TITLE           ; PRINT ENDING TITLE
        ENDL_OUT
        PRINTF_STRING_INLINE MESSAGE_OUTRO_DESC1    ; PRINT ENDING SCORE DESCRIPTION
        PRINTF_NUMBER SCORE                         ; PRINT SCORE
        ENDL_OUT
        CALL EVALUATE_RANK                          ; PRINT ENDING RANK
        ENDL_OUT
        ENDL_OUT
        PRINTF_STRING MESSAGE_OUTRO_DESC3           ; PRINT THANK YOU
        ENDL_OUT
        ENDL_OUT
        ENDL_OUT
        PRINTF_STRING_INLINE UTILS_SPACE_XL
        PRINTF_STRING_INLINE MESSAGE_INTRO_DESC6
        MOV AH, 07h                                 ; KEYBOARD INTERRUPT
        INT 21h
        CALL CLS
        RET
    OUTRO_SCREEN ENDP
    
    QUESTION_SCREEN PROC
    LOOP_QUESTION:
        ENDL_OUT
        ENDL_OUT
        ENDL_OUT
        PRINTF_STRING_INLINE MESSAGE_QUIZ_TITLE     ; PRINT QUESTION LABEL TITLE
        PRINTF_NUMBER CURRENT_QUESTION              ; PRINT CURRENT QUESTION NUMBER
        PRINTF_STRING_INLINE UTILS_COLON            ; PRINT COLON

        MOV SI, OFFSET GAME_QUIZ_Q_ARRAY            ; SI <- ADDRESS OF QUESTION ARRAY
        MOV AL, [CURRENT_INDEX]                     ; AL <- CURRENT QUESTION INDEX
        XOR AH, AH                                  ; AH <- 0 (RESET AH FOR 16-BIT MODE)
        MOV BX, AX                                  ; BX <- AX (CURRENT QUESTION INDEX)
        SHL BX, 1                                   ; BX <- BX * 2 (WORD OFFSET)
        MOV DX, [SI + BX]                           ; DX <- ADDRESS OF CURRENT QUESTION
        STRING_OUT                                  ; PRINT CURRENT QUESTION
        ENDL_OUT                                    ; PRINT NEW LINE
        ENDL_OUT

        XOR CX, CX                                  ; CX <- 0 (RESET CHOICE INDEX)

    LOOP_PRINT_CHOICE:
        MOV SI, OFFSET GAME_QUIZ_LABEL              ; SI <- ADDRESS OF CHOICE LABEL ARRAY (A/B/C/D)
        MOV BX, CX                                  ; BX <- CX (CURRENT CHOICE INDEX)
        SHL BX, 1                                   ; BX <- BX * 2 (WORD OFFSET)
        MOV DX, [SI + BX]                           ; DX <- ADDRESS OF CURRENT CHOICE LABEL
        STRING_OUT                                  ; PRINT CHOICE LABEL (A/B/C/D)

        MOV SI, OFFSET GAME_QUIZ_CHOICES            ; SI <- ADDRESS OF CHOICE CONTENT ARRAY
        MOV AL, CURRENT_INDEX                       ; AL <- CURRENT QUESTION INDEX
        XOR AH, AH                                  ; AH <- 0 (RESET AH FOR 16-BIT MODE)
        MOV BX, AX                                  ; BX <- AX (CURRENT QUESTION INDEX)
        SHL BX, 1                                   ; BX <- BX * 2 (WORD OFFSET)
        MOV SI, [SI + BX]                           ; SI <- ADDRESS OF CURRENT QUESTION CHOICES

        MOV BX, CX                                  ; BX <- CX (CURRENT CHOICE INDEX)
        SHL BX, 1                                   ; BX <- BX * 2 (WORD OFFSET)
        MOV DX, [SI + BX]                           ; DX <- ADDRESS OF CURRENT CHOICE CONTENT
        STRING_OUT                                  ; PRINT CHOICE CONTENT
        ENDL_OUT                                    ; PRINT NEW LINE

        INC CX                                      ; CX <- CX + 1 (NEXT CHOICE INDEX)
        CMP CX, 4                                   ; COMPARE CX WITH 4 (TOTAL CHOICES)
        JL LOOP_PRINT_CHOICE                        ; IF CX < 4, LOOP BACK TO PRINT NEXT CHOICE
        ENDL_OUT
        JMP LOOP_VALIDATE_INPUT                     ; OTHERWISE, JUMP TO INPUT VALIDATION

    LOOP_VALIDATE_ERROR:
        PRINTF_STRING MESSAGE_QUIZ_ERROR            ; PRINT ERROR MESSAGE FOR INVALID INPUT

    LOOP_VALIDATE_INPUT:
        PRINTF_STRING_INLINE MESSAGE_QUIZ_ANSWER    ; PROMPT USER FOR ANSWER INPUT
        MOV AH, 01h                                 ; SET AH TO INPUT CHARACTER FUNCTION
        INT 21h                                     ; CALL INTERRUPT TO GET INPUT CHARACTER
        
        CMP AL, 'A'                                 ; COMPARE INPUT (AL) WITH 'A'
        JL LOOP_VALIDATE_ERROR                      ; IF INPUT < 'A', JUMP TO ERROR HANDLER
        CMP AL, 'D'                                 ; COMPARE INPUT (AL) WITH 'D'
        JG LOOP_VALIDATE_ERROR                      ; IF INPUT > 'D', JUMP TO ERROR HANDLER

        MOV [INPUT_CHOICE], AL                      ; STORE VALID INPUT IN INPUT_CHOICE

    CALCULATE_SCORE:
        ; Compute offset: (DI * 4 + CX) * 2 (word index)
        MOV AL, [CURRENT_INDEX]                     ; AL <- CURRENT_INDEX (GET CURRENT QUESTION INDEX)
        XOR AH, AH                                  ; AH <- 0 (RESET AH FOR 16-BIT MODE)
        MOV DI, AX                                  ; DI <- AX (STORE QUESTION INDEX IN DI)
        
        MOV AL, [INPUT_CHOICE]                      ; AL <- INPUT_CHOICE (GET USER'S ANSWER)
        SUB AL, 'A'                                 ; AL <- AL - 'A' (CONVERT ANSWER TO INDEX 0-3)
        XOR AH, AH                                  ; AH <- 0 (RESET AH FOR 16-BIT MODE)
        MOV CX, AX                                  ; CX <- AX (STORE CHOICE INDEX IN CX)
        
        MOV BX, DI                                  ; BX <- DI (COPY QUESTION INDEX TO BX)
        SHL BX, 1                                   ; BX <- BX * 4 (OFFSET FOR 4 CHOICES PER QUESTION)
        SHL BX, 1 
        ADD BX, CX                                  ; BX <- BX + CX (ADD CHOICE INDEX TO OFFSET)
        SHL BX, 1                                   ; BX <- BX * 2 (WORD OFFSET)

        MOV SI, OFFSET GAME_QUIZ_SCORES             ; SI <- ADDRESS OF GAME_QUIZ_SCORES ARRAY
        MOV AX, [SI + BX]                           ; AX <- SCORE FOR SELECTED CHOICE

        ADD AL, [SCORE]                             ; AL <- AL + [SCORE] (ADD CHOICE SCORE TO TOTAL SCORE)
        MOV [SCORE], AL                             ; [SCORE] <- AL (UPDATE TOTAL SCORE)

        CALL CLS                                    ; CLEAR SCREEN FOR NEXT QUESTION

        MOV AL, [CURRENT_QUESTION]                  ; AL <- CURRENT_QUESTION (GET CURRENT QUESTION NUMBER)
        INC AL                                      ; AL <- AL + 1 (INCREMENT QUESTION NUMBER)
        MOV [CURRENT_QUESTION], AL                  ; [CURRENT_QUESTION] <- AL (UPDATE QUESTION NUMBER)

        MOV AL, [CURRENT_INDEX]                     ; AL <- CURRENT_INDEX (GET CURRENT QUESTION INDEX)
        INC AL                                      ; AL <- AL + 1 (INCREMENT QUESTION INDEX)
        MOV [CURRENT_INDEX], AL                     ; [CURRENT_INDEX] <- AL (UPDATE QUESTION INDEX)
        CMP AL, 10                                  ; COMPARE AL WITH 10
        JNE LOOP_QUESTION                           ; IF AL != 10, LOOP BACK

        RET
    QUESTION_SCREEN ENDP

    MAIN PROC
        MOV AX, @DATA                               ; AX <- ADDRESS OF DATA SEGMENT (LOAD DATA SEGMENT)
        MOV DS, AX                                  ; DS <- AX (INITIALIZE DATA SEGMENT)
        CALL CLS
        CALL INTRO_SCREEN                           ; CALL PROCEDURE INTRO SCREEN
        CALL QUIZ_SCREEN                            ; CALL PROCEDURE QUIZ SCREEN
        CALL OUTRO_SCREEN                           ; CALL PROCEDURE END SCREEN
        MOV AH, 4Ch                                 ; AH <- 4Ch (SET DOS INTERRUPT)
        INT 21h                                     ; DOS INTERRUPT (TERMINATE)   
    MAIN ENDP
END MAIN