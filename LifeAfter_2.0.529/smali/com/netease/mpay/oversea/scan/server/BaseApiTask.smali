.class public abstract Lcom/netease/mpay/oversea/scan/server/BaseApiTask;
.super Ljava/lang/Object;
.source "BaseApiTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;,
        Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mCallback:Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;

.field protected mGameId:Ljava/lang/String;

.field protected mInQuietMode:Z

.field protected mProgress:Lcom/netease/mpay/oversea/scan/widgets/Progress;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
            "TData;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mActivity:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mGameId:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mCallback:Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mProgress:Lcom/netease/mpay/oversea/scan/widgets/Progress;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mInQuietMode:Z

    .line 32
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->initErrorReason()V

    return-void
.end method


# virtual methods
.method protected addLocalErrorMessage(Lcom/netease/mpay/oversea/scan/server/modules/ApiError;)Lcom/netease/mpay/oversea/scan/server/modules/ApiError;
    .locals 2

    if-eqz p1, :cond_2

    .line 85
    iget-object v0, p1, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->getFetchUrlErrorReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->reason:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/modules/AlertType;->NO_ALERTER:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    iput-object v0, p1, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->alertType:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    goto :goto_1

    .line 90
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/modules/AlertType;->TOAST:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    iget-object v1, p1, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->alertType:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/scan/server/modules/AlertType;->TOAST:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/modules/AlertType;->DIALOG:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    :goto_0
    iput-object v0, p1, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->alertType:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    :cond_2
    :goto_1
    return-object p1
.end method

.method protected dismissProgress()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mProgress:Lcom/netease/mpay/oversea/scan/widgets/Progress;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netease/mpay/oversea/scan/widgets/Progress;->isProgressShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mProgress:Lcom/netease/mpay/oversea/scan/widgets/Progress;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/scan/widgets/Progress;->dismissProgress()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mProgress:Lcom/netease/mpay/oversea/scan/widgets/Progress;

    :cond_0
    return-void
.end method

.method public execute()V
    .locals 3

    .line 73
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mInQuietMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;

    invoke-direct {v2, p0, v1}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;-><init>(Lcom/netease/mpay/oversea/scan/server/BaseApiTask;Lcom/netease/mpay/oversea/scan/server/BaseApiTask$1;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;-><init>(Lcom/netease/mpay/oversea/scan/server/BaseApiTask;Lcom/netease/mpay/oversea/scan/server/BaseApiTask$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->execute([Ljava/lang/Object;)Lcom/netease/mpay/oversea/scan/server/AsyncTask;

    :goto_0
    return-void
.end method

.method protected abstract getFetchUrlErrorReason(I)Ljava/lang/String;
.end method

.method protected abstract initErrorReason()V
.end method

.method protected onPostPerform(Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo<",
            "TData;>;",
            "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
            "TData;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 63
    :cond_0
    iget-boolean v0, p1, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;->success:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;->data:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_1
    iget v0, p1, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;->errCode:I

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;->errData:Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    invoke-interface {p2, v0, p1}, Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;->onFailure(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)V

    :goto_0
    return-void
.end method

.method protected onPrePerform()V
    .locals 0

    return-void
.end method

.method protected abstract performInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation
.end method

.method protected abstract runInBackground()Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo<",
            "TData;>;"
        }
    .end annotation
.end method

.method protected setProgress(Lcom/netease/mpay/oversea/scan/widgets/Progress;)Lcom/netease/mpay/oversea/scan/server/BaseApiTask;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mProgress:Lcom/netease/mpay/oversea/scan/widgets/Progress;

    return-object p0
.end method

.method protected setQuiet()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mInQuietMode:Z

    return-void
.end method

.method protected showProgress()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mProgress:Lcom/netease/mpay/oversea/scan/widgets/Progress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mProgress:Lcom/netease/mpay/oversea/scan/widgets/Progress;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/scan/widgets/Progress;->showProgress()V

    :cond_0
    return-void
.end method
