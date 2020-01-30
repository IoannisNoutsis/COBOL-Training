      **********************************************************************************
      *     Author:      GIANNIS NOUTSIS                                               *
      *     Date:        1/30/2020                                                     *
      *     Purpose:     GitHub Repository                                             *
      *     This program calculates users age                                          *
      **********************************************************************************


       IDENTIFICATION DIVISION.
       PROGRAM-ID. AGE-CALC.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.


       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  WS-AGE            PIC 999.
       01  WS-TEMP.
           05  WS-BIRTH-YEAR   PIC 9999.
           05  WS-CURRENT-YEAR PIC 9999.

       01  WS-DATE.
           05  WS-YEAR PIC 99.
           05  WS-MONTH PIC 99.
           05  WS-DAY   PIC 99.
       01  WS-NAME.
           05  WS-FIRST-NAME   PIC X(10).
           05  WS-LAST-NAME    PIC X(10).
       01  WS-DISPLAY-DATE.
           05  WS-DISPLAY-MONTH        PIC 99.
           05  FILLER          PIC X VALUE "/".
           05  WS-DISPLAY-DAY          PIC 99.
           05  FILLER          PIC X VALUE "/".
           05  WS-DISPLAY-YEAR         PIC 99.


       PROCEDURE DIVISION.

       0100-START-HERE.

           INITIALIZE WS-AGE.
           DISPLAY "Who are you? : ".
           ACCEPT WS-FIRST-NAME.
           DISPLAY "What is your birth date? (YYYY) : ".
           ACCEPT WS-BIRTH-YEAR.
           ACCEPT WS-DATE FROM DATE.
           MOVE WS-MONTH TO WS-DISPLAY-MONTH.
           MOVE WS-DAY TO WS-DISPLAY-DAY.
           MOVE WS-YEAR TO WS-DISPLAY-YEAR.
           COMPUTE WS-CURRENT-YEAR = WS-YEAR + 2000.
           COMPUTE WS-AGE = WS-CURRENT-YEAR - WS-BIRTH-YEAR.
           DISPLAY "Thank you for using my calculator  ", WS-FIRST-NAME.
           DISPLAY "Today's date is ", WS-DISPLAY-DATE.
           DISPLAY "And your age is ", WS-AGE.

           STOP RUN.

          END PROGRAM AGE-CALC.
