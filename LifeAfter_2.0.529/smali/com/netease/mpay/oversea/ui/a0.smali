.class public Lcom/netease/mpay/oversea/ui/a0;
.super Lcom/netease/mpay/oversea/ui/o;
.source "WebViewLogin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/ui/o;",
        "Lcom/netease/mpay/oversea/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private r:Lcom/netease/mpay/oversea/ui/y;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/netease/mpay/oversea/ui/o;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/e6;Lcom/netease/mpay/oversea/t1;)V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/ui/R$string;->netease_mpay_oversea__inherit_login_success:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v2, p1, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    if-ne v1, v2, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/ui/R$string;->netease_mpay_oversea__login_guest_bind_tips:I

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/ui/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 103
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/a0$d;

    invoke-direct {v3, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/a0$d;-><init>(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/t1;Lcom/netease/mpay/oversea/e6;)V

    .line 104
    invoke-static {v1, v0, v2, v3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/e6;ZLcom/netease/mpay/oversea/y5;)V
    .locals 4

    .line 77
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/o;->h:Z

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    .line 80
    :cond_0
    iget-object v0, p3, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p1, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 81
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/r1;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r1;->c()Lcom/netease/mpay/oversea/t1;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const-string v2, ""

    if-eqz v1, :cond_3

    .line 83
    new-instance p2, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v1, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    .line 84
    sget-object p2, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    if-ne p2, p3, :cond_1

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/e6;Lcom/netease/mpay/oversea/t1;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance p3, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-eqz v0, :cond_2

    .line 89
    iget-object v2, v0, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    :cond_2
    invoke-direct {p3, v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 90
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 91
    invoke-virtual {p2, p3, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    :cond_4
    invoke-interface {p3, v2, p1, p2}, Lcom/netease/mpay/oversea/q5;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/e6;ZLcom/netease/mpay/oversea/y5;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/e6;ZLcom/netease/mpay/oversea/y5;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Z)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_1

    .line 73
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    :cond_1
    invoke-direct {p0, p2, p3, p1}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/e6;ZLcom/netease/mpay/oversea/y5;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/a0$c;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/netease/mpay/oversea/ui/a0$c;-><init>(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/e6;ZLcom/netease/mpay/oversea/y5;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/q;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/q$f;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/e6;ZLcom/netease/mpay/oversea/y5;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v5, p3

    .line 53
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, v8, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    .line 54
    new-instance v18, Lcom/netease/mpay/oversea/n3;

    iget-object v10, v8, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v8, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v12, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v13, v5, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v14, v5, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    iget-object v15, v5, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    new-instance v17, Lcom/netease/mpay/oversea/ui/a0$b;

    iget-object v2, v8, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    .line 57
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v8, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/oversea/ui/a0$b;-><init>(Lcom/netease/mpay/oversea/ui/a0;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Z)V

    const/16 v16, 0x0

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Lcom/netease/mpay/oversea/n3;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;ZLcom/netease/mpay/oversea/ga;)V

    .line 88
    invoke-virtual/range {v18 .. v18}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;Lcom/netease/mpay/oversea/ui/y$e;)Landroid/view/View;
    .locals 5

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/a0;->p()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    if-nez v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v1}, Lcom/netease/mpay/oversea/s9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenStart(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/y;->b(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    invoke-virtual {v0, p3}, Lcom/netease/mpay/oversea/ui/y;->a(Lcom/netease/mpay/oversea/ui/y$e;)Lcom/netease/mpay/oversea/ui/y;

    .line 17
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    invoke-virtual {p3, p1, p2}, Lcom/netease/mpay/oversea/ui/y;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance p2, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/ui/i$i;-><init>()V

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 19
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p3

    .line 20
    invoke-virtual {p1, p2, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    .line 22
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/i;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 8

    .line 25
    invoke-static {p1}, Lcom/netease/mpay/oversea/w5;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->j()V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/4 v7, 0x1

    const-string v4, ""

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/q5;->b(Lcom/netease/mpay/oversea/j;)V

    goto/16 :goto_0

    .line 34
    :cond_2
    invoke-static {p1}, Lcom/netease/mpay/oversea/w5;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/4 v7, 0x1

    const-string v4, ""

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/q5;->a(Lcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 40
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 41
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/4 v7, 0x1

    const-string v4, ""

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 43
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->p:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/netease/mpay/oversea/s9;->o:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/netease/mpay/oversea/s9;->P:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_7

    .line 44
    :cond_6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    new-instance p2, Lcom/netease/mpay/oversea/j;

    const/16 v0, 0x2713

    const-string v1, ""

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lcom/netease/mpay/oversea/q5;->a(ILcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 46
    :cond_7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    invoke-static {p1}, Lcom/netease/mpay/oversea/w5;->a(I)I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/q5;->a(ILcom/netease/mpay/oversea/j;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/e6;)V
    .locals 11

    .line 47
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->b(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->z:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v2, :cond_0

    .line 48
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->a(Z)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    .line 51
    iget-object v2, p1, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    iget-object v0, p1, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/g6;

    .line 55
    :cond_1
    iget-object v2, p1, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    if-nez v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    iput-object v2, p1, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 59
    :cond_2
    sget-object v2, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne v2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 60
    :goto_0
    new-instance v0, Lcom/netease/mpay/oversea/y5$b;

    iget-object v3, p1, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/oversea/e6;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/oversea/e6;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    iget-object v8, p1, Lcom/netease/mpay/oversea/e6;->g:Ljava/lang/String;

    iget-object v9, p1, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    iget-boolean v2, p1, Lcom/netease/mpay/oversea/e6;->k:Z

    .line 62
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/y5$b;->b(Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v2, p1, Lcom/netease/mpay/oversea/e6;->l:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget v2, p1, Lcom/netease/mpay/oversea/e6;->n:I

    .line 64
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/y5$b;->a(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget v2, p1, Lcom/netease/mpay/oversea/e6;->m:I

    .line 65
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/y5$b;->c(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget v2, p1, Lcom/netease/mpay/oversea/e6;->q:I

    .line 66
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/y5$b;->b(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 67
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/y5$b;->a(Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    iget-object v3, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/i9;->f(Lcom/netease/mpay/oversea/g6;)V

    .line 69
    invoke-direct {p0, p1, v1, v0}, Lcom/netease/mpay/oversea/ui/a0;->b(Lcom/netease/mpay/oversea/e6;ZLcom/netease/mpay/oversea/y5;)V

    .line 70
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, ""

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_4
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/ui/y;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 116
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$i;

    .line 117
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 118
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    .line 119
    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/y;->k()V

    :cond_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/e6;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/e6;)V

    .line 2
    iget v0, p1, Lcom/netease/mpay/oversea/e6;->m:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netease/mpay/oversea/z4;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v3, Lcom/netease/mpay/oversea/s9;->E:Lcom/netease/mpay/oversea/s9;

    new-instance v4, Lcom/netease/mpay/oversea/ui/a0$a;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/oversea/ui/a0$a;-><init>(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/e6;)V

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {v2, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    .line 27
    invoke-static {v0, v1, p1}, Lcom/netease/mpay/oversea/m;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/e6;)V

    :goto_0
    return-void
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/y;->b()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/y;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/y;->b()V

    :goto_0
    return-void
.end method

.method protected g()Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/a0$e;->a:[I

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 14
    new-instance v0, Lcom/netease/mpay/oversea/hc;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/hc;-><init>()V

    return-object v0

    .line 15
    :pswitch_0
    new-instance v0, Lcom/netease/mpay/oversea/f7;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/f7;-><init>()V

    return-object v0

    .line 16
    :pswitch_1
    new-instance v0, Lcom/netease/mpay/oversea/b7;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/b7;-><init>()V

    return-object v0

    .line 17
    :pswitch_2
    new-instance v0, Lcom/netease/mpay/oversea/f4;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/f4;-><init>()V

    return-object v0

    .line 18
    :pswitch_3
    new-instance v0, Lcom/netease/mpay/oversea/l7;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/l7;-><init>()V

    return-object v0

    .line 19
    :pswitch_4
    new-instance v0, Lcom/netease/mpay/oversea/oa;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/oa;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/y;->e()V

    :cond_0
    return-void
.end method

.method public o()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/y;->f()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/a0;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected p()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, v0, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 12
    :goto_0
    sget-object v3, Lcom/netease/mpay/oversea/s9;->x:Lcom/netease/mpay/oversea/s9;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    .line 13
    iget-object v2, v0, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    .line 14
    iget-object v0, v0, Lcom/netease/mpay/oversea/t8;->d:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    move-object v8, v0

    move-object v6, v1

    move-object v7, v2

    goto :goto_4

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_6

    .line 18
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    .line 19
    sget-object v3, Lcom/netease/mpay/oversea/s9;->e:Lcom/netease/mpay/oversea/s9;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-eq v3, v4, :cond_5

    sget-object v3, Lcom/netease/mpay/oversea/s9;->f:Lcom/netease/mpay/oversea/s9;

    if-eq v3, v4, :cond_5

    sget-object v3, Lcom/netease/mpay/oversea/s9;->L:Lcom/netease/mpay/oversea/s9;

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v1

    move-object v7, v2

    goto :goto_3

    .line 23
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    move-object v6, v1

    move-object v7, v6

    move-object v8, v2

    goto :goto_4

    :cond_6
    move-object v6, v2

    move-object v7, v6

    :goto_3
    move-object v8, v7

    .line 27
    :goto_4
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r1;->c()Lcom/netease/mpay/oversea/t1;

    move-result-object v0

    .line 28
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, v0, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    goto :goto_5

    :cond_7
    const-string v0, ""

    :goto_5
    move-object v5, v0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v9, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v10, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    .line 30
    invoke-static/range {v3 .. v10}, Lcom/netease/mpay/oversea/vb$c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    return-object v0

    :cond_a
    :goto_6
    return-object v2
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/y;->j()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0;->r:Lcom/netease/mpay/oversea/ui/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/y;->k()V

    :cond_0
    return-void
.end method
