      **********************************************************************************
      *     Author:      GIANNIS NOUTSIS                                               *
      *     Date:        1/29/2020                                                     *
      *     Purpose:     GitHub Repository                                             *
      *     This program asks the user the current temperature in celsious             *
      *     and converts it to fahrenheit.                                             *
      **********************************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CELSIOUS-TO-FAHRENHEIT.


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.
       OBJECT-COMPUTER.



       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01    WS-CELSIOUS.
             05    WS-CELSIOUS-VALUE PIC 9(3)V9(2) VALUE ZEROES.
       01    WS-FAHRENHEIT.
             05    WS-FAHRENHEIT-VALUE PIC 9(3)V9(2) VALUE ZEROES.
       01    WS-DISPLAY-VALUES.
             05    WS-DISPLAY-FAHRENHEIT-VALUE PIC 9(3)V9(2).

       PROCEDURE DIVISION.

            DISPLAY "What is the current temperature in CELSIOUS?:".
            ACCEPT WS-CELSIOUS-VALUE.
            COMPUTE WS-FAHRENHEIT-VALUE = (WS-CELSIOUS-VALUE * 9)/5 + 32 .
            MOVE WS-FAHRENHEIT-VALUE TO WS-DISPLAY-FAHRENHEIT-VALUE.
            DISPLAY "The converted fahrenheit value is.".
            DISPLAY WS-DISPLAY-FAHRENHEIT-VALUE.

            STOP RUN.
       END PROGRAM CELSIOUS-TO-FAHRENHEIT.
