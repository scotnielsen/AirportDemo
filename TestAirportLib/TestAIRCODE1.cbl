      *> Test Fixture for AirportLib, AIRCODE

       copy "mfunit_prototypes.cpy".

       program-id. TestAIRCODE1.
       working-storage section.
       copy "mfunit.cpy".
       78 TEST-TESTAIRCODE1 value "TestAIRCODE1".
       01 pp procedure-pointer.

      *> Program linkage data
       01 lnk-function PIC X.
       01 lnk-airport1 PIC X(4).
       01 lnk-airport2 PIC X(4).
       01 lnk-prefix-text PIC X(4).
       01 lnk-distance-result.
         03 distance-km PIC ZZ,ZZ9.
         03 distance-miles PIC ZZ,ZZ9.
       01 lnk-matched-codes-array PIC X(350).
       01 lnk-matched-codes PIC X(35) occurs 10.
       01 lnk-file-status PIC XX.
       01 lnk-rec.
         03 ap-code PIC X(4).
         03 ap-name PIC X(30).
         03 ap-city PIC X(30).
         03 ap-country PIC X(20).
         03 ap-geo.
           05 ap-latitude.
             07 ap-lat-sign PIC X.
             07 ap-lat-degs PIC 9(3).
             07 ap-lat-mins PIC 9(6).
           05 ap-longitude.
             07 ap-long-sign PIC X.
             07 ap-long-degs PIC 9(3).
             07 ap-long-mins PIC 9(6).

      *> Variable used when initializing 'occurs' items
       01 i pic 99.


       procedure division.
           goback returning 0
       .

       entry MFU-TC-PREFIX & TEST-TESTAIRCODE1.

           call "AIRCODE" using
                       by value lnk-function
                       by value lnk-airport1
                       by value lnk-airport2
                       by value lnk-prefix-text
                       by reference lnk-rec
                       by reference lnk-distance-result
                       by reference lnk-matched-codes-array
                       by reference lnk-file-status

           *> Verify the outputs here
           goback returning MFU-PASS-RETURN-CODE
       .

      $region TestCase Configuration

       entry MFU-TC-SETUP-PREFIX & TEST-TESTAIRCODE1.
           *> Load the library that is being tested
           set pp to entry "AirportLib"

           initialize lnk-function
           initialize lnk-airport1
           initialize lnk-airport2
           initialize lnk-prefix-text
           initialize lnk-distance-result
           initialize lnk-matched-codes-array
           perform varying i from 1 by 1 until i > 10
               initialize lnk-matched-codes(i)
           end-perform
           initialize lnk-file-status
           initialize lnk-rec
           *> Add any other test setup code here
           goback returning 0
       .

      $end-region

       end program.
