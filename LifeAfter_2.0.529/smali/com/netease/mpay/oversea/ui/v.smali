.class public Lcom/netease/mpay/oversea/ui/v;
.super Lcom/netease/mpay/oversea/ui/a;
.source "UserCenterHandler.java"


# instance fields
.field protected f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private g:Lcom/netease/mpay/oversea/y5;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Lcom/netease/mpay/oversea/wb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/v;->j:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/v;->k:Z

    .line 9
    invoke-static {p1}, Lcom/netease/mpay/oversea/b1;->c(Landroid/app/Activity;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/v;)Lcom/netease/mpay/oversea/wb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    return-object p0
.end method

.method private a(Lcom/netease/mpay/oversea/b6;)V
    .locals 5

    .line 129
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/b6;->e()Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/b6;->d()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 132
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/b6;->c()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x1b

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1c

    if-ne v2, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x1e

    if-ne v2, v0, :cond_7

    .line 148
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/b6;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/b6;->f()Lcom/netease/mpay/oversea/g6;

    move-result-object p1

    .line 150
    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 151
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 153
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v4

    invoke-direct {v0, v2, v1, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 154
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 155
    new-instance p1, Lcom/netease/mpay/oversea/ui/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v4, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v4, v1, v3}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, v1, v2, v0, v4}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 156
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto/16 :goto_1

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 159
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v4

    invoke-direct {v0, v2, v1, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 160
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 161
    new-instance p1, Lcom/netease/mpay/oversea/ui/p;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v4, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v4, v1, v3}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, v1, v2, v0, v4}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 162
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto/16 :goto_1

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p1

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_1

    .line 167
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/m;->l(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_1

    .line 168
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    instance-of p1, p1, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 169
    new-instance p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 170
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 171
    new-instance v0, Lcom/netease/mpay/oversea/ui/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v4, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v4, v1, v3}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {v0, v1, v2, p1, v4}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 172
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_1

    .line 173
    :cond_5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    instance-of p1, p1, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->i()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 174
    new-instance p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 175
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 176
    new-instance v0, Lcom/netease/mpay/oversea/ui/p;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v4, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v4, v1, v3}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {v0, v1, v2, p1, v4}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 177
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_1

    .line 179
    :cond_6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/g6;)V
    .locals 18

    move-object/from16 v7, p0

    .line 180
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_2

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/netease/mpay/oversea/g6;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lcom/netease/mpay/oversea/ui/g;

    iget-object v2, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v3, v7, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v4, v7, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v5, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v5, v2, v1}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 183
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto/16 :goto_1

    .line 184
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/netease/mpay/oversea/g6;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    new-instance v0, Lcom/netease/mpay/oversea/ui/p;

    iget-object v2, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v3, v7, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v4, v7, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v5, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v5, v2, v1}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 186
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto/16 :goto_1

    .line 188
    :cond_1
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v1

    iget-object v2, v7, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto/16 :goto_1

    .line 191
    :cond_2
    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    .line 192
    new-instance v6, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v7, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    invoke-direct {v6, v2, v0, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 194
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->h:Z

    invoke-virtual {v6, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 195
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/v;->g:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    new-instance v17, Lcom/netease/mpay/oversea/n3;

    iget-object v9, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v11, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/v;->g:Lcom/netease/mpay/oversea/y5;

    iget-object v12, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v13, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    iget-object v14, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    new-instance v16, Lcom/netease/mpay/oversea/ui/v$c;

    iget-object v2, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    .line 200
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oversea/ui/v$c;-><init>(Lcom/netease/mpay/oversea/ui/v;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    const/4 v15, 0x0

    move-object/from16 v8, v17

    invoke-direct/range {v8 .. v16}, Lcom/netease/mpay/oversea/n3;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;ZLcom/netease/mpay/oversea/ga;)V

    .line 261
    invoke-virtual/range {v17 .. v17}, Lcom/netease/mpay/oversea/fa;->b()V

    goto :goto_1

    .line 263
    :cond_4
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 264
    :cond_5
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/i$i;-><init>()V

    iget-object v2, v7, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 266
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private k()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/netease/mpay/oversea/m3;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/v;->g:Lcom/netease/mpay/oversea/y5;

    new-instance v4, Lcom/netease/mpay/oversea/ui/v$b;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v4, p0, v2, v0, v5}, Lcom/netease/mpay/oversea/ui/v$b;-><init>(Lcom/netease/mpay/oversea/ui/v;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netease/mpay/oversea/m3;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ea;)V

    .line 54
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 268
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a;->a(IILandroid/content/Intent;)V

    .line 269
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/a1;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 7

    const-string p1, "data"

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/wb;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/wb;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    const-string v1, "NAV_TAB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/wb;->b(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    const-string v1, "NAV_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/wb;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/i$i;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/wb;->g()Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 20
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->j0()Z

    move-result p1

    if-nez p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v3, Lcom/netease/mpay/oversea/j;

    const/16 v4, 0x3ef

    invoke-direct {v3, v4, v1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 23
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object p1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t8;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->g:Lcom/netease/mpay/oversea/y5;

    goto :goto_2

    .line 35
    :cond_3
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->g:Lcom/netease/mpay/oversea/y5;

    .line 38
    :goto_2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->Z()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->g:Lcom/netease/mpay/oversea/y5;

    if-eqz p1, :cond_4

    .line 39
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 40
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__forbidden_open_usercenter:I

    .line 41
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/widget/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v3, Lcom/netease/mpay/oversea/j;

    const/16 v4, 0x3f0

    invoke-direct {v3, v4, v1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 47
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void

    .line 55
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->g:Lcom/netease/mpay/oversea/y5;

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lcom/netease/mpay/oversea/ui/v;->h:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 56
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    :cond_6
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->i:Ljava/lang/String;

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 57
    :goto_4
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/v;->k:Z

    .line 58
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/wb;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "restore_account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->g:Lcom/netease/mpay/oversea/y5;

    if-eqz p1, :cond_9

    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eq v0, p1, :cond_8

    .line 60
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->g:Lcom/netease/mpay/oversea/y5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 62
    :cond_8
    new-instance v1, Lcom/netease/mpay/oversea/ui/k;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/k;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/v;->g:Lcom/netease/mpay/oversea/y5;

    new-instance v6, Lcom/netease/mpay/oversea/ui/v$a;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/ui/v$a;-><init>(Lcom/netease/mpay/oversea/ui/v;)V

    invoke-virtual/range {v1 .. v6}, Lcom/netease/mpay/oversea/ui/k;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/k$g;)V

    goto :goto_5

    .line 93
    :cond_9
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/v;->m()V

    :goto_5
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/a1;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 271
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Z)V

    .line 272
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    .line 273
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/a1;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z
    .locals 2

    .line 94
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/a;->a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z

    .line 95
    instance-of p1, p2, Lcom/netease/mpay/oversea/x0;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    if-eq p2, v1, :cond_1

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->h:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance p2, Lcom/netease/mpay/oversea/ui/i$i;

    .line 102
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->k0()Z

    move-result v1

    invoke-direct {p2, v1}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 103
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    .line 104
    invoke-virtual {p1, p2, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$h;

    invoke-direct {v1, p2}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 107
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    .line 108
    invoke-virtual {p1, v1, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :goto_1
    return v0

    .line 117
    :cond_2
    instance-of p1, p2, Lcom/netease/mpay/oversea/r3;

    if-eqz p1, :cond_3

    .line 118
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$j;

    .line 119
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/x2;->b()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/netease/mpay/oversea/s9;->s:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v0, p2, v1}, Lcom/netease/mpay/oversea/ui/i$j;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 120
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    .line 121
    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_2

    .line 124
    :cond_3
    instance-of p1, p2, Lcom/netease/mpay/oversea/eb;

    if-eqz p1, :cond_4

    .line 125
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    check-cast p2, Lcom/netease/mpay/oversea/eb;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/eb;->c()Lcom/netease/mpay/oversea/w2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return v0

    .line 127
    :cond_4
    instance-of p1, p2, Lcom/netease/mpay/oversea/b6;

    if-eqz p1, :cond_5

    .line 128
    check-cast p2, Lcom/netease/mpay/oversea/b6;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/ui/v;->a(Lcom/netease/mpay/oversea/b6;)V

    return v0

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/netease/mpay/oversea/s4;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/v;->a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/a1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$i;

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/i9;->k0()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/i9;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return v1
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/mpay/oversea/ui/a;->e()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->f()V

    :cond_0
    return-void
.end method

.method protected l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->g:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/v;->a(Lcom/netease/mpay/oversea/g6;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/wb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/w2;

    const-string v1, "home"

    if-eqz v0, :cond_2

    .line 8
    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/v;->k:Z

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/w2;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->h()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/wb;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/v;->k:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->f(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    const-string v2, "switch"

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/wb;->a(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/wb;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/wb;->a(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/wb;->b(Ljava/lang/String;)V

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/wb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/w2;

    .line 31
    :goto_2
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v2, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/wb;->a(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/wb;->b(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/v;->l:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/wb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/w2;

    .line 36
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    :cond_4
    return-void
.end method

.method protected m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->d(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__full_content:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v2, v0, v1}, Lcom/netease/mpay/oversea/b1;->a(Landroid/view/View;Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->b(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->e:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v2, :cond_0

    .line 7
    invoke-static {v1}, Lcom/netease/mpay/oversea/w2;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/w2;->c(Z)V

    .line 9
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w2;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/w2;->c(Z)V

    .line 13
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v2}, Lcom/netease/mpay/oversea/w2;->b(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/b1;->d(Lcom/netease/mpay/oversea/w2;)Z

    .line 14
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    .line 16
    :goto_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/v;->k()V

    return-void
.end method
