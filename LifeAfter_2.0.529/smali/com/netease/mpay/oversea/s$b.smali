.class Lcom/netease/mpay/oversea/s$b;
.super Lcom/netease/mpay/oversea/s$i;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/s$i<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/s;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s$b;->b:Lcom/netease/mpay/oversea/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s$i;-><init>(Lcom/netease/mpay/oversea/s$a;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/s$b;->b:Lcom/netease/mpay/oversea/s;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s;->a(Lcom/netease/mpay/oversea/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/s$b;->b:Lcom/netease/mpay/oversea/s;

    iget-object v3, p0, Lcom/netease/mpay/oversea/s$i;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/oversea/s;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/s$b;->b:Lcom/netease/mpay/oversea/s;

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/s;->a(Lcom/netease/mpay/oversea/s;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    iget-object v3, p0, Lcom/netease/mpay/oversea/s$b;->b:Lcom/netease/mpay/oversea/s;

    invoke-static {v3}, Lcom/netease/mpay/oversea/s;->b(Lcom/netease/mpay/oversea/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/netease/mpay/oversea/s$b;->b:Lcom/netease/mpay/oversea/s;

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/s;->a(Lcom/netease/mpay/oversea/s;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    throw v0
.end method
