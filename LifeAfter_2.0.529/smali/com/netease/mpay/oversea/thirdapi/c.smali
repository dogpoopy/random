.class public abstract Lcom/netease/mpay/oversea/thirdapi/c;
.super Lcom/netease/mpay/oversea/e7;
.source "ApiImpl.java"

# interfaces
.implements Lcom/netease/mpay/oversea/f;


# instance fields
.field protected a:Lcom/netease/mpay/oversea/s9;

.field protected b:Lcom/netease/mpay/oversea/l;

.field protected c:Lcom/netease/mpay/oversea/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/e7;-><init>()V

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->a:Lcom/netease/mpay/oversea/s9;

    .line 7
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/thirdapi/c;->e()Lcom/netease/mpay/oversea/p;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/thirdapi/e;Lcom/netease/mpay/oversea/l;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Api login Failed. code ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/e;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    goto :goto_0

    :cond_0
    const-string v1, "unknown"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 9
    invoke-interface {p1, p0}, Lcom/netease/mpay/oversea/l;->a(Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/c$b;

    invoke-direct {v0, p1, p0}, Lcom/netease/mpay/oversea/thirdapi/c$b;-><init>(Lcom/netease/mpay/oversea/l;Lcom/netease/mpay/oversea/thirdapi/e;)V

    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/netease/mpay/oversea/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/mpay/oversea/l;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Api login Success. uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 5
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/c$a;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/c$a;-><init>(Lcom/netease/mpay/oversea/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 0

    .line 18
    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/c;->a:Lcom/netease/mpay/oversea/s9;

    return-object p0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V
    .locals 0

    .line 19
    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/c;->b:Lcom/netease/mpay/oversea/l;

    .line 20
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-interface {p2}, Lcom/netease/mpay/oversea/p;->a()V

    .line 21
    invoke-interface {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 14
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;ZLcom/netease/mpay/oversea/l;)V
    .locals 0

    .line 15
    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/c;->b:Lcom/netease/mpay/oversea/l;

    .line 16
    iget-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-interface {p3}, Lcom/netease/mpay/oversea/p;->a()V

    .line 17
    invoke-interface {p0, p1, p2}, Lcom/netease/mpay/oversea/f;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public e()Lcom/netease/mpay/oversea/p;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/c$c;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/thirdapi/c$c;-><init>(Lcom/netease/mpay/oversea/thirdapi/c;)V

    return-object v0
.end method

.method public final f()Lcom/netease/mpay/oversea/e7;
    .locals 0

    return-object p0
.end method

.method public abstract g()Lcom/netease/mpay/oversea/g6;
.end method
