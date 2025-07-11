.class public Lcom/netease/mpay/oversea/z4;
.super Ljava/lang/Object;
.source "LVUFactory.java"


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;
    .locals 14

    .line 24
    new-instance v13, Lcom/netease/mpay/oversea/v2;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x1

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v12}, Lcom/netease/mpay/oversea/v2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v13
.end method

.method public static a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;
    .locals 4

    .line 23
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x12d

    const-string v2, "lvu_age_stage"

    const-string v3, ""

    invoke-static {v2, p0, v3, v1}, Lcom/netease/mpay/oversea/z4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;
    .locals 5

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "lvu_age_stage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "lvu_input_mail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "lvu_upload_image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "lvu_person_info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "lvu_waiting_result"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_9

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_5
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/z4;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object p0

    return-object p0

    .line 13
    :cond_6
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/z4;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object p0

    return-object p0

    .line 17
    :cond_7
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/z4;->d(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object p0

    return-object p0

    .line 18
    :cond_8
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/z4;->c(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object p0

    return-object p0

    .line 22
    :cond_9
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/z4;->e(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x59f7831d -> :sswitch_4
        -0x37c896bc -> :sswitch_3
        0xe7f931 -> :sswitch_2
        0x51a8ada0 -> :sswitch_1
        0x5ff348aa -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_0

    const-string p0, "lvu_query"

    return-object p0

    :cond_0
    const-string p0, "lvu_person_info"

    return-object p0

    :cond_1
    const-string p0, "lvu_waiting_result"

    return-object p0

    :cond_2
    const-string p0, "lvu_upload_image"

    return-object p0

    :cond_3
    const-string p0, "lvu_input_mail"

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/4 v1, 0x1

    const-string v2, "lvu_input_mail"

    const-string v3, ""

    .line 2
    invoke-static {v2, p0, v3, v1}, Lcom/netease/mpay/oversea/z4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x12c

    const-string v2, "lvu_person_info"

    const-string v3, ""

    invoke-static {v2, p0, v3, v1}, Lcom/netease/mpay/oversea/z4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/4 v1, 0x2

    const-string v2, "lvu_upload_image"

    const-string v3, ""

    .line 2
    invoke-static {v2, p0, v3, v1}, Lcom/netease/mpay/oversea/z4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/4 v1, 0x3

    const-string v2, "lvu_waiting_result"

    const-string v3, ""

    .line 2
    invoke-static {v2, p0, v3, v1}, Lcom/netease/mpay/oversea/z4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method
