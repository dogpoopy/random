.class public abstract Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;
.super Lcom/netease/mpay/oversea/scan/server/BaseApiTask;
.source "ServerApiTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netease/mpay/oversea/scan/server/BaseApiTask<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private mFetchUrlErrorReason:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    .line 31
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->initErrorReason()V

    return-void
.end method


# virtual methods
.method protected getFetchUrlErrorReason(I)Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->getFetchUrlErrorReasonId(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/scan/ScannerUtils;->getStringByLocale(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getFetchUrlErrorReasonId(I)Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const p1, 0x7f0b022b

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected initErrorReason()V
    .locals 5

    .line 66
    const-class v0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 69
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    .line 70
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0b022b

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 70
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 72
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 74
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 76
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 78
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x7f0b0229

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 80
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x7f0b022a

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 82
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 84
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->mFetchUrlErrorReason:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 86
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected runInBackground()Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo<",
            "TData;>;"
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->performInBackground()Ljava/lang/Object;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;->success(Ljava/lang/Object;)Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;

    move-result-object v0
    :try_end_0
    .catch Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/16 v1, 0x2711

    .line 54
    instance-of v2, v0, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException$ApiNetworkException;

    if-eqz v2, :cond_0

    const/16 v1, 0x2712

    .line 57
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;->getError()Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->reason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QA"

    invoke-static {v3, v2}, Lcom/netease/mpay/oversea/scan/tools/Logging;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;->getError()Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->addLocalErrorMessage(Lcom/netease/mpay/oversea/scan/server/modules/ApiError;)Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    move-result-object v2

    .line 59
    iput v1, v2, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->code:I

    .line 60
    new-instance v1, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;-><init>()V

    iget v0, v0, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;->errorCode:I

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;->fail(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;

    move-result-object v0

    return-object v0
.end method
