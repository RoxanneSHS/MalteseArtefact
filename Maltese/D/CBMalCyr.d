CHAIN
IF WEIGHT #-3~Global("CBCyricCome","Global",1)~ THEN Chalcy01 Horns1
@1
DO~SetGlobal("CBCyricCome","Global",2)~
= @2 DO~TakePartyItem("CbMalr6a")~
= @3 DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT