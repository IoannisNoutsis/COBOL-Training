
      **********************************************************************************
      *     Author:      GIANNIS NOUTSIS                                               *
      *     Date:        2/1/2020                                                      *
      *     Purpose:     GitHub Repository                                             *
      *     This program is a simple countdown.                                        *
      **********************************************************************************






       IDENTIFICATION DIVISION.
       PROGRAM-ID. COUNTDOWN.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.

       01  WS-COUNTDOWN.
           05  WS-COUNTER        PIC 9(3) VALUE 10.
           05  WS-DISPLAY-COUNTER PIC ZZ9.

       PROCEDURE DIVISION.
       0100-START.
            PERFORM 0200-PRINT 10 TIMES.
            PERFORM 0300-STOP-RUN.



       0200-PRINT.
            MOVE WS-COUNTER TO WS-DISPLAY-COUNTER.
            DISPLAY WS-DISPLAY-COUNTER.
            SUBTRACT 1 FROM WS-COUNTER.
            IF WS-COUNTER = 0 THEN
               DISPLAY "Good job you can really count!"
            END-IF.

       0300-STOP-RUN.

           STOP RUN.

          END PROGRAM COUNTDOWN.
