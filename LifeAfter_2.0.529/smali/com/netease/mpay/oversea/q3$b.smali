.class Lcom/netease/mpay/oversea/q3$b;
.super Ljava/lang/Object;
.source "GameConfigResponse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/q3;->a(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/q3;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/q3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q3$b;->a:Lcom/netease/mpay/oversea/q3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/q3$b;->a:Lcom/netease/mpay/oversea/q3;

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/q3$f;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, v1, Lcom/netease/mpay/oversea/q3$f;->e:Lcom/netease/mpay/oversea/q3$g;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object v2

    iget-object v3, v1, Lcom/netease/mpay/oversea/q3$f;->e:Lcom/netease/mpay/oversea/q3$g;

    iget-object v3, v3, Lcom/netease/mpay/oversea/q3$g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;)Z

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object v2

    iget-object v3, v1, Lcom/netease/mpay/oversea/q3$f;->e:Lcom/netease/mpay/oversea/q3$g;

    iget-object v3, v3, Lcom/netease/mpay/oversea/q3$g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;)Z

    .line 6
    iget-object v2, v1, Lcom/netease/mpay/oversea/q3$f;->f:Lcom/netease/mpay/oversea/q3$d;

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object v2

    iget-object v3, v1, Lcom/netease/mpay/oversea/q3$f;->f:Lcom/netease/mpay/oversea/q3$d;

    iget-object v3, v3, Lcom/netease/mpay/oversea/q3$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;)Z

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object v2

    iget-object v1, v1, Lcom/netease/mpay/oversea/q3$f;->f:Lcom/netease/mpay/oversea/q3$d;

    iget-object v1, v1, Lcom/netease/mpay/oversea/q3$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/q3$b;->a:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/q3;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
