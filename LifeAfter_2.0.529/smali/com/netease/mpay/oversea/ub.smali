.class public Lcom/netease/mpay/oversea/ub;
.super Lcom/netease/mpay/oversea/fa;
.source "UploadRoleTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ub$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Lcom/netease/mpay/oversea/tb;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:Lcom/netease/mpay/oversea/ub$b;

.field private n:Lcom/netease/mpay/oversea/y5;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/y5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ub$b;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object v1, p3, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/fa;->h:Z

    .line 3
    iput-object p5, p0, Lcom/netease/mpay/oversea/ub;->l:Ljava/lang/String;

    .line 4
    iput-object p6, p0, Lcom/netease/mpay/oversea/ub;->m:Lcom/netease/mpay/oversea/ub$b;

    .line 5
    iput-object p3, p0, Lcom/netease/mpay/oversea/ub;->n:Lcom/netease/mpay/oversea/y5;

    .line 6
    iput-object p4, p0, Lcom/netease/mpay/oversea/ub;->o:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__warnning:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ub;->p:Ljava/lang/String;

    .line 8
    invoke-super {p0}, Lcom/netease/mpay/oversea/fa;->h()V

    .line 9
    invoke-super {p0}, Lcom/netease/mpay/oversea/fa;->g()V

    .line 10
    invoke-super {p0}, Lcom/netease/mpay/oversea/fa;->f()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ub;)Lcom/netease/mpay/oversea/ub$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ub;->m:Lcom/netease/mpay/oversea/ub$b;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ub;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ub;->p:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/m1<",
            "Lcom/netease/mpay/oversea/tb;",
            ">;",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/tb;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p2, Lcom/netease/mpay/oversea/ub$a;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/ub$a;-><init>(Lcom/netease/mpay/oversea/ub;)V

    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V

    return-void
.end method

.method protected bridge synthetic d(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ub;->e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/tb;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/tb;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ub;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ub;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/da;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v1, Lcom/netease/mpay/oversea/sb;

    .line 13
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object p1

    iget-object v4, p1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/netease/mpay/oversea/ub;->n:Lcom/netease/mpay/oversea/y5;

    iget-object v5, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/ub;->o:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/oversea/ub;->l:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netease/mpay/oversea/sb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/tb;

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__role_uploaded:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ub;->p:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netease/mpay/oversea/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 21
    :catch_0
    new-instance p1, Lcom/netease/mpay/oversea/g;

    new-instance v0, Lcom/netease/mpay/oversea/j;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/j;-><init>()V

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/g;-><init>(Lcom/netease/mpay/oversea/j;)V

    throw p1

    :catch_1
    move-exception p1

    .line 22
    new-instance v0, Lcom/netease/mpay/oversea/g;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g;->a()Lcom/netease/mpay/oversea/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/g;-><init>(Lcom/netease/mpay/oversea/j;)V

    throw v0

    .line 23
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/g;

    new-instance v0, Lcom/netease/mpay/oversea/j;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__role_id_empty:I

    .line 24
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/j;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/g;-><init>(Lcom/netease/mpay/oversea/j;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/g;

    new-instance v0, Lcom/netease/mpay/oversea/j;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__role_info_empty:I

    .line 26
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/j;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/g;-><init>(Lcom/netease/mpay/oversea/j;)V

    throw p1
.end method
