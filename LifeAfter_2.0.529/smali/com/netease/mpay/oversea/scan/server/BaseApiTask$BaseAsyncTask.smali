.class Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;
.super Lcom/netease/mpay/oversea/scan/server/AsyncTask;
.source "BaseApiTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/server/BaseApiTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/scan/server/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo<",
        "TData;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/scan/server/BaseApiTask;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/scan/server/BaseApiTask;Lcom/netease/mpay/oversea/scan/server/BaseApiTask$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;-><init>(Lcom/netease/mpay/oversea/scan/server/BaseApiTask;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo<",
            "TData;>;"
        }
    .end annotation

    .line 126
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->runInBackground()Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo<",
            "TData;>;)V"
        }
    .end annotation

    .line 131
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->dismissProgress()V

    .line 136
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    iget-object v1, v0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mCallback:Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->onPostPerform(Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->onPostExecute(Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->onPreExecute()V

    .line 120
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->showProgress()V

    .line 121
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseAsyncTask;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->onPrePerform()V

    return-void
.end method
