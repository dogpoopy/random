.class Lcom/netease/ntunisdk/services/MediaShareUtil$5;
.super Lcom/twitter/sdk/android/core/Callback;
.source "MediaShareUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/services/MediaShareUtil;->status(Lcom/netease/ntunisdk/UniTwitterApiClient;Lcom/netease/ntunisdk/services/MediaModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/netease/ntunisdk/services/MediaModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

.field final synthetic val$twitterApiClient:Lcom/netease/ntunisdk/UniTwitterApiClient;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$5;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    iput-object p2, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$5;->val$twitterApiClient:Lcom/netease/ntunisdk/UniTwitterApiClient;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$5;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$100(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/netease/ntunisdk/services/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaShareUtil"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->response:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/netease/ntunisdk/services/MediaModel;

    .line 234
    iget-object v0, p1, Lcom/netease/ntunisdk/services/MediaModel;->processingInfo:Lcom/netease/ntunisdk/services/MediaModel$ProcessingInfo;

    if-nez v0, :cond_0

    .line 236
    iget-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$5;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    const-string v0, "invalid processingInfo"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$100(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/services/MediaModel;->processingInfo:Lcom/netease/ntunisdk/services/MediaModel$ProcessingInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/services/MediaModel$ProcessingInfo;->suc()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "All suc"

    .line 239
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$5;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    iget-object p1, p1, Lcom/netease/ntunisdk/services/MediaModel;->mediaIdString:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$300(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p1, Lcom/netease/ntunisdk/services/MediaModel;->processingInfo:Lcom/netease/ntunisdk/services/MediaModel$ProcessingInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/services/MediaModel$ProcessingInfo;->fail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$5;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    const-string v0, "processingInfo fail result"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$100(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$5;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    invoke-static {v0}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$500(Lcom/netease/ntunisdk/services/MediaShareUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/services/MediaShareUtil$5$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/services/MediaShareUtil$5$1;-><init>(Lcom/netease/ntunisdk/services/MediaShareUtil$5;Lcom/netease/ntunisdk/services/MediaModel;)V

    iget-object p1, p1, Lcom/netease/ntunisdk/services/MediaModel;->processingInfo:Lcom/netease/ntunisdk/services/MediaModel$ProcessingInfo;

    iget p1, p1, Lcom/netease/ntunisdk/services/MediaModel$ProcessingInfo;->checkAfterSecs:I

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 255
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$5;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    const-string v0, "status service fail"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$100(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
