.class public abstract Lcom/netease/mpay/oversea/ga;
.super Ljava/lang/Object;
.source "ServerApiWithLoginCallback.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "TData;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/netease/mpay/oversea/s9;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ga;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/ga;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/ga;->c:Lcom/netease/mpay/oversea/s9;

    return-void
.end method

.method private a()V
    .locals 15

    .line 26
    new-instance v6, Lcom/netease/mpay/oversea/f6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ga;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ga;->b:Ljava/lang/String;

    sget-object v7, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    sget-object v13, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v3

    new-instance v5, Lcom/netease/mpay/oversea/ga$b;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ga$b;-><init>(Lcom/netease/mpay/oversea/ga;)V

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 58
    invoke-virtual {v6}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ga;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ga;->a()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ga;)Lcom/netease/mpay/oversea/s9;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ga;->c:Lcom/netease/mpay/oversea/s9;

    return-object p0
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/netease/mpay/oversea/w5;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ga;->a:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/ga$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ga$a;-><init>(Lcom/netease/mpay/oversea/ga;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/w5;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/ga;->a(Lcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p1}, Lcom/netease/mpay/oversea/w5;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/ga;->b(Lcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ga;->b(ILcom/netease/mpay/oversea/j;)V

    :goto_0
    return-void
.end method

.method public abstract a(Lcom/netease/mpay/oversea/j;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
.end method

.method public abstract b(ILcom/netease/mpay/oversea/j;)V
.end method

.method public abstract b(Lcom/netease/mpay/oversea/j;)V
.end method
