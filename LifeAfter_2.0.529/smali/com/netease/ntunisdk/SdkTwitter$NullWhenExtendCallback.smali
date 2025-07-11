.class Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "SdkTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NullWhenExtendCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field private isAuthAction:Z

.field private mJsonObj:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/netease/ntunisdk/SdkTwitter;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkTwitter;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 509
    iput-object p2, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->mJsonObj:Lorg/json/JSONObject;

    .line 510
    iput-boolean p3, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->isAuthAction:Z

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NullWhenExtendCallback-failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdkTwitter"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->mJsonObj:Lorg/json/JSONObject;

    const-string v0, "error"

    const-string v1, "twitter authorize error, no active session"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->mJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 541
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NullWhenExtendCallback-success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkTwitter"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->isAuthAction:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkTwitter;->access$800(Lcom/twitter/sdk/android/core/TwitterSession;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->mJsonObj:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/JsonUtil;->mergeJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 520
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->mJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->extendFuncCall(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->mJsonObj:Lorg/json/JSONObject;

    const-string v0, "tryAgain"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;->mJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->extendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 528
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
