.class public Lcom/netease/mpay/oversea/fa$f;
.super Ljava/lang/Object;
.source "ServerApiTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/oversea/pa;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroid/app/Activity;

.field protected d:Ljava/lang/String;

.field private e:Lcom/netease/mpay/oversea/t1;

.field public f:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/fa$f;->f:Z

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/fa$f;->c:Landroid/app/Activity;

    .line 6
    iput-object p2, p0, Lcom/netease/mpay/oversea/fa$f;->d:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/fa$f;->b:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object p2, p0, Lcom/netease/mpay/oversea/fa$f;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/fa$f;->d:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/t1;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/fa$f;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa$f;->e:Lcom/netease/mpay/oversea/t1;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa$f;->e:Lcom/netease/mpay/oversea/t1;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t1;->b()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r1;->c()Lcom/netease/mpay/oversea/t1;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/t1;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/t1;-><init>()V

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchDevice--> local devid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isFirstOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/h9;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/h9;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/i9;->K()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 10
    :goto_1
    iget-object v3, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 11
    new-instance v2, Lcom/netease/mpay/oversea/da;

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa$f;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/fa$f;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v3, Lcom/netease/mpay/oversea/w1;

    invoke-direct {v3}, Lcom/netease/mpay/oversea/w1;-><init>()V

    .line 12
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/x1;

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchDevice--> network devid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 14
    iget-object v3, v2, Lcom/netease/mpay/oversea/x1;->a:Ljava/lang/String;

    iput-object v3, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    .line 15
    iget-object v2, v2, Lcom/netease/mpay/oversea/x1;->b:[B

    iput-object v2, v1, Lcom/netease/mpay/oversea/t1;->c:[B

    .line 16
    iget-object v2, p0, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/r1;->a(Lcom/netease/mpay/oversea/t1;)V

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t1;->b()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 19
    :try_start_1
    new-instance v2, Lcom/netease/mpay/oversea/da;

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa$f;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/fa$f;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v3, Lcom/netease/mpay/oversea/u1;

    iget-object v4, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/netease/mpay/oversea/u1;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/v1;

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchDevice--> network enckey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/mpay/oversea/t1;->c:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 22
    iget-object v2, v2, Lcom/netease/mpay/oversea/v1;->b:[B

    iput-object v2, v1, Lcom/netease/mpay/oversea/t1;->c:[B

    .line 23
    iget-object v2, p0, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/r1;->a(Lcom/netease/mpay/oversea/t1;)V
    :try_end_1
    .catch Lcom/netease/mpay/oversea/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 25
    :try_start_2
    invoke-static {v2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 28
    :cond_5
    :goto_2
    iput-object v1, p0, Lcom/netease/mpay/oversea/fa$f;->e:Lcom/netease/mpay/oversea/t1;

    .line 30
    :cond_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchDevice--> devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa$f;->e:Lcom/netease/mpay/oversea/t1;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa$f;->e:Lcom/netease/mpay/oversea/t1;

    return-object v0

    :catchall_0
    move-exception v1

    .line 33
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
