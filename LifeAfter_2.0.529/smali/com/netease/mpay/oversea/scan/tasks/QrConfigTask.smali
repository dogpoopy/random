.class public Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;
.super Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;
.source "QrConfigTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask<",
        "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private appId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0, p4}, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    .line 25
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;->appId:Ljava/lang/String;

    .line 26
    invoke-super {p0, p3}, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->setProgress(Lcom/netease/mpay/oversea/scan/widgets/Progress;)Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    return-void
.end method


# virtual methods
.method protected performInBackground()Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;->mGameId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/oversea/scan/tasks/requests/QrConfigRequest;

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;->appId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/scan/tasks/requests/QrConfigRequest;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;->fetch(Lcom/netease/mpay/oversea/scan/server/modules/request/Request;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    return-object v0
.end method

.method protected bridge synthetic performInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;->performInBackground()Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    move-result-object v0

    return-object v0
.end method
