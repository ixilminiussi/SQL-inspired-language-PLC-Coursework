{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,359) ([28576,50752,257,0,16384,0,0,8192,2,0,0,0,0,0,0,62464,51213,41016,16495,454,893,3634,7144,29072,57152,35968,64003,25606,28,0,32768,446,1817,0,0,28576,50752,32001,12803,14,17408,128,8192,258,0,17,18432,2112,65152,64447,62471,56831,63,32912,16,33661,3642,0,0,128,544,64000,25606,53276,8247,32995,446,1817,3572,14536,28576,50752,32001,12803,59406,36891,16497,32991,908,1786,7268,14288,58144,48768,6401,62471,51213,41016,16495,454,0,8,7144,29072,0,32,0,0,0,0,0,512,2,4608,528,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4112,40962,16495,454,0,0,0,0,0,0,0,0,0,0,0,16384,4,8,34,28576,50752,1,2176,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Formula","let","in","int","var","'select'","'column'","'concatenate'","'and'","'any'","'conjunction'","'where'","','","'_'","'row'","'.'","'=='","'drop'","'merge'","'order by'","'='","'alphabetical'","'all'","'or'","'not'","'xor'","'empty'","'\"'","'('","')'","%eof"]
        bit_start = st * 35
        bit_end = (st + 1) * 35
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..34]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (11) = happyShift action_8
action_0 (12) = happyShift action_9
action_0 (14) = happyShift action_10
action_0 (15) = happyShift action_11
action_0 (23) = happyShift action_12
action_0 (26) = happyShift action_13
action_0 (27) = happyShift action_14
action_0 (31) = happyShift action_15
action_0 (32) = happyShift action_16
action_0 (33) = happyShift action_17
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (9) = happyShift action_41
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (21) = happyShift action_39
action_3 (25) = happyShift action_40
action_3 (35) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (13) = happyShift action_28
action_4 (16) = happyShift action_29
action_4 (17) = happyShift action_30
action_4 (18) = happyShift action_31
action_4 (19) = happyShift action_32
action_4 (20) = happyShift action_33
action_4 (22) = happyShift action_34
action_4 (24) = happyShift action_35
action_4 (28) = happyShift action_36
action_4 (29) = happyShift action_37
action_4 (30) = happyShift action_38
action_4 _ = happyReduce_6

action_5 _ = happyReduce_3

action_6 _ = happyReduce_4

action_7 (6) = happyShift action_2
action_7 (8) = happyShift action_5
action_7 (9) = happyShift action_6
action_7 (10) = happyShift action_7
action_7 (11) = happyShift action_8
action_7 (12) = happyShift action_9
action_7 (14) = happyShift action_10
action_7 (15) = happyShift action_11
action_7 (23) = happyShift action_12
action_7 (26) = happyShift action_13
action_7 (27) = happyShift action_14
action_7 (31) = happyShift action_15
action_7 (32) = happyShift action_16
action_7 (33) = happyShift action_17
action_7 (4) = happyGoto action_27
action_7 (5) = happyGoto action_4
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (6) = happyShift action_2
action_8 (8) = happyShift action_5
action_8 (9) = happyShift action_6
action_8 (10) = happyShift action_7
action_8 (11) = happyShift action_8
action_8 (12) = happyShift action_9
action_8 (14) = happyShift action_10
action_8 (15) = happyShift action_11
action_8 (23) = happyShift action_12
action_8 (26) = happyShift action_13
action_8 (27) = happyShift action_14
action_8 (31) = happyShift action_15
action_8 (32) = happyShift action_16
action_8 (33) = happyShift action_17
action_8 (4) = happyGoto action_26
action_8 (5) = happyGoto action_4
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (8) = happyShift action_5
action_9 (9) = happyShift action_6
action_9 (10) = happyShift action_7
action_9 (11) = happyShift action_8
action_9 (12) = happyShift action_9
action_9 (14) = happyShift action_10
action_9 (15) = happyShift action_11
action_9 (23) = happyShift action_12
action_9 (26) = happyShift action_13
action_9 (27) = happyShift action_14
action_9 (31) = happyShift action_15
action_9 (32) = happyShift action_16
action_9 (33) = happyShift action_17
action_9 (4) = happyGoto action_25
action_9 (5) = happyGoto action_4
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (10) = happyShift action_7
action_10 (11) = happyShift action_8
action_10 (12) = happyShift action_9
action_10 (14) = happyShift action_10
action_10 (15) = happyShift action_11
action_10 (23) = happyShift action_12
action_10 (26) = happyShift action_13
action_10 (27) = happyShift action_14
action_10 (31) = happyShift action_15
action_10 (32) = happyShift action_16
action_10 (33) = happyShift action_17
action_10 (4) = happyGoto action_20
action_10 (5) = happyGoto action_24
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (8) = happyShift action_5
action_11 (9) = happyShift action_6
action_11 (10) = happyShift action_7
action_11 (11) = happyShift action_8
action_11 (12) = happyShift action_9
action_11 (14) = happyShift action_10
action_11 (15) = happyShift action_11
action_11 (23) = happyShift action_12
action_11 (26) = happyShift action_13
action_11 (27) = happyShift action_14
action_11 (31) = happyShift action_15
action_11 (32) = happyShift action_16
action_11 (33) = happyShift action_17
action_11 (4) = happyGoto action_20
action_11 (5) = happyGoto action_23
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (8) = happyShift action_5
action_12 (9) = happyShift action_6
action_12 (10) = happyShift action_7
action_12 (11) = happyShift action_8
action_12 (12) = happyShift action_9
action_12 (14) = happyShift action_10
action_12 (15) = happyShift action_11
action_12 (23) = happyShift action_12
action_12 (26) = happyShift action_13
action_12 (27) = happyShift action_14
action_12 (31) = happyShift action_15
action_12 (32) = happyShift action_16
action_12 (33) = happyShift action_17
action_12 (4) = happyGoto action_20
action_12 (5) = happyGoto action_22
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_23

action_14 (6) = happyShift action_2
action_14 (8) = happyShift action_5
action_14 (9) = happyShift action_6
action_14 (10) = happyShift action_7
action_14 (11) = happyShift action_8
action_14 (12) = happyShift action_9
action_14 (14) = happyShift action_10
action_14 (15) = happyShift action_11
action_14 (23) = happyShift action_12
action_14 (26) = happyShift action_13
action_14 (27) = happyShift action_14
action_14 (31) = happyShift action_15
action_14 (32) = happyShift action_16
action_14 (33) = happyShift action_17
action_14 (4) = happyGoto action_20
action_14 (5) = happyGoto action_21
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_28

action_16 (6) = happyShift action_2
action_16 (8) = happyShift action_5
action_16 (9) = happyShift action_6
action_16 (10) = happyShift action_7
action_16 (11) = happyShift action_8
action_16 (12) = happyShift action_9
action_16 (14) = happyShift action_10
action_16 (15) = happyShift action_11
action_16 (23) = happyShift action_12
action_16 (26) = happyShift action_13
action_16 (27) = happyShift action_14
action_16 (31) = happyShift action_15
action_16 (32) = happyShift action_16
action_16 (33) = happyShift action_17
action_16 (4) = happyGoto action_19
action_16 (5) = happyGoto action_4
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (8) = happyShift action_5
action_17 (9) = happyShift action_6
action_17 (10) = happyShift action_7
action_17 (11) = happyShift action_8
action_17 (12) = happyShift action_9
action_17 (14) = happyShift action_10
action_17 (15) = happyShift action_11
action_17 (23) = happyShift action_12
action_17 (26) = happyShift action_13
action_17 (27) = happyShift action_14
action_17 (31) = happyShift action_15
action_17 (32) = happyShift action_16
action_17 (33) = happyShift action_17
action_17 (4) = happyGoto action_18
action_17 (5) = happyGoto action_4
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (21) = happyShift action_39
action_18 (25) = happyShift action_40
action_18 (34) = happyShift action_61
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (21) = happyShift action_39
action_19 (25) = happyShift action_40
action_19 (32) = happyShift action_60
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (21) = happyShift action_39
action_20 (25) = happyShift action_40
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (13) = happyShift action_28
action_21 (16) = happyShift action_29
action_21 (17) = happyShift action_30
action_21 (18) = happyShift action_31
action_21 (19) = happyShift action_32
action_21 (20) = happyShift action_33
action_21 (21) = happyReduce_24
action_21 (22) = happyShift action_34
action_21 (24) = happyShift action_35
action_21 (25) = happyReduce_24
action_21 (29) = happyShift action_37
action_21 (30) = happyShift action_38
action_21 _ = happyReduce_24

action_22 (6) = happyShift action_2
action_22 (8) = happyShift action_5
action_22 (9) = happyShift action_6
action_22 (10) = happyShift action_7
action_22 (11) = happyShift action_8
action_22 (12) = happyShift action_9
action_22 (13) = happyShift action_28
action_22 (14) = happyShift action_10
action_22 (15) = happyShift action_11
action_22 (16) = happyShift action_29
action_22 (17) = happyShift action_30
action_22 (18) = happyShift action_31
action_22 (19) = happyShift action_32
action_22 (20) = happyShift action_33
action_22 (22) = happyShift action_34
action_22 (23) = happyShift action_12
action_22 (24) = happyShift action_35
action_22 (26) = happyShift action_13
action_22 (27) = happyShift action_14
action_22 (28) = happyShift action_36
action_22 (29) = happyShift action_37
action_22 (30) = happyShift action_38
action_22 (31) = happyShift action_15
action_22 (32) = happyShift action_16
action_22 (33) = happyShift action_17
action_22 (4) = happyGoto action_20
action_22 (5) = happyGoto action_59
action_22 _ = happyReduce_6

action_23 (6) = happyShift action_2
action_23 (8) = happyShift action_5
action_23 (9) = happyShift action_6
action_23 (10) = happyShift action_7
action_23 (11) = happyShift action_8
action_23 (12) = happyShift action_9
action_23 (13) = happyShift action_28
action_23 (14) = happyShift action_10
action_23 (15) = happyShift action_11
action_23 (16) = happyShift action_29
action_23 (17) = happyShift action_30
action_23 (18) = happyShift action_31
action_23 (19) = happyShift action_32
action_23 (20) = happyShift action_33
action_23 (22) = happyShift action_34
action_23 (23) = happyShift action_12
action_23 (24) = happyShift action_35
action_23 (26) = happyShift action_13
action_23 (27) = happyShift action_14
action_23 (28) = happyShift action_36
action_23 (29) = happyShift action_37
action_23 (30) = happyShift action_38
action_23 (31) = happyShift action_15
action_23 (32) = happyShift action_16
action_23 (33) = happyShift action_17
action_23 (4) = happyGoto action_20
action_23 (5) = happyGoto action_58
action_23 _ = happyReduce_6

action_24 (13) = happyShift action_28
action_24 (16) = happyShift action_29
action_24 (17) = happyShift action_30
action_24 (18) = happyShift action_31
action_24 (19) = happyShift action_32
action_24 (20) = happyShift action_33
action_24 (21) = happyReduce_11
action_24 (22) = happyShift action_34
action_24 (24) = happyShift action_35
action_24 (25) = happyReduce_11
action_24 (29) = happyShift action_37
action_24 (30) = happyShift action_38
action_24 _ = happyReduce_11

action_25 (6) = happyShift action_2
action_25 (8) = happyShift action_5
action_25 (9) = happyShift action_6
action_25 (10) = happyShift action_7
action_25 (11) = happyShift action_8
action_25 (12) = happyShift action_9
action_25 (14) = happyShift action_10
action_25 (15) = happyShift action_11
action_25 (21) = happyShift action_39
action_25 (23) = happyShift action_12
action_25 (25) = happyShift action_40
action_25 (26) = happyShift action_13
action_25 (27) = happyShift action_14
action_25 (31) = happyShift action_15
action_25 (32) = happyShift action_16
action_25 (33) = happyShift action_17
action_25 (4) = happyGoto action_57
action_25 (5) = happyGoto action_4
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (21) = happyShift action_39
action_26 (25) = happyShift action_40
action_26 _ = happyReduce_8

action_27 (7) = happyShift action_56
action_27 (21) = happyShift action_39
action_27 (25) = happyShift action_40
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (8) = happyShift action_5
action_28 (9) = happyShift action_6
action_28 (10) = happyShift action_7
action_28 (11) = happyShift action_8
action_28 (12) = happyShift action_9
action_28 (14) = happyShift action_10
action_28 (15) = happyShift action_11
action_28 (23) = happyShift action_12
action_28 (26) = happyShift action_13
action_28 (27) = happyShift action_14
action_28 (31) = happyShift action_15
action_28 (32) = happyShift action_16
action_28 (33) = happyShift action_17
action_28 (4) = happyGoto action_20
action_28 (5) = happyGoto action_55
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (8) = happyShift action_5
action_29 (9) = happyShift action_6
action_29 (10) = happyShift action_7
action_29 (11) = happyShift action_8
action_29 (12) = happyShift action_9
action_29 (14) = happyShift action_10
action_29 (15) = happyShift action_11
action_29 (23) = happyShift action_12
action_29 (26) = happyShift action_13
action_29 (27) = happyShift action_14
action_29 (31) = happyShift action_15
action_29 (32) = happyShift action_16
action_29 (33) = happyShift action_17
action_29 (4) = happyGoto action_54
action_29 (5) = happyGoto action_4
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (8) = happyShift action_5
action_30 (9) = happyShift action_6
action_30 (10) = happyShift action_7
action_30 (11) = happyShift action_8
action_30 (12) = happyShift action_9
action_30 (14) = happyShift action_10
action_30 (15) = happyShift action_11
action_30 (23) = happyShift action_12
action_30 (26) = happyShift action_13
action_30 (27) = happyShift action_14
action_30 (31) = happyShift action_15
action_30 (32) = happyShift action_16
action_30 (33) = happyShift action_17
action_30 (4) = happyGoto action_20
action_30 (5) = happyGoto action_53
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (8) = happyShift action_5
action_31 (9) = happyShift action_6
action_31 (10) = happyShift action_7
action_31 (11) = happyShift action_8
action_31 (12) = happyShift action_9
action_31 (14) = happyShift action_10
action_31 (15) = happyShift action_11
action_31 (23) = happyShift action_12
action_31 (26) = happyShift action_13
action_31 (27) = happyShift action_14
action_31 (31) = happyShift action_15
action_31 (32) = happyShift action_16
action_31 (33) = happyShift action_17
action_31 (4) = happyGoto action_20
action_31 (5) = happyGoto action_52
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (8) = happyShift action_5
action_32 (9) = happyShift action_6
action_32 (10) = happyShift action_7
action_32 (11) = happyShift action_8
action_32 (12) = happyShift action_9
action_32 (14) = happyShift action_10
action_32 (15) = happyShift action_11
action_32 (23) = happyShift action_12
action_32 (26) = happyShift action_13
action_32 (27) = happyShift action_14
action_32 (31) = happyShift action_15
action_32 (32) = happyShift action_16
action_32 (33) = happyShift action_17
action_32 (4) = happyGoto action_51
action_32 (5) = happyGoto action_4
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_2
action_33 (8) = happyShift action_5
action_33 (9) = happyShift action_6
action_33 (10) = happyShift action_7
action_33 (11) = happyShift action_8
action_33 (12) = happyShift action_9
action_33 (14) = happyShift action_10
action_33 (15) = happyShift action_11
action_33 (23) = happyShift action_12
action_33 (26) = happyShift action_13
action_33 (27) = happyShift action_14
action_33 (31) = happyShift action_15
action_33 (32) = happyShift action_16
action_33 (33) = happyShift action_17
action_33 (4) = happyGoto action_20
action_33 (5) = happyGoto action_50
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_2
action_34 (8) = happyShift action_5
action_34 (9) = happyShift action_6
action_34 (10) = happyShift action_7
action_34 (11) = happyShift action_8
action_34 (12) = happyShift action_9
action_34 (14) = happyShift action_10
action_34 (15) = happyShift action_11
action_34 (23) = happyShift action_12
action_34 (26) = happyShift action_13
action_34 (27) = happyShift action_14
action_34 (31) = happyShift action_15
action_34 (32) = happyShift action_16
action_34 (33) = happyShift action_17
action_34 (4) = happyGoto action_20
action_34 (5) = happyGoto action_49
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_2
action_35 (8) = happyShift action_5
action_35 (9) = happyShift action_6
action_35 (10) = happyShift action_7
action_35 (11) = happyShift action_8
action_35 (12) = happyShift action_9
action_35 (14) = happyShift action_10
action_35 (15) = happyShift action_11
action_35 (23) = happyShift action_12
action_35 (26) = happyShift action_13
action_35 (27) = happyShift action_14
action_35 (31) = happyShift action_15
action_35 (32) = happyShift action_16
action_35 (33) = happyShift action_17
action_35 (4) = happyGoto action_20
action_35 (5) = happyGoto action_48
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (8) = happyShift action_5
action_36 (9) = happyShift action_6
action_36 (10) = happyShift action_7
action_36 (11) = happyShift action_8
action_36 (12) = happyShift action_9
action_36 (14) = happyShift action_10
action_36 (15) = happyShift action_11
action_36 (23) = happyShift action_12
action_36 (26) = happyShift action_13
action_36 (27) = happyShift action_14
action_36 (31) = happyShift action_15
action_36 (32) = happyShift action_16
action_36 (33) = happyShift action_17
action_36 (4) = happyGoto action_20
action_36 (5) = happyGoto action_47
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (6) = happyShift action_2
action_37 (8) = happyShift action_5
action_37 (9) = happyShift action_6
action_37 (10) = happyShift action_7
action_37 (11) = happyShift action_8
action_37 (12) = happyShift action_9
action_37 (14) = happyShift action_10
action_37 (15) = happyShift action_11
action_37 (23) = happyShift action_12
action_37 (26) = happyShift action_13
action_37 (27) = happyShift action_14
action_37 (31) = happyShift action_15
action_37 (32) = happyShift action_16
action_37 (33) = happyShift action_17
action_37 (4) = happyGoto action_20
action_37 (5) = happyGoto action_46
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (6) = happyShift action_2
action_38 (8) = happyShift action_5
action_38 (9) = happyShift action_6
action_38 (10) = happyShift action_7
action_38 (11) = happyShift action_8
action_38 (12) = happyShift action_9
action_38 (14) = happyShift action_10
action_38 (15) = happyShift action_11
action_38 (23) = happyShift action_12
action_38 (26) = happyShift action_13
action_38 (27) = happyShift action_14
action_38 (31) = happyShift action_15
action_38 (32) = happyShift action_16
action_38 (33) = happyShift action_17
action_38 (4) = happyGoto action_20
action_38 (5) = happyGoto action_45
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (6) = happyShift action_2
action_39 (8) = happyShift action_5
action_39 (9) = happyShift action_6
action_39 (10) = happyShift action_7
action_39 (11) = happyShift action_8
action_39 (12) = happyShift action_9
action_39 (14) = happyShift action_10
action_39 (15) = happyShift action_11
action_39 (23) = happyShift action_12
action_39 (26) = happyShift action_13
action_39 (27) = happyShift action_14
action_39 (31) = happyShift action_15
action_39 (32) = happyShift action_16
action_39 (33) = happyShift action_17
action_39 (4) = happyGoto action_44
action_39 (5) = happyGoto action_4
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (6) = happyShift action_2
action_40 (8) = happyShift action_5
action_40 (9) = happyShift action_6
action_40 (10) = happyShift action_7
action_40 (11) = happyShift action_8
action_40 (12) = happyShift action_9
action_40 (14) = happyShift action_10
action_40 (15) = happyShift action_11
action_40 (23) = happyShift action_12
action_40 (26) = happyShift action_13
action_40 (27) = happyShift action_14
action_40 (31) = happyShift action_15
action_40 (32) = happyShift action_16
action_40 (33) = happyShift action_17
action_40 (4) = happyGoto action_43
action_40 (5) = happyGoto action_4
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (25) = happyShift action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (8) = happyShift action_5
action_42 (9) = happyShift action_6
action_42 (10) = happyShift action_7
action_42 (11) = happyShift action_8
action_42 (12) = happyShift action_9
action_42 (14) = happyShift action_10
action_42 (15) = happyShift action_11
action_42 (23) = happyShift action_12
action_42 (26) = happyShift action_13
action_42 (27) = happyShift action_14
action_42 (31) = happyShift action_15
action_42 (32) = happyShift action_16
action_42 (33) = happyShift action_17
action_42 (4) = happyGoto action_63
action_42 (5) = happyGoto action_4
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (21) = happyShift action_39
action_43 _ = happyReduce_22

action_44 _ = happyReduce_18

action_45 (13) = happyShift action_28
action_45 (16) = happyShift action_29
action_45 (17) = happyShift action_30
action_45 (18) = happyShift action_31
action_45 (19) = happyShift action_32
action_45 (20) = happyShift action_33
action_45 (21) = happyReduce_27
action_45 (22) = happyShift action_34
action_45 (24) = happyShift action_35
action_45 (25) = happyReduce_27
action_45 (28) = happyShift action_36
action_45 (29) = happyShift action_37
action_45 (30) = happyShift action_38
action_45 _ = happyReduce_27

action_46 (16) = happyShift action_29
action_46 (17) = happyShift action_30
action_46 (18) = happyShift action_31
action_46 (19) = happyShift action_32
action_46 (20) = happyShift action_33
action_46 (21) = happyReduce_26
action_46 (22) = happyShift action_34
action_46 (24) = happyShift action_35
action_46 (25) = happyReduce_26
action_46 (30) = happyShift action_38
action_46 _ = happyReduce_26

action_47 (13) = happyShift action_28
action_47 (16) = happyShift action_29
action_47 (17) = happyShift action_30
action_47 (18) = happyShift action_31
action_47 (19) = happyShift action_32
action_47 (20) = happyShift action_33
action_47 (21) = happyReduce_25
action_47 (22) = happyShift action_34
action_47 (24) = happyShift action_35
action_47 (25) = happyReduce_25
action_47 (29) = happyShift action_37
action_47 (30) = happyShift action_38
action_47 _ = happyReduce_25

action_48 (16) = happyShift action_29
action_48 (17) = happyShift action_30
action_48 (18) = happyShift action_31
action_48 (19) = happyShift action_32
action_48 (20) = happyShift action_33
action_48 (21) = happyReduce_21
action_48 (22) = happyShift action_34
action_48 (25) = happyReduce_21
action_48 (30) = happyShift action_38
action_48 _ = happyReduce_21

action_49 (13) = happyShift action_28
action_49 (16) = happyShift action_29
action_49 (17) = happyShift action_30
action_49 (18) = happyShift action_31
action_49 (19) = happyShift action_32
action_49 (20) = happyShift action_33
action_49 (21) = happyReduce_19
action_49 (22) = happyShift action_34
action_49 (24) = happyShift action_35
action_49 (25) = happyReduce_19
action_49 (28) = happyShift action_36
action_49 (29) = happyShift action_37
action_49 (30) = happyShift action_38
action_49 _ = happyReduce_19

action_50 (13) = happyShift action_28
action_50 (16) = happyShift action_29
action_50 (17) = happyShift action_30
action_50 (18) = happyShift action_31
action_50 (19) = happyShift action_32
action_50 (20) = happyShift action_33
action_50 (21) = happyReduce_17
action_50 (22) = happyShift action_34
action_50 (24) = happyShift action_35
action_50 (25) = happyReduce_17
action_50 (28) = happyShift action_36
action_50 (29) = happyShift action_37
action_50 (30) = happyShift action_38
action_50 _ = happyReduce_17

action_51 (21) = happyShift action_39
action_51 (25) = happyShift action_40
action_51 _ = happyReduce_16

action_52 (13) = happyShift action_28
action_52 (16) = happyShift action_29
action_52 (17) = happyShift action_30
action_52 (18) = happyShift action_31
action_52 (19) = happyShift action_32
action_52 (20) = happyShift action_33
action_52 (21) = happyReduce_15
action_52 (22) = happyShift action_34
action_52 (24) = happyShift action_35
action_52 (25) = happyReduce_15
action_52 (28) = happyShift action_36
action_52 (29) = happyShift action_37
action_52 (30) = happyShift action_38
action_52 _ = happyReduce_15

action_53 (13) = happyShift action_28
action_53 (16) = happyShift action_29
action_53 (17) = happyShift action_30
action_53 (18) = happyShift action_31
action_53 (19) = happyShift action_32
action_53 (20) = happyShift action_33
action_53 (21) = happyReduce_14
action_53 (22) = happyShift action_34
action_53 (24) = happyShift action_35
action_53 (25) = happyReduce_14
action_53 (28) = happyShift action_36
action_53 (29) = happyShift action_37
action_53 (30) = happyShift action_38
action_53 _ = happyReduce_14

action_54 _ = happyReduce_13

action_55 (16) = happyShift action_29
action_55 (17) = happyShift action_30
action_55 (18) = happyShift action_31
action_55 (19) = happyShift action_32
action_55 (20) = happyShift action_33
action_55 (21) = happyReduce_10
action_55 (22) = happyShift action_34
action_55 (24) = happyShift action_35
action_55 (25) = happyReduce_10
action_55 (29) = happyShift action_37
action_55 (30) = happyShift action_38
action_55 _ = happyReduce_10

action_56 (6) = happyShift action_2
action_56 (8) = happyShift action_5
action_56 (9) = happyShift action_6
action_56 (10) = happyShift action_7
action_56 (11) = happyShift action_8
action_56 (12) = happyShift action_9
action_56 (14) = happyShift action_10
action_56 (15) = happyShift action_11
action_56 (23) = happyShift action_12
action_56 (26) = happyShift action_13
action_56 (27) = happyShift action_14
action_56 (31) = happyShift action_15
action_56 (32) = happyShift action_16
action_56 (33) = happyShift action_17
action_56 (4) = happyGoto action_62
action_56 (5) = happyGoto action_4
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_9

action_58 (13) = happyShift action_28
action_58 (16) = happyShift action_29
action_58 (17) = happyShift action_30
action_58 (18) = happyShift action_31
action_58 (19) = happyShift action_32
action_58 (20) = happyShift action_33
action_58 (21) = happyReduce_12
action_58 (22) = happyShift action_34
action_58 (24) = happyShift action_35
action_58 (25) = happyReduce_12
action_58 (28) = happyShift action_36
action_58 (29) = happyShift action_37
action_58 (30) = happyShift action_38
action_58 _ = happyReduce_12

action_59 (13) = happyShift action_28
action_59 (16) = happyShift action_29
action_59 (17) = happyShift action_30
action_59 (18) = happyShift action_31
action_59 (19) = happyShift action_32
action_59 (20) = happyShift action_33
action_59 (21) = happyReduce_20
action_59 (22) = happyShift action_34
action_59 (24) = happyShift action_35
action_59 (25) = happyReduce_20
action_59 (28) = happyShift action_36
action_59 (29) = happyShift action_37
action_59 (30) = happyShift action_38
action_59 _ = happyReduce_20

action_60 _ = happyReduce_5

action_61 _ = happyReduce_2

action_62 (21) = happyShift action_39
action_62 (25) = happyShift action_40
action_62 _ = happyReduce_7

action_63 (7) = happyShift action_64
action_63 (21) = happyShift action_39
action_63 (25) = happyShift action_40
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (6) = happyShift action_2
action_64 (8) = happyShift action_5
action_64 (9) = happyShift action_6
action_64 (10) = happyShift action_7
action_64 (11) = happyShift action_8
action_64 (12) = happyShift action_9
action_64 (14) = happyShift action_10
action_64 (15) = happyShift action_11
action_64 (23) = happyShift action_12
action_64 (26) = happyShift action_13
action_64 (27) = happyShift action_14
action_64 (31) = happyShift action_15
action_64 (32) = happyShift action_16
action_64 (33) = happyShift action_17
action_64 (4) = happyGoto action_65
action_64 (5) = happyGoto action_4
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (21) = happyShift action_39
action_65 (25) = happyShift action_40
action_65 _ = happyReduce_1

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (Int happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Formula happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happyReduce 4 5 happyReduction_7
happyReduction_7 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Select happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_2  5 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Column happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Concatenate happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (And happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Any happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Conjunction happy_var_2 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Where happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Comma happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Under happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Row happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Dot happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Drop happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Merge happy_var_2 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (OrderBy happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  5 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn5
		 (Alphabetical
	)

happyReduce_24 = happySpecReduce_2  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (All happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Or happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Not happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Xor happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn5
		 (Empty
	)

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet _ -> cont 6;
	TokenIn _ -> cont 7;
	TokenInt _ happy_dollar_dollar -> cont 8;
	TokenVar _ happy_dollar_dollar -> cont 9;
	TokenSelect _ -> cont 10;
	TokenColumn _ -> cont 11;
	TokenConcatenate _ -> cont 12;
	TokenAnd _ -> cont 13;
	TokenAny _ -> cont 14;
	TokenConjunction _ -> cont 15;
	TokenWhere _ -> cont 16;
	TokenComma _ -> cont 17;
	TokenUnder _ -> cont 18;
	TokenRow _ -> cont 19;
	TokenDot _ -> cont 20;
	TokenEqual _ -> cont 21;
	TokenDrop _ -> cont 22;
	TokenMerge _ -> cont 23;
	TokenOrderBy _ -> cont 24;
	TokenAssign _ -> cont 25;
	TokenAlphabetical _ -> cont 26;
	TokenAll _ -> cont 27;
	TokenOr _ -> cont 28;
	TokenNot _ -> cont 29;
	TokenXor _ -> cont 30;
	TokenEmpty _ -> cont 31;
	TokenQuotation _ -> cont 32;
	TokenRParenthesis _ -> cont 33;
	TokenLParenthesis _ -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error"
parseError (t:_) = error ("Parse error at line:column " ++ (tokenPosn t))

data Exp = Let String Exp Exp
         | Int Int
         | Var String
         | Boolean Bool
         | Formula Formula
         deriving Show

data Formula = Select Exp Exp
             | Column Exp
             | Concatenate Exp Exp
             | And Formula Formula
             | Any Formula
             | Conjunction Formula Formula
             | Where Formula Exp
             | Comma Formula Formula
             | Under Formula Formula
             | Row Formula Exp
             | Dot Formula Formula
             | Equal Exp Exp
             | Drop Formula Formula
             | Merge Formula Formula
             | OrderBy Formula Formula
             | Assign Exp Exp
             | Alphabetical
             | All Formula
             | Or Formula Formula
             | Not Formula Formula
             | Xor Formula Formula
             | Empty
             deriving Show
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
