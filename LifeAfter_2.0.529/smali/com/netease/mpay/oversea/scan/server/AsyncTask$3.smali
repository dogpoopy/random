.class Lcom/netease/mpay/oversea/scan/server/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/server/AsyncTask;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/server/AsyncTask;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/server/AsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$3;->this$0:Lcom/netease/mpay/oversea/scan/server/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$3;->this$0:Lcom/netease/mpay/oversea/scan/server/AsyncTask;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->access$500(Lcom/netease/mpay/oversea/scan/server/AsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$3;->this$0:Lcom/netease/mpay/oversea/scan/server/AsyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->access$500(Lcom/netease/mpay/oversea/scan/server/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    .line 127
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "An error occurred while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    const-string v1, "AsyncTask"

    .line 124
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
