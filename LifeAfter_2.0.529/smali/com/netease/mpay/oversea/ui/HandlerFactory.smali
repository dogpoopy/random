.class public Lcom/netease/mpay/oversea/ui/HandlerFactory;
.super Ljava/lang/Object;
.source "HandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;)Lcom/netease/mpay/oversea/ui/a;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 118
    :pswitch_0
    new-instance p1, Lcom/netease/mpay/oversea/a5;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->c()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/netease/mpay/oversea/a5;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 119
    :pswitch_1
    new-instance p1, Lcom/netease/mpay/oversea/ui/x;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->d()Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/netease/mpay/oversea/ui/x;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    return-object p1

    .line 139
    :pswitch_2
    new-instance p1, Lcom/netease/mpay/oversea/ui/c;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/c;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 140
    :pswitch_3
    new-instance p1, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 87
    :pswitch_4
    new-instance p1, Lcom/netease/mpay/oversea/ui/f;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->c()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/netease/mpay/oversea/ui/f;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 88
    :pswitch_5
    new-instance p1, Lcom/netease/mpay/oversea/ui/t;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->c()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/netease/mpay/oversea/ui/t;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 96
    :pswitch_6
    new-instance p1, Lcom/netease/mpay/oversea/g7;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->c()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/netease/mpay/oversea/g7;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 97
    :pswitch_7
    new-instance p1, Lcom/netease/mpay/oversea/cc;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/cc;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 98
    :pswitch_8
    new-instance p1, Lcom/netease/mpay/oversea/ui/m;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->c()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/netease/mpay/oversea/ui/m;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 141
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/c8;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/c8;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 142
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/ui/q;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/q;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 143
    :cond_2
    new-instance p1, Lcom/netease/mpay/oversea/ui/b0;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->c()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/netease/mpay/oversea/ui/b0;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 159
    :cond_3
    new-instance p1, Lcom/netease/mpay/oversea/ui/v;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/v;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 160
    :cond_4
    :pswitch_9
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->c()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1e

    if-ne p1, v1, :cond_0

    .line 3
    invoke-static {p0, p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_1

    .line 5
    sget-object p1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p1

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 6
    invoke-static {p1}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/e5;->b()Lcom/netease/mpay/oversea/e5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/e5;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    new-instance p1, Lcom/netease/mpay/oversea/ui/n;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->P:Lcom/netease/mpay/oversea/g6;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->I:Lcom/netease/mpay/oversea/s9;

    .line 11
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-direct {p1, p0, v0, v1}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 13
    :cond_2
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    .line 14
    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 16
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->P()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 29
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/e5;->b()Lcom/netease/mpay/oversea/e5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/e5;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    new-instance p1, Lcom/netease/mpay/oversea/ui/n;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->P:Lcom/netease/mpay/oversea/g6;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->I:Lcom/netease/mpay/oversea/s9;

    .line 31
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-direct {p1, p0, v0, v1}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 33
    :cond_5
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    .line 34
    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 35
    :cond_6
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/e5;->b()Lcom/netease/mpay/oversea/e5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/e5;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 36
    new-instance p1, Lcom/netease/mpay/oversea/ui/n;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->P:Lcom/netease/mpay/oversea/g6;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->I:Lcom/netease/mpay/oversea/s9;

    .line 37
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-direct {p1, p0, v0, v1}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 39
    :cond_7
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    .line 40
    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;
    .locals 2

    .line 161
    sget-object v0, Lcom/netease/mpay/oversea/ui/HandlerFactory$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    new-instance v0, Lcom/netease/mpay/oversea/ui/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 188
    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/netease/mpay/oversea/ui/b0;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/b0;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 190
    :pswitch_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/netease/mpay/oversea/ui/b0;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/b0;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 192
    :pswitch_2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    .line 193
    new-instance v0, Lcom/netease/mpay/oversea/ui/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 194
    :pswitch_3
    new-instance v0, Lcom/netease/mpay/oversea/ui/b0;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/b0;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 195
    :pswitch_4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/netease/mpay/oversea/ui/b0;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/b0;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 197
    :pswitch_5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    .line 198
    new-instance v0, Lcom/netease/mpay/oversea/ui/b0;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/b0;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 199
    :pswitch_6
    new-instance p1, Lcom/netease/mpay/oversea/ui/n;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    invoke-direct {p1, p0, v0, p2}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 200
    :pswitch_7
    new-instance p1, Lcom/netease/mpay/oversea/ui/n;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->A:Lcom/netease/mpay/oversea/g6;

    invoke-direct {p1, p0, v0, p2}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 201
    :pswitch_8
    new-instance p1, Lcom/netease/mpay/oversea/ui/n;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    invoke-direct {p1, p0, v0, p2}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;
    .locals 3

    .line 59
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t8;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 62
    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 66
    :cond_1
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->v:Lcom/netease/mpay/oversea/s9;

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 75
    :cond_2
    new-instance v0, Lcom/netease/mpay/oversea/ui/n;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    invoke-direct {v0, p0, v1, p1}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 76
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new LoginInfo:\nuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ntoken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ntype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\naccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-static {p0, v0, p1}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    return-object v1
.end method

.method private static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;
    .locals 2

    .line 41
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h9;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const-string p1, "====new account login====="

    .line 42
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    sget-object p1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->e()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 50
    sget-object p1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 51
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    sget-object v0, Lcom/netease/mpay/oversea/g6;->A:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 52
    new-instance p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->i:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p0, v0, p1}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 54
    :cond_2
    sget-object p1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 58
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/app/Activity;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;
    .locals 5

    if-eqz p1, :cond_4

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/netease/mpay/oversea/y5;->k:Z

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\naccount:"

    const-string v2, "\ntype:"

    const-string v3, "\ntoken:"

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    iget-object v4, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eq v0, v4, :cond_2

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v4, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v4}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->i()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new LoginInfo:\nuid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    :goto_0
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p0, v0, v1}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/ui/e;

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/e;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-object p1

    .line 23
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    new-instance p1, Lcom/netease/mpay/oversea/ui/e;

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/e;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-object p1

    .line 27
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoginInfo:\nuid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 37
    new-instance p1, Lcom/netease/mpay/oversea/ui/n;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-direct {p1, p0, v0, v1}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    .line 40
    :cond_4
    new-instance p1, Lcom/netease/mpay/oversea/ui/e;

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/e;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-object p1
.end method

.method private static c(Landroid/app/Activity;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->i()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new LoginInfo:\nuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ntoken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ntype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\naccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 25
    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 27
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/ui/n;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    invoke-direct {p1, p0, v0, p2}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "====new account login====="

    .line 28
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 29
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->e()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 31
    sget-object p1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 32
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    sget-object v0, Lcom/netease/mpay/oversea/g6;->A:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 33
    new-instance p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->i:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p0, v0, p1}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0

    .line 35
    :cond_4
    sget-object p1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object p0

    return-object p0
.end method
