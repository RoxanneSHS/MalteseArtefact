EXTEND_TOP WSMITH01 0 1 2 3 4 5 6 58
  IF ~GlobalGT("CbMalteseArtifact","GLOBAL",4)
      !GlobalGT("CbCromwellDestroysCrown","AR0334",0)~ THEN REPLY @3 GOTO CB_62

  IF ~GlobalGT("CbMalteseArtifact","GLOBAL",4)
      PartyHasItem("CBMALR6a")
      Global("SPRITE_IS_DEADCBMALR1","GLOBAL",1)~ THEN REPLY @5 GOTO CB_74
END

APPEND Wsmith01

IF ~~ THEN BEGIN CB_62
  SAY @101
  IF ~~ THEN GOTO CB_63
END

IF ~~ THEN BEGIN CB_63
  SAY @102
  IF ~~ THEN REPLY @103 GOTO CB_64
END

IF ~~ THEN BEGIN CB_64
  SAY @104
  IF ~~ THEN REPLY @105 GOTO CB_65
END

IF ~~ THEN BEGIN CB_65
  SAY @106
  IF ~~ THEN REPLY @107 GOTO CB_66
  IF ~PartyHasItem("MISC42")
PartyHasItem("SCRL6M")
PartyHasItem("POTN34")
OR(4)
PartyHasItem("AMUL17")
PartyHasItem("CHALCY3")
PartyHasItem("IPSION")
PartyHasItem("RING14")~ THEN REPLY @108 GOTO CB_68
END

IF ~~ THEN BEGIN CB_66
  SAY @109
  IF ~~ THEN REPLY @110 GOTO CB_67
END

IF ~~ THEN BEGIN CB_67
  SAY @111
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CB_68
  SAY @112
  IF ~~ THEN REPLY @113 GOTO CB_71
  IF ~~ THEN REPLY @114 GOTO CB_69
END

IF ~~ THEN BEGIN CB_69
  SAY @115
  IF ~~ THEN GOTO CB_70
END

IF ~~ THEN BEGIN CB_70
  SAY @116
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CB_71
  SAY @117
  IF ~~ THEN DO ~SetGlobal("CbCromwellForgesCrown","AR0334",1)
StartCutSceneMode()
StartCutScene("CROMWELL")~ EXIT
END

IF ~Global("CbCromwellForgesCrown","AR0334",1)
PartyHasItem("CBMALDUP")~ THEN BEGIN CB_72
  SAY @118
  IF ~~ THEN REPLY @119 DO ~SetGlobal("CbCromwellForgesCrown","AR0334",2)
AddJournalEntry(@179,QUEST)
EraseJournalEntry(@180)
EraseJournalEntry(@181)
EraseJournalEntry(@182)
EraseJournalEntry(@183)
EraseJournalEntry(@184)
EraseJournalEntry(@185)
EraseJournalEntry(@186)~ EXIT
END

IF ~Global("CbCromwellForgesCrown","AR0334",1)
!PartyHasItem("CBMALDUP")~ THEN BEGIN CB_73
  SAY @120
  IF ~~ THEN REPLY @121 DO ~SetGlobal("CbCromwellForgesCrown","AR0334",0)
AddJournalEntry(@187,QUEST)~ EXIT
END

IF ~~ THEN BEGIN CB_74
  SAY @122
  IF ~~ THEN DO ~TakePartyItem("CBMALR6a")
AddJournalEntry(@188,QUEST_DONE)
EraseJournalEntry(@189)
EraseJournalEntry(@179)
EraseJournalEntry(@180)
EraseJournalEntry(@181)
EraseJournalEntry(@182)
EraseJournalEntry(@183)
EraseJournalEntry(@184)
EraseJournalEntry(@185)
EraseJournalEntry(@186)
SetGlobal("CbCromwellDestroysCrown","AR0334",1)~ EXIT
END

END