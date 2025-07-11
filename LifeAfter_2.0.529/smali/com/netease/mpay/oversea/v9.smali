.class public Lcom/netease/mpay/oversea/v9;
.super Ljava/lang/Object;
.source "SecurityEntryFactory.java"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "security_email"

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x64

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "restore_account"

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x79

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;)Lcom/netease/mpay/oversea/v2;
    .locals 3

    .line 9
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_edit:I

    .line 11
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "modify"

    const-string v1, "security_email"

    const/16 v2, 0x6f

    .line 12
    invoke-static {v0, v1, p0, v2}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    const-string p0, "setting"

    .line 8
    invoke-static {p0, p1, p3, p2}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;
    .locals 14

    .line 13
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

.method static a(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;
    .locals 4

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_setting:I

    .line 4
    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    const-string v3, "security_email"

    .line 5
    invoke-static {p0, v3, v2, v1}, Lcom/netease/mpay/oversea/v9;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    invoke-direct {v0, v2, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 7
    iput-object p2, v0, Lcom/netease/mpay/oversea/w2;->m:Lcom/netease/mpay/oversea/w2$b;

    return-object v0
.end method

.method static a(Lcom/netease/mpay/oversea/w2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;
    .locals 7

    .line 14
    iget v0, p0, Lcom/netease/mpay/oversea/w2;->o:I

    const/16 v1, 0x65

    const/16 v2, 0x66

    const-string v3, "security_input_code"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const-string v1, "security_result"

    const/4 v5, 0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0x79

    const/16 v6, 0x7a

    if-eq v0, v2, :cond_3

    if-eq v0, v6, :cond_2

    const/16 v2, 0x83

    const/16 v6, 0x84

    if-eq v0, v2, :cond_1

    if-eq v0, v6, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 25
    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/mpay/oversea/i9;->a(Z)V

    .line 26
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v1, v0, p0, v4}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 27
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x91

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 28
    :pswitch_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v3, v1, p0, v0}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 29
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x90

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 31
    :pswitch_2
    iget-object v1, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v3, v1, p0, v0}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 32
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x8f

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 94
    :pswitch_3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/mpay/oversea/i9;->a(Z)V

    .line 95
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v1, v0, p0, v4}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 96
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x73

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 97
    :pswitch_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v3, v0, p0, v4}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 98
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x72

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 99
    :pswitch_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    const-string v1, "security_input_mail"

    invoke-static {v1, v0, p0, v4}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 100
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x71

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 101
    :pswitch_6
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v3, v0, p0, v4}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 102
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x70

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 78
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/mpay/oversea/i9;->a(Z)V

    .line 79
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v1, v0, p0, v4}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 80
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x85

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v3, v0, p0, v4}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 82
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    invoke-direct {v0, v6, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 89
    :cond_2
    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    const/16 v0, 0x7b

    const-string v1, "restore_set_pwd"

    const-string v2, "security_email"

    invoke-static {v1, v2, p0, v0}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 91
    new-instance v1, Lcom/netease/mpay/oversea/w2;

    invoke-direct {v1, v0, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v1

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v3, v0, p0, v4}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 93
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    invoke-direct {v0, v6, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 103
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/mpay/oversea/i9;->a(Z)V

    .line 104
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v1, v0, p0, v4}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 105
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-static {v3, v0, p0, v4}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    .line 107
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    invoke-direct {v0, v2, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(I)Z
    .locals 1

    const/16 v0, 0x8d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x90

    if-eq p0, v0, :cond_0

    const/16 v0, 0x91

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x79
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x83
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;)Lcom/netease/mpay/oversea/v2;
    .locals 3

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_retrieving:I

    .line 6
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "restore_account"

    const-string v1, "security_email"

    const/16 v2, 0x79

    .line 7
    invoke-static {v0, v1, p0, v2}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/v9;->a(Landroid/content/Context;)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    const/16 v1, 0x6f

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 3
    iput-object p2, v0, Lcom/netease/mpay/oversea/w2;->m:Lcom/netease/mpay/oversea/w2$b;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/netease/mpay/oversea/v2;
    .locals 3

    .line 7
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_unbind:I

    .line 9
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "unbind"

    const-string v1, "security_email"

    const/16 v2, 0x79

    .line 10
    invoke-static {v0, v1, p0, v2}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_setting:I

    .line 3
    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8d

    const/4 v3, 0x0

    .line 4
    invoke-static {p0, v3, v2, v1}, Lcom/netease/mpay/oversea/v9;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    invoke-direct {v0, v2, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 6
    iput-object p2, v0, Lcom/netease/mpay/oversea/w2;->m:Lcom/netease/mpay/oversea/w2$b;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__inherit_verify:I

    .line 3
    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8e

    const/4 v3, 0x0

    .line 4
    invoke-static {p0, v3, v2, v1}, Lcom/netease/mpay/oversea/v9;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    invoke-direct {v0, v2, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 6
    iput-object p2, v0, Lcom/netease/mpay/oversea/w2;->m:Lcom/netease/mpay/oversea/w2$b;

    return-object v0
.end method

.method public static e(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/v9;->b(Landroid/content/Context;)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    const/16 v1, 0x79

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 3
    iput-object p2, v0, Lcom/netease/mpay/oversea/w2;->m:Lcom/netease/mpay/oversea/w2$b;

    return-object v0
.end method

.method static f(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/v9;->c(Landroid/content/Context;)Lcom/netease/mpay/oversea/v2;

    move-result-object p0

    const/16 v1, 0x83

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 3
    iput-object p2, v0, Lcom/netease/mpay/oversea/w2;->m:Lcom/netease/mpay/oversea/w2$b;

    return-object v0
.end method
