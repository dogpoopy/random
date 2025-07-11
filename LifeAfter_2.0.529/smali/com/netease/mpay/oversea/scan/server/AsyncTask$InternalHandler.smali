.class Lcom/netease/mpay/oversea/scan/server/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/server/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 520
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;

    .line 521
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object p1, v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;->mTask:Lcom/netease/mpay/oversea/scan/server/AsyncTask;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    :cond_1
    iget-object p1, v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;->mTask:Lcom/netease/mpay/oversea/scan/server/AsyncTask;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->access$600(Lcom/netease/mpay/oversea/scan/server/AsyncTask;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
