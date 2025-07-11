.class Lcom/netease/ntunisdk/services/MediaShareUtil$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "MediaShareUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/services/MediaShareUtil;->shareVideo(Lcom/netease/ntunisdk/UniTwitterApiClient;)V
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

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$len:I

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$twitterApiClient:Lcom/netease/ntunisdk/UniTwitterApiClient;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    iput-object p2, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->val$twitterApiClient:Lcom/netease/ntunisdk/UniTwitterApiClient;

    iput-object p3, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->val$mimeType:Ljava/lang/String;

    iput p5, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->val$len:I

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/netease/ntunisdk/services/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 105
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

    .line 106
    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->response:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    iget-object v2, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->val$twitterApiClient:Lcom/netease/ntunisdk/UniTwitterApiClient;

    iget-object v3, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->val$file:Ljava/io/File;

    iget-object v4, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->val$mimeType:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lcom/netease/ntunisdk/services/MediaModel;

    const/4 v6, 0x0

    iget v7, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->val$len:I

    invoke-static/range {v1 .. v7}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$000(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/services/MediaModel;II)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$1;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    const-string v0, "init service fail"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$100(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
