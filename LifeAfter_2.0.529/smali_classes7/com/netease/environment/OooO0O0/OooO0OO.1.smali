.class public Lcom/netease/environment/OooO0O0/OooO0OO;
.super Ljava/lang/Object;
.source "ReplaceAction.java"


# static fields
.field private static final OooO00o:Ljava/lang/String; = "OooO0OO"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/netease/environment/OooO0oo/OooOO0o;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v4, v3}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v3

    const/16 v5, 0xce

    if-eq v0, v3, :cond_1

    .line 11
    sget-object v1, Lcom/netease/environment/OooO0O0/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source length:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " format length:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOO0O()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "R_1"

    invoke-static {v5, v0, v1, v2}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 17
    :cond_1
    :try_start_0
    sget-object v0, Lcom/netease/environment/OooO0O0/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v6, "replace words fast mode"

    invoke-static {v0, v6}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    const-string v6, "time out"

    const/16 v7, 0x64

    const-string v8, "-1"

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "R_6"

    .line 19
    invoke-static {v7, v6, v8, v0}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 21
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o0(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 22
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 23
    new-array v10, v9, [I

    .line 24
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    const-string v14, ""

    .line 28
    :try_start_2
    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 30
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/environment/regex/Pattern;

    .line 32
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOOO()Z

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    const-string v4, "R_2"

    const-string v5, " to "

    const-string v7, " at "

    const-string v13, " matches "

    if-eqz v14, :cond_7

    .line 33
    :try_start_4
    invoke-virtual {v0, v2}, Lcom/netease/environment/regex/Pattern;->matchers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/netease/environment/regex/Matcher;

    move-object/from16 v17, v0

    .line 37
    invoke-virtual {v14}, Lcom/netease/environment/regex/Matcher;->start()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v18, v12

    .line 38
    :try_start_5
    invoke-virtual {v14}, Lcom/netease/environment/regex/Matcher;->end()I

    move-result v12

    .line 39
    invoke-virtual {v14}, Lcom/netease/environment/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 40
    sget-object v1, Lcom/netease/environment/OooO0O0/OooO0OO;->OooO00o:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v19, v3

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v20, v11

    :try_start_7
    const-string v11, "pcre the regex "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_3

    if-le v12, v0, :cond_3

    if-lt v9, v12, :cond_3

    :goto_3
    if-ge v0, v12, :cond_3

    const/4 v1, 0x1

    .line 44
    aput v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 47
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x64

    .line 48
    invoke-static {v1, v6, v8, v4}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-object v0

    :cond_4
    move-object/from16 v1, p1

    move-object/from16 v0, v17

    move-object/from16 v12, v18

    move/from16 v3, v19

    move-object/from16 v11, v20

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v14, v15

    move-object/from16 v1, v20

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move/from16 v19, v3

    goto :goto_4

    :cond_5
    move/from16 v19, v3

    move-object/from16 v20, v11

    move-object/from16 v18, v12

    const/16 v3, 0x64

    const/4 v13, 0x1

    goto/16 :goto_8

    :cond_6
    move/from16 v19, v3

    move-object/from16 v20, v11

    move-object/from16 v18, v12

    const/16 v3, 0x64

    const/4 v13, 0x0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move/from16 v19, v3

    move-object/from16 v18, v12

    :goto_4
    move-object v1, v11

    move-object v14, v15

    goto/16 :goto_c

    :cond_7
    move/from16 v19, v3

    move-object/from16 v20, v11

    move-object/from16 v18, v12

    .line 53
    :try_start_8
    invoke-virtual {v0, v2}, Lcom/netease/environment/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/netease/environment/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    :goto_5
    invoke-virtual {v0}, Lcom/netease/environment/regex/Matcher;->find()Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    if-eqz v3, :cond_a

    .line 56
    :try_start_9
    invoke-virtual {v0}, Lcom/netease/environment/regex/Matcher;->start()I

    move-result v1

    .line 57
    invoke-virtual {v0}, Lcom/netease/environment/regex/Matcher;->end()I

    move-result v3

    .line 58
    invoke-virtual {v0}, Lcom/netease/environment/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    .line 59
    sget-object v12, Lcom/netease/environment/OooO0O0/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "jdk the regex "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    if-ltz v1, :cond_8

    if-le v3, v1, :cond_8

    if-lt v9, v3, :cond_8

    :goto_6
    if-ge v1, v3, :cond_8

    const/4 v0, 0x1

    .line 63
    :try_start_a
    aput v0, v10, v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 66
    :cond_8
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    if-eqz v0, :cond_9

    const/16 v3, 0x64

    .line 67
    :try_start_c
    invoke-static {v3, v6, v8, v4}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    return-object v0

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_9
    move-object/from16 v0, v17

    const/4 v1, 0x1

    goto :goto_5

    :catch_5
    move-exception v0

    const/16 v3, 0x64

    :goto_7
    move-object v14, v15

    move-object/from16 v1, v20

    goto :goto_d

    :cond_a
    const/16 v3, 0x64

    move v13, v1

    :goto_8
    if-eqz v13, :cond_b

    move-object/from16 v1, v20

    .line 72
    :try_start_d
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :goto_9
    move-object v11, v1

    move-object/from16 v12, v18

    move/from16 v3, v19

    const/4 v4, 0x0

    const/16 v5, 0xce

    const/16 v7, 0x64

    move-object/from16 v1, p1

    goto/16 :goto_1

    :catch_6
    move-exception v0

    goto :goto_b

    :cond_b
    move-object/from16 v1, p1

    move-object/from16 v12, v18

    move/from16 v3, v19

    move-object/from16 v11, v20

    const/4 v4, 0x0

    const/16 v5, 0xce

    const/16 v7, 0x64

    goto/16 :goto_1

    :catch_7
    move-exception v0

    move-object/from16 v1, v20

    goto :goto_a

    :catch_8
    move-exception v0

    move/from16 v19, v3

    move-object v1, v11

    move-object/from16 v18, v12

    :goto_a
    const/16 v3, 0x64

    :goto_b
    move-object v14, v15

    goto :goto_d

    :catch_9
    move-exception v0

    move/from16 v19, v3

    move-object v1, v11

    move-object/from16 v18, v12

    :goto_c
    const/16 v3, 0x64

    .line 75
    :goto_d
    :try_start_e
    sget-object v4, Lcom/netease/environment/OooO0O0/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception when run in replace words, pattern key: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " content: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and exception:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    move/from16 v19, v3

    move-object v1, v11

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v3, v19

    .line 80
    new-array v4, v3, [I

    .line 85
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_e
    if-ge v6, v3, :cond_10

    .line 89
    invoke-static {v2, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v11

    .line 91
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    .line 92
    aget v13, v10, v7

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 93
    invoke-static {v2, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v13

    if-ne v11, v13, :cond_d

    .line 95
    aput v14, v4, v6

    :cond_d
    add-int/2addr v7, v12

    move-object/from16 v11, p1

    .line 102
    invoke-static {v11, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v12

    .line 103
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    .line 104
    aget v13, v4, v6

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    if-nez v16, :cond_f

    .line 108
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOO0O()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_e
    add-int v13, v9, v12

    .line 113
    invoke-static {v5, v9, v13}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v13

    .line 114
    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    .line 115
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_f
    add-int/2addr v9, v12

    .line 120
    aget v16, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_10
    move-object/from16 v11, p1

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "R_3"

    const/16 v3, 0xce

    .line 127
    invoke-static {v3, v0, v1, v2}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const/16 v0, 0xc8

    const-string v1, "pass"

    const-string v2, "R_4"

    .line 130
    invoke-static {v0, v1, v8, v2}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    const-string v1, "fast"

    .line 132
    invoke-static {v0, v1}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcom/netease/environment/OooO0O0/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when run in replace words fast mode\uff0cexception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "R_5"

    .line 134
    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
