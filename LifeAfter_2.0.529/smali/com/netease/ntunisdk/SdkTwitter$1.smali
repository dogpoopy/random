.class Lcom/netease/ntunisdk/SdkTwitter$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "SdkTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkTwitter;->performInit()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkTwitter;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkTwitter;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login failure, exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdkTwitter"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/SdkTwitter;->resetCommonProp()V

    .line 289
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->access$002(Lcom/netease/ntunisdk/SdkTwitter;Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterSession;

    .line 290
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->loginDone(I)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/SdkTwitter;->access$002(Lcom/netease/ntunisdk/SdkTwitter;Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterSession;

    .line 259
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkTwitter;->access$000(Lcom/netease/ntunisdk/SdkTwitter;)Lcom/twitter/sdk/android/core/TwitterSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login success, userName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-static {v2}, Lcom/netease/ntunisdk/SdkTwitter;->access$000(Lcom/netease/ntunisdk/SdkTwitter;)Lcom/twitter/sdk/android/core/TwitterSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-static {v2}, Lcom/netease/ntunisdk/SdkTwitter;->access$000(Lcom/netease/ntunisdk/SdkTwitter;)Lcom/twitter/sdk/android/core/TwitterSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", twitterToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkTwitter"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkTwitter;->setLoginStat(I)V

    .line 263
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkTwitter;->access$000(Lcom/netease/ntunisdk/SdkTwitter;)Lcom/twitter/sdk/android/core/TwitterSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UIN"

    invoke-virtual {v0, v2, v1}, Lcom/netease/ntunisdk/SdkTwitter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkTwitter;->access$100(Lcom/twitter/sdk/android/core/TwitterSession;)Lorg/json/JSONObject;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SESSION"

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/SdkTwitter;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkTwitter;->access$200(Lcom/netease/ntunisdk/SdkTwitter;)Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkTwitter;->access$000(Lcom/netease/ntunisdk/SdkTwitter;)Lcom/twitter/sdk/android/core/TwitterSession;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/SdkTwitter$1$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkTwitter$1$1;-><init>(Lcom/netease/ntunisdk/SdkTwitter$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->requestEmail(Lcom/twitter/sdk/android/core/TwitterSession;Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method
