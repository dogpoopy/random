.class Lcom/netease/ntunisdk/Sdkgmbridge$1;
.super Ljava/lang/Object;
.source "Sdkgmbridge.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge5/ITokenRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/Sdkgmbridge;->init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/Sdkgmbridge;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/Sdkgmbridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/ntunisdk/Sdkgmbridge;

    .line 46
    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkgmbridge$1;->this$0:Lcom/netease/ntunisdk/Sdkgmbridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRequest()V
    .locals 3

    .line 49
    const-string v0, "UniSDK gm_bridge"

    const-string v1, "call TokenRequest"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "methodId"

    const-string v2, "genToken"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkgmbridge$1;->this$0:Lcom/netease/ntunisdk/Sdkgmbridge;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/Sdkgmbridge;->extendFuncCall(Ljava/lang/String;)V

    .line 56
    return-void
.end method
