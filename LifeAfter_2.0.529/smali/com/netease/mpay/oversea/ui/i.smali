.class public Lcom/netease/mpay/oversea/ui/i;
.super Ljava/lang/Object;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/i$l;,
        Lcom/netease/mpay/oversea/ui/i$m;,
        Lcom/netease/mpay/oversea/ui/i$i;,
        Lcom/netease/mpay/oversea/ui/i$n;,
        Lcom/netease/mpay/oversea/ui/i$j;,
        Lcom/netease/mpay/oversea/ui/i$h;,
        Lcom/netease/mpay/oversea/ui/i$k;,
        Lcom/netease/mpay/oversea/ui/i$g;,
        Lcom/netease/mpay/oversea/ui/i$p;,
        Lcom/netease/mpay/oversea/ui/i$o;
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    .line 5
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/ui/i;->b:Z

    .line 6
    iput-boolean p3, p0, Lcom/netease/mpay/oversea/ui/i;->c:Z

    return-void
.end method

.method private a(I)I
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3f0

    return p1

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/16 p1, 0x3ef

    return p1

    :cond_1
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_2

    return p1

    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 p1, 0x3ed

    return p1

    :pswitch_1
    const/16 p1, 0x3f1

    return p1

    :pswitch_2
    const/16 p1, 0x3eb

    return p1

    :pswitch_3
    const/16 p1, 0x3e9

    return p1

    :pswitch_4
    const/16 p1, 0x3e8

    return p1

    :pswitch_5
    const/16 p1, 0x3ea

    return p1

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(ILjava/lang/String;Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V
    .locals 3

    .line 104
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->i()Lcom/netease/mpay/oversea/y5;

    .line 106
    iget-object v0, p3, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->d(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/r4;->onUserLogout()V

    .line 108
    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    goto :goto_1

    .line 110
    :cond_0
    iget-object v0, p3, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    instance-of v0, p3, Lcom/netease/mpay/oversea/ui/i$l;

    if-eqz v0, :cond_1

    .line 112
    check-cast p3, Lcom/netease/mpay/oversea/ui/i$l;

    iget p3, p3, Lcom/netease/mpay/oversea/ui/i$l;->k:I

    goto :goto_0

    :cond_1
    const/16 p3, 0x66

    .line 113
    :goto_0
    invoke-virtual {p4, p1, p2, p3}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V
    .locals 12

    .line 122
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    if-nez p1, :cond_1

    .line 126
    new-instance p1, Lcom/netease/mpay/oversea/User;

    iget-object v2, p2, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/oversea/ui/i$l;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    iget-object v0, p2, Lcom/netease/mpay/oversea/ui/i$l;->g:Lcom/netease/mpay/oversea/g6;

    .line 128
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->b()I

    move-result v5

    iget-object v6, p2, Lcom/netease/mpay/oversea/ui/i$l;->d:Ljava/lang/String;

    iget-object v7, p2, Lcom/netease/mpay/oversea/ui/i$l;->h:Ljava/lang/String;

    iget v8, p2, Lcom/netease/mpay/oversea/ui/i$l;->k:I

    iget-object v9, p2, Lcom/netease/mpay/oversea/ui/i$l;->l:Ljava/lang/String;

    iget-object v0, p2, Lcom/netease/mpay/oversea/ui/i$l;->i:Ljava/util/ArrayList;

    .line 131
    invoke-static {v0}, Lcom/netease/mpay/oversea/g6;->a(Ljava/util/ArrayList;)[I

    move-result-object v10

    iget-object v11, p2, Lcom/netease/mpay/oversea/ui/i$l;->r:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lcom/netease/mpay/oversea/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[ILjava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_4

    .line 134
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/r4;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 135
    iget-object v0, p2, Lcom/netease/mpay/oversea/ui/i$l;->q:Lcom/netease/mpay/oversea/e6;

    invoke-virtual {p3, v0}, Lcom/netease/mpay/oversea/r4;->a(Lcom/netease/mpay/oversea/e6;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 137
    iget-boolean v0, p2, Lcom/netease/mpay/oversea/ui/i$l;->o:Z

    if-eqz v0, :cond_3

    .line 138
    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/i$l;->p:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Lcom/netease/mpay/oversea/r4;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/User;)V

    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {p3, p1}, Lcom/netease/mpay/oversea/r4;->onLoginSuccess(Lcom/netease/mpay/oversea/User;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/s9;)V
    .locals 4

    .line 116
    sget-object v0, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/s9;->O:Lcom/netease/mpay/oversea/s9;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/s9;->N:Lcom/netease/mpay/oversea/s9;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    .line 120
    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/vb$a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ui/w$a;)V

    .line 121
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/ui/x;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/ui/i$i;Lcom/netease/mpay/oversea/r4;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 148
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/i9;->k0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 150
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/netease/mpay/oversea/i9;->a(Z)V

    .line 151
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    .line 152
    new-instance v4, Lcom/netease/mpay/oversea/pa;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    invoke-direct {v4, v5, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v4

    .line 153
    new-instance v5, Lcom/netease/mpay/oversea/pa;

    iget-object v6, v0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    invoke-direct {v5, v6, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r1;->c()Lcom/netease/mpay/oversea/t1;

    move-result-object v2

    if-eqz v4, :cond_0

    .line 154
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    .line 155
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    new-instance v5, Lcom/netease/mpay/oversea/User;

    iget-object v7, v4, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v8, v4, Lcom/netease/mpay/oversea/y5;->c:Ljava/lang/String;

    iget-object v9, v4, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    iget-object v6, v4, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    .line 157
    invoke-virtual {v6}, Lcom/netease/mpay/oversea/g6;->b()I

    move-result v10

    iget-object v11, v2, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iget-object v12, v4, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    iget v13, v4, Lcom/netease/mpay/oversea/y5;->n:I

    iget-object v14, v4, Lcom/netease/mpay/oversea/y5;->r:Ljava/lang/String;

    iget-object v2, v4, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    .line 160
    invoke-static {v2}, Lcom/netease/mpay/oversea/g6;->a(Ljava/util/ArrayList;)[I

    move-result-object v15

    iget-object v2, v4, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    move-object v6, v5

    move-object/from16 v16, v2

    invoke-direct/range {v6 .. v16}, Lcom/netease/mpay/oversea/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 164
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    .line 165
    invoke-virtual {v1, v5}, Lcom/netease/mpay/oversea/r4;->onDialogFinish(Lcom/netease/mpay/oversea/User;)V

    .line 166
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/i9;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/i9;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/r4;->a(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/i9;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/ui/i$j;Lcom/netease/mpay/oversea/r4;)V
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    .line 170
    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/i$j;->a(Lcom/netease/mpay/oversea/ui/i$j;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/r4;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 171
    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/i$k;->a(Lcom/netease/mpay/oversea/ui/i$k;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/s9;->O:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/s9;->N:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/s9;->L:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_1

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/i;->b(Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V

    goto :goto_2

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    instance-of v1, v0, Lcom/netease/mpay/oversea/MpayActivityStub;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/i;->b(Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 188
    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/netease/mpay/oversea/j;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/j;-><init>()V

    :goto_1
    new-instance v2, Lcom/netease/mpay/oversea/ui/i$e;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/i$e;-><init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/i;ILjava/lang/String;Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/ui/i;->a(ILjava/lang/String;Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/i;->b(Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method private a(ZLcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V
    .locals 13

    move-object v6, p0

    .line 44
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__go_bind:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bind_tips_ignore:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v11, v0

    .line 47
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__force_bind_email_account:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 48
    iget-object v7, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    new-instance v10, Lcom/netease/mpay/oversea/ui/i$c;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, v8

    move-object/from16 v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/i$c;-><init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/ui/i$l;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;Z)V

    new-instance v12, Lcom/netease/mpay/oversea/ui/i$d;

    move-object v0, v12

    move v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/i$d;-><init>(Lcom/netease/mpay/oversea/ui/i;ZLjava/lang/String;Lcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V

    invoke-static/range {v7 .. v12}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    const-string v1, "login_bind_email_guide"

    const-string v2, "confirm"

    const-string v3, "cancel"

    .line 103
    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V
    .locals 4

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/netease/mpay/oversea/ui/i$l;

    .line 2
    iget v1, v0, Lcom/netease/mpay/oversea/ui/i$l;->j:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const-string p1, "Event:finishWithResult showBindGuide"

    .line 3
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r4;->b()V

    .line 7
    :cond_0
    iget p1, v0, Lcom/netease/mpay/oversea/ui/i$l;->j:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v2, v0, p2}, Lcom/netease/mpay/oversea/ui/i;->b(ZLcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    .line 8
    :cond_2
    iget v1, v0, Lcom/netease/mpay/oversea/ui/i$l;->n:I

    if-eqz v1, :cond_5

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r4;->b()V

    :cond_3
    const-string p1, "Event:finishWithResult needBindEmail"

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 13
    iget p1, v0, Lcom/netease/mpay/oversea/ui/i$l;->n:I

    if-ne p1, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-direct {p0, v2, v0, p2}, Lcom/netease/mpay/oversea/ui/i;->a(ZLcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    :cond_5
    const-string v1, "Event:finishWithResult -- finish"

    .line 15
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 16
    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/s9;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 93
    sget-object v0, Lcom/netease/mpay/oversea/ui/i$p;->c:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 96
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/r4;->onUserLogout()V

    goto :goto_3

    :cond_1
    const/16 v0, 0x2711

    if-eqz p1, :cond_2

    .line 100
    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    if-eqz v1, :cond_2

    iget v0, v1, Lcom/netease/mpay/oversea/j;->a:I

    .line 102
    :cond_2
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/i;->a(I)I

    move-result v0

    if-eqz p1, :cond_3

    .line 103
    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, v1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, ""

    .line 105
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    sget-object v2, Lcom/netease/mpay/oversea/s9;->N:Lcom/netease/mpay/oversea/s9;

    iget-object v3, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    if-eq v2, v3, :cond_6

    .line 106
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->e:Lcom/netease/mpay/oversea/s9;

    if-eq v2, v3, :cond_5

    sget-object v2, Lcom/netease/mpay/oversea/s9;->f:Lcom/netease/mpay/oversea/s9;

    if-ne v2, v3, :cond_4

    goto :goto_1

    .line 109
    :cond_4
    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_error_cancel:I

    goto :goto_2

    .line 110
    :cond_5
    :goto_1
    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__bind_error_cancel:I

    .line 111
    :goto_2
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_6
    instance-of p1, p1, Lcom/netease/mpay/oversea/ui/i$n;

    if-eqz p1, :cond_7

    .line 117
    invoke-virtual {p3, v0, v1, p2}, Lcom/netease/mpay/oversea/r4;->a(ILjava/lang/String;I)V

    goto :goto_3

    .line 119
    :cond_7
    invoke-virtual {p3, v0, v1, p2}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    :goto_3
    return-void
.end method

.method private b(ZLcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V
    .locals 13

    move-object v6, p0

    .line 19
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__go_bind:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_0

    .line 20
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bind_tips_ignore:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v11, v0

    if-eqz p1, :cond_1

    .line 22
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bind_tips_enforced:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 23
    :cond_1
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bind_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v8, v0

    .line 24
    iget-object v7, v6, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    new-instance v10, Lcom/netease/mpay/oversea/ui/i$a;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, v8

    move-object/from16 v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/i$a;-><init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/ui/i$l;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;Z)V

    new-instance v12, Lcom/netease/mpay/oversea/ui/i$b;

    move-object v0, v12

    move v2, p1

    move-object v3, p2

    move-object v4, v8

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/i$b;-><init>(Lcom/netease/mpay/oversea/ui/i;ZLcom/netease/mpay/oversea/ui/i$l;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    invoke-static/range {v7 .. v12}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    const-string v1, "login_guest_bind_guide"

    const-string v2, "confirm"

    const-string v3, "cancel"

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/i$g;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 141
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 142
    sget-object v2, Lcom/netease/mpay/oversea/ui/i$o;->a:Lcom/netease/mpay/oversea/ui/i$o;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/i$g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 144
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/i$g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 147
    :goto_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    return-void
.end method

.method protected a(Lcom/netease/mpay/oversea/ui/i$g;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    instance-of v0, p1, Lcom/netease/mpay/oversea/ui/i$l;

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/ui/i;->b:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 200
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/i;->c:Z

    if-nez v0, :cond_2

    return-void

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    instance-of v1, v0, Lcom/netease/mpay/oversea/MpayActivityStub;

    if-nez v1, :cond_3

    instance-of v0, v0, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz v0, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    sget-object v1, Lcom/netease/mpay/oversea/ui/i$o;->a:Lcom/netease/mpay/oversea/ui/i$o;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 208
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V
    .locals 2

    const-string v0, "Event:finishWithResult"

    .line 7
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "Event:finishWithResult callback is null"

    .line 13
    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    return-void

    .line 18
    :cond_1
    sget-object v0, Lcom/netease/mpay/oversea/ui/i$f;->a:[I

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x66

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$j;

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$j;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    .line 37
    :pswitch_1
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$i;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    .line 38
    :pswitch_2
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$n;

    invoke-direct {p0, p1, v1, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    .line 39
    :pswitch_3
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$m;

    invoke-direct {p0, p1, v1, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    .line 40
    :pswitch_4
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/i$h;->a(Lcom/netease/mpay/oversea/ui/i$h;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "Event:finishWithResult LOGIN_SUCCESS is null"

    .line 41
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/i;->b(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "Event:finishWithResult activity is null"

    .line 43
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
