.class Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$5;
.super Ljava/lang/Object;
.source "DeviceDataCenter.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->postDeviceData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)V
    .locals 0

    .line 3199
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$5;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ProcessResult(Ljava/lang/String;)V
    .locals 5

    .line 3203
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataCenter [postDeviceData] result="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataCenter"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3205
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$5;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    const-string v2, "DEVICE_HAS_POST_DATA"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$5;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$6002(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;)Ljava/lang/String;

    .line 3208
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3212
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "methodId"

    const-string v4, "post_device_data"

    .line 3213
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "result"

    .line 3214
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3216
    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [postDeviceData] Exception="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
