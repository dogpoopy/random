.class public Lcom/netease/mpay/oversea/wa;
.super Ljava/lang/Object;
.source "TextCompat.java"


# direct methods
.method public static a(Ljava/lang/String;[I[Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 46
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 47
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 48
    aget-object v2, p2, v1

    .line 49
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    aget v4, p1, v1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 50
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v5, 0x22

    .line 52
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "error!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;[I[Ljava/lang/String;[Landroid/text/style/ClickableSpan;)Landroid/text/SpannableString;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 56
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 57
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 58
    aget-object v2, p2, v1

    .line 59
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    aget v4, p1, v1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 61
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v5, 0x22

    if-eqz p3, :cond_0

    .line 62
    aget-object v6, p3, v1

    if-eqz v6, :cond_0

    .line 63
    invoke-virtual {v0, v6, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 65
    :cond_0
    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v6, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 66
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "error!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "utf-8"

    const-string v1, "?"

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 87
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "&"

    .line 89
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_1
    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_2
    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789abcdef"

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 71
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 72
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 73
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    .line 74
    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 75
    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x3f

    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 103
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "&"

    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 105
    array-length v1, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p0, v4

    const-string v6, "="

    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v2, :cond_0

    .line 108
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v6, ""

    .line 110
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_text_view_size_89:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__text_view_height_42:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float v0, v0

    int-to-float p0, p0

    const/4 v1, 0x1

    .line 40
    invoke-static {p1, p2, v0, p0, v1}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;Landroid/widget/TextView;FFZ)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    .line 41
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__text_view_width_102:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__text_view_height_32:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 43
    invoke-static {p0, p1, v0, v1, v2}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;Landroid/widget/TextView;FFZ)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/TextView;FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;Landroid/widget/TextView;FFZ)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/TextView;FFZ)V
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 2
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    .line 5
    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 7
    new-instance v12, Landroid/text/StaticLayout;

    float-to-int v13, v1

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v12

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v13

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v15, 0x40000000    # 2.0f

    const/4 v10, 0x1

    if-eqz p4, :cond_3

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v9, p0

    .line 13
    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 14
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    if-ne v5, v10, :cond_1

    cmpg-float v1, v4, v1

    if-gez v1, :cond_1

    return-void

    :cond_1
    move v1, v11

    .line 17
    :goto_0
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-le v4, v10, :cond_2

    cmpl-float v3, v3, v14

    if-lez v3, :cond_2

    sub-float/2addr v1, v15

    div-float v12, v1, v11

    .line 20
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 21
    new-instance v16, Landroid/text/StaticLayout;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    move-object/from16 v3, v16

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v13

    move/from16 v9, v17

    const/4 v15, 0x1

    move/from16 v10, v18

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move v3, v12

    move-object/from16 v12, v16

    const/4 v10, 0x1

    const/high16 v15, 0x40000000    # 2.0f

    move-object/from16 v9, p0

    goto :goto_0

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_2

    :cond_3
    const/4 v15, 0x1

    .line 25
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ne v1, v15, :cond_4

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p3

    if-gez v1, :cond_4

    return-void

    :cond_4
    move v1, v11

    .line 28
    :goto_1
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, p3

    if-ltz v4, :cond_2

    cmpl-float v3, v3, v14

    if-lez v3, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v1, v3

    div-float v12, v1, v11

    .line 31
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 32
    new-instance v15, Landroid/text/StaticLayout;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v3, v15

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v13

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move v3, v12

    move-object v12, v15

    goto :goto_1

    :goto_2
    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static a()Z
    .locals 2

    .line 68
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/h9;->k:Lcom/netease/mpay/oversea/GameLanguage;

    .line 69
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->ZH_CN:Lcom/netease/mpay/oversea/GameLanguage;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->ZH_HK:Lcom/netease/mpay/oversea/GameLanguage;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->ZH_TW:Lcom/netease/mpay/oversea/GameLanguage;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 8
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__view_region_width_90:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__text_view_height_42:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 3
    invoke-static {p0, p1, v0, v1, v2}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;Landroid/widget/TextView;FFZ)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "[^ -~]"

    const/16 v1, 0x42

    .line 4
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 4
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/netease/mpay/oversea/wa;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static c(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_text_view_size_78:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_35:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 3
    invoke-static {p0, p1, v0, v1, v2}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;Landroid/widget/TextView;FFZ)V

    return-void
.end method
