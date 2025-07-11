.class Lcom/netease/mpay/oversea/ui/o$i;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/o;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/ui/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/ui/o;Lcom/netease/mpay/oversea/ui/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/o$i;-><init>(Lcom/netease/mpay/oversea/ui/o;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/s9;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/o$i$c;

    invoke-direct {v2, p0, p1}, Lcom/netease/mpay/oversea/ui/o$i$c;-><init>(Lcom/netease/mpay/oversea/ui/o$i;Lcom/netease/mpay/oversea/s9;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/o$i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/o$i;->d()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/o$i;Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/o$i;->a(Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/o$i;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/o$i;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 141
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 142
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 143
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v5, Lcom/netease/mpay/oversea/ui/o$i$a;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/o$i$a;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    new-instance v7, Lcom/netease/mpay/oversea/ui/o$i$b;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/o$i$b;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "login_guest_already_bind"

    :goto_0
    const-string v1, "confirm"

    const-string v2, "cancel"

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 10

    .line 86
    new-instance v9, Lcom/netease/mpay/oversea/y5$b;

    iget-object v1, p2, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/oversea/e6;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/mpay/oversea/e6;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    iget-object v6, p2, Lcom/netease/mpay/oversea/e6;->g:Ljava/lang/String;

    iget-object v7, p2, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    iget-boolean v0, p2, Lcom/netease/mpay/oversea/e6;->k:Z

    .line 88
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object v0, p2, Lcom/netease/mpay/oversea/e6;->l:Ljava/lang/String;

    .line 89
    invoke-virtual {v9, v0}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    .line 90
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->b(Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/oversea/e6;->o:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget v1, p2, Lcom/netease/mpay/oversea/e6;->n:I

    .line 92
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->a(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget v1, p2, Lcom/netease/mpay/oversea/e6;->m:I

    .line 93
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->c(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget v1, p2, Lcom/netease/mpay/oversea/e6;->q:I

    .line 94
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->b(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 95
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->a(Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/i9;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/ac;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    sget-object v2, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne v1, v2, :cond_2

    .line 101
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/i9;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/o$i$j;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/netease/mpay/oversea/ui/o$i$j;-><init>(Lcom/netease/mpay/oversea/ui/o$i;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/ui/q;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/q$f;)V

    goto :goto_1

    .line 110
    :cond_2
    :goto_0
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    .line 111
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    const-string v0, "Event:LoginWithGuideStateImpl\uff1aonSuccess \uff1afinishWithResult"

    .line 112
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 115
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 116
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :goto_1
    return-void
.end method

.method private a(ZZLcom/netease/mpay/oversea/j;)V
    .locals 8

    .line 156
    iget v0, p3, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v1, 0x271e

    if-eq v1, v0, :cond_2

    const/16 v1, 0x271d

    if-eq v1, v0, :cond_2

    const/16 v1, 0x2713

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p3, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 170
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/o$i;->d()V

    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_retry:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 175
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 176
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v3, p3, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    new-instance v5, Lcom/netease/mpay/oversea/ui/o$i$e;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/o$i$e;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    new-instance v7, Lcom/netease/mpay/oversea/ui/o$i$f;

    invoke-direct {v7, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/o$i$f;-><init>(Lcom/netease/mpay/oversea/ui/o$i;ZZ)V

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_1

    .line 193
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance p2, Lcom/netease/mpay/oversea/ui/o$i$d;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/ui/o$i$d;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    invoke-static {p1, p3, p2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/o$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/o$i;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 11

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_account_changed:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_retry:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v8, Lcom/netease/mpay/oversea/ui/o$i$l;

    invoke-direct {v8, p0}, Lcom/netease/mpay/oversea/ui/o$i$l;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    new-instance v10, Lcom/netease/mpay/oversea/ui/o$i$m;

    invoke-direct {v10, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/o$i$m;-><init>(Lcom/netease/mpay/oversea/ui/o$i;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    invoke-static/range {v5 .. v10}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    const-string p2, "login_guide_thirdparty_changed"

    const-string v0, "confirm"

    const-string v1, "cancel"

    .line 21
    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_new_guest_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/o$i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v1, v1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-ne v2, v1, :cond_1

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    if-eq v2, v1, :cond_1

    .line 6
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bounded_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/o$i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/o$i;->f()V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/ui/o$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/o$i;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/ui/o;->f:Z

    .line 2
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/o$i$k;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/o$i$k;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private f()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_tips:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->e:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    invoke-static {v2, v1, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/netease/mpay/oversea/ui/o$i$n;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/o$i$n;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    new-instance v7, Lcom/netease/mpay/oversea/ui/o$i$o;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/o$i$o;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    const-string v1, "login_guide_fallback_guest"

    const-string v2, "confirm"

    const-string v3, "cancel"

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v2, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->c()V

    goto/16 :goto_2

    .line 7
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    const-string v2, "close"

    const-string v3, "login"

    if-eq v1, v0, :cond_5

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1, v4}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 30
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h9;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guide_msg:I

    invoke-static {v1, v4}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 35
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_expired:I

    invoke-static {v1, v4}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    move-object v6, v1

    .line 39
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v5, v4, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    invoke-direct {v1, v5, v4}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/n5;->f()Lcom/netease/mpay/oversea/g6;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 41
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v4}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iput-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    .line 45
    :cond_4
    new-instance v0, Lcom/netease/mpay/oversea/a4;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/a4;-><init>()V

    const-string v1, "login_guide"

    invoke-virtual {v0, v1, v3, v2}, Lcom/netease/mpay/oversea/a4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/a4;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v7, v0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    const/4 v0, 0x0

    .line 46
    invoke-static {v5, v7, v0}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v8

    new-instance v9, Lcom/netease/mpay/oversea/ui/o$i$h;

    invoke-direct {v9, p0}, Lcom/netease/mpay/oversea/ui/o$i$h;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    new-instance v10, Lcom/netease/mpay/oversea/ui/o$i$i;

    invoke-direct {v10, p0}, Lcom/netease/mpay/oversea/ui/o$i$i;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    .line 47
    invoke-virtual/range {v4 .. v10}, Lcom/netease/mpay/oversea/a4;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/b$c;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 48
    :cond_5
    :goto_1
    new-instance v0, Lcom/netease/mpay/oversea/j;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/ui/R$string;->netease_mpay_oversea__login_expired:I

    .line 49
    invoke-static {v1, v4}, Lcom/netease/mpay/oversea/h6;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3eb

    invoke-direct {v0, v4, v1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v4, Lcom/netease/mpay/oversea/ui/o$i$g;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/ui/o$i$g;-><init>(Lcom/netease/mpay/oversea/ui/o$i;)V

    invoke-static {v1, v0, v4}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    const-string v1, "login_guide_token_invalid"

    .line 63
    invoke-virtual {v0, v1, v3, v2}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_2
    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 5

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginWithGuideStateImpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    const/16 v0, 0x2329

    if-ne p1, v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/ui/o;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1, v0, v1, p2}, Lcom/netease/mpay/oversea/ui/o;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j;)V

    goto :goto_2

    .line 126
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h9;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o$i;->b()Lcom/netease/mpay/oversea/s9;

    move-result-object v3

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x2717

    if-ne p1, v3, :cond_3

    if-nez p2, :cond_2

    .line 129
    new-instance p2, Lcom/netease/mpay/oversea/j;

    const/16 v3, 0x2716

    const-string v4, ""

    invoke-direct {p2, v3, v4}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    .line 131
    :cond_2
    iget-object v3, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_google_unsupported:I

    invoke-static {v3, v4}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 136
    :cond_3
    sget-object v3, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o$i;->b()Lcom/netease/mpay/oversea/s9;

    move-result-object v4

    if-ne v3, v4, :cond_4

    const/16 v3, 0x2712

    if-eq p1, v3, :cond_5

    const/16 v3, 0x2714

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 137
    :cond_5
    :goto_1
    invoke-direct {p0, v0, v1, p2}, Lcom/netease/mpay/oversea/ui/o$i;->a(ZZLcom/netease/mpay/oversea/j;)V

    :goto_2
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 5

    .line 138
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h9;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o$i;->b()Lcom/netease/mpay/oversea/s9;

    move-result-object v3

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    sget-object v3, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o$i;->b()Lcom/netease/mpay/oversea/s9;

    move-result-object v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 140
    :goto_1
    invoke-direct {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/ui/o$i;->a(ZZLcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 2

    const-string v0, "Event:LoginWithGuideStateImpl\uff1aonSuccess"

    .line 64
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p3, "Event:LoginWithGuideStateImpl\uff1aonSuccess \uff1aisNewGuest"

    .line 66
    invoke-static {p3}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 67
    sget-object p3, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iput-object p3, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 68
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, p3, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, p3, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 70
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 71
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_1

    .line 74
    :cond_0
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p2, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "Event:LoginWithGuideStateImpl\uff1aonSuccess \uff1aswitch user"

    .line 80
    invoke-static {p3}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/o$i;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p3, "Event:LoginWithGuideStateImpl\uff1aonSuccess \uff1alast user"

    .line 83
    invoke-static {p3}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/o$i;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    :goto_1
    return-void
.end method

.method public b()Lcom/netease/mpay/oversea/s9;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    return-object v0
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o$i;->b()Lcom/netease/mpay/oversea/s9;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    return-void
.end method
