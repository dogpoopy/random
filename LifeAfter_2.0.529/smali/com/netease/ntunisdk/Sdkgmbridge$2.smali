.class Lcom/netease/ntunisdk/Sdkgmbridge$2;
.super Ljava/lang/Object;
.source "Sdkgmbridge.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge5/IWebCloseListener;


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

    .line 58
    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkgmbridge$2;->this$0:Lcom/netease/ntunisdk/Sdkgmbridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebClose()V
    .locals 3

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "methodId"

    const-string v2, "onWebClose"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkgmbridge$2;->this$0:Lcom/netease/ntunisdk/Sdkgmbridge;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/Sdkgmbridge;->extendFuncCall(Ljava/lang/String;)V

    .line 67
    return-void
.end method
