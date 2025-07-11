.class public Lcom/netease/mpay/oversea/ui/d;
.super Ljava/lang/Object;
.source "ChannelLoginApi.java"


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 142
    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/r4;)V
    .locals 1

    .line 64
    :try_start_0
    sget-object v0, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_channel_not_support:I

    .line 67
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3eb

    const/16 p2, 0x66

    .line 68
    invoke-virtual {p3, p1, p0, p2}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Ljava/lang/String;ILcom/netease/mpay/oversea/MpayBindCallback;)V
    .locals 2

    .line 69
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 71
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eqz v1, :cond_3

    iget-object p2, p2, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    invoke-static {p3}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object p2

    .line 77
    sget-object p3, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-eq p3, p2, :cond_2

    sget-object p3, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne p3, p2, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    sget-object p3, Lcom/netease/mpay/oversea/s9;->f:Lcom/netease/mpay/oversea/s9;

    new-instance v0, Lcom/netease/mpay/oversea/ui/d$b;

    invoke-direct {v0, p4}, Lcom/netease/mpay/oversea/ui/d$b;-><init>(Lcom/netease/mpay/oversea/MpayBindCallback;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)Z

    return-void

    :cond_2
    :goto_0
    const/16 p0, 0x3ef

    .line 82
    invoke-interface {p4, p0, v0}, Lcom/netease/mpay/oversea/MpayBindCallback;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const/16 p0, 0x3ee

    .line 83
    invoke-interface {p4, p0, v0}, Lcom/netease/mpay/oversea/MpayBindCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 134
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->i()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/g6;

    .line 138
    iget v2, p1, Lcom/netease/mpay/oversea/y5;->l:I

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/g6;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v1

    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/UnBindCallback;)V
    .locals 8

    .line 110
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 112
    invoke-virtual {v5}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v5, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_5

    iget-object v0, v5, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 117
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, v5, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ac;->a()Z

    move-result v0

    .line 119
    iget-object v1, v5, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    sget-object v2, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 120
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->i0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->j0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v5, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    .line 123
    :cond_3
    sget-object v0, Lcom/netease/mpay/oversea/s9;->O:Lcom/netease/mpay/oversea/s9;

    new-instance v7, Lcom/netease/mpay/oversea/ui/d$c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/ui/d$c;-><init>(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/UnBindCallback;)V

    invoke-static {p0, v0, v7}, Lcom/netease/mpay/oversea/cc;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/d7;)V

    goto :goto_1

    .line 132
    :cond_4
    invoke-static {p0, p1, p2, v5, p3}, Lcom/netease/mpay/oversea/ui/d;->b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/UnBindCallback;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const/16 p0, 0xbbb

    const/4 p1, 0x0

    .line 133
    invoke-interface {p3, p0, p1}, Lcom/netease/mpay/oversea/UnBindCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/UnBindCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/ui/d;->b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/UnBindCallback;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V
    .locals 5

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\naccount:"

    const-string v2, "\ntype:"

    const-string v3, "\ntoken:"

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->i()V

    .line 13
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

    .line 16
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    :try_start_0
    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iget-object v2, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    :goto_0
    invoke-static {p0, v0, v1, v2, p2}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)Z

    if-eqz p0, :cond_5

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 29
    :catch_0
    new-instance v0, Lcom/netease/mpay/oversea/j;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_expired:I

    .line 30
    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2722

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    .line 31
    new-instance v1, Lcom/netease/mpay/oversea/ui/d$a;

    invoke-direct {v1, p2, v0, p1, p0}, Lcom/netease/mpay/oversea/ui/d$a;-><init>(Lcom/netease/mpay/oversea/r4;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/y5;Landroid/app/Activity;)V

    invoke-static {p0, v0, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    const-string p1, "login_guide_token_invalid"

    const-string p2, "login"

    const-string v0, "close"

    .line 42
    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_3

    .line 45
    :cond_2
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

    .line 48
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 55
    new-instance p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v0, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    invoke-direct {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/ui/u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    if-eqz p0, :cond_5

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_3
    :goto_1
    const/16 v0, 0x3ee

    if-eqz p1, :cond_4

    .line 59
    iget p1, p1, Lcom/netease/mpay/oversea/y5;->n:I

    goto :goto_2

    :cond_4
    const/16 p1, 0x66

    :goto_2
    const-string v1, ""

    .line 60
    invoke-virtual {p2, v0, v1, p1}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    if-eqz p0, :cond_5

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_3
    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq p2, v0, :cond_6

    .line 87
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-direct {v0, p3, p4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p4

    .line 88
    sget-object v0, Lcom/netease/mpay/oversea/s9;->f:Lcom/netease/mpay/oversea/s9;

    const/4 v1, 0x1

    if-eq v0, p3, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/s9;->D:Lcom/netease/mpay/oversea/s9;

    if-ne v0, p3, :cond_1

    .line 89
    :cond_0
    invoke-virtual {p4, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 91
    :cond_1
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->f()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 92
    instance-of p3, p0, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz p3, :cond_2

    .line 93
    new-instance p2, Lcom/netease/mpay/oversea/ui/g;

    new-instance p3, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {p3, p0, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 94
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p4, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 97
    invoke-static {p0, p4}, Lcom/netease/mpay/oversea/m;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->i()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 100
    instance-of p3, p0, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz p3, :cond_4

    .line 101
    new-instance p2, Lcom/netease/mpay/oversea/ui/p;

    new-instance p3, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {p3, p0, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 102
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {p4, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 105
    invoke-static {p0, p4}, Lcom/netease/mpay/oversea/m;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p1

    invoke-static {p0, p1, p4}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    :goto_0
    return v1

    .line 109
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z
    .locals 0

    .line 140
    invoke-static {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
    .locals 0

    .line 141
    invoke-static {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/UnBindCallback;)V
    .locals 15

    move-object/from16 v0, p3

    .line 9
    invoke-static/range {p2 .. p2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v5

    .line 10
    sget-object v1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-eq v1, v5, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq v1, v5, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    if-ne v1, v5, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v7, Lcom/netease/mpay/oversea/hb;

    iget-object v3, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/oversea/ui/d$d;

    sget-object v11, Lcom/netease/mpay/oversea/s9;->e:Lcom/netease/mpay/oversea/s9;

    move-object v8, v6

    move-object v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p4

    move-object v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v8 .. v14}, Lcom/netease/mpay/oversea/ui/d$d;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/UnBindCallback;Landroid/app/Activity;Ljava/lang/String;)V

    move-object v0, v7

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oversea/hb;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ga;)V

    .line 91
    invoke-virtual {v7}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void

    .line 92
    :cond_1
    :goto_0
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__unbind_not_support:I

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbbc

    move-object/from16 v2, p4

    invoke-interface {v2, v1, v0}, Lcom/netease/mpay/oversea/UnBindCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/y5;->e()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p0

    iget-object p0, p0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_2

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/e5;->b()Lcom/netease/mpay/oversea/e5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/e5;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    .line 8
    :cond_3
    :goto_2
    invoke-static {}, Lcom/netease/mpay/oversea/e5;->b()Lcom/netease/mpay/oversea/e5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/e5;->e()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
    .locals 0

    .line 93
    invoke-static {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/d;->b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z

    move-result p0

    return p0
.end method
