.class Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;
.super Ljava/lang/Object;
.source "DeviceDataCenter.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getDevicePerformanceScore(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

.field final synthetic val$deviceInfo:Ljava/lang/String;

.field final synthetic val$platform:Ljava/lang/String;

.field final synthetic val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/GamerInterface;)V
    .locals 0

    .line 2935
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$deviceInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$platform:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ProcessResult(Ljava/lang/String;)V
    .locals 12

    const-string v0, "DEVICE_INFO_CPU_NAME"

    const-string v1, "___"

    .line 2940
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataCenter [getDevicePerformanceScore] result="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataCenter"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    const-string v5, "score_range"

    const/4 v6, 0x0

    if-nez v2, :cond_3

    .line 2950
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2953
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$deviceInfo:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2954
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$deviceInfo:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v6

    .line 2957
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2958
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2959
    array-length v1, p1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    .line 2960
    aget-object v1, p1, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x1

    .line 2961
    :try_start_1
    aget-object p1, p1, v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    :cond_1
    move-object p1, v6

    move-object v1, p1

    .line 2966
    :goto_1
    :try_start_2
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2967
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v2

    :cond_2
    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v11, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v11

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, v6

    move-object v2, v1

    .line 2971
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DataCenter [getDevicePerformanceScore] JSONException="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object p1, v1

    move-object v1, v6

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object p1, v6

    move-object v1, p1

    .line 2976
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "DataCenter [getDevicePerformanceScore] cpu="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", score_result="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", score_range="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "methodId"

    const-string v8, "device_performance_score"

    .line 2981
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "cpu"

    .line 2982
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "score"

    .line 2983
    invoke-virtual {v2, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2984
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2986
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v7, "DEVICE_INFO_PERFORMANCE_SCORE_RANGE"

    const-string v8, "msg"

    const-string v9, "code"

    const-string v10, "DEVICE_INFO_PERFORMANCE_SCORE"

    if-nez v5, :cond_5

    :try_start_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2987
    invoke-virtual {v2, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "success"

    .line 2988
    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2989
    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "DEVICE_INFO_"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$deviceInfo:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    const-string v5, "DEVICE_INFO_RANGE"

    invoke-static {v4, v5, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 2991
    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v4, v0, v6}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 2993
    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$deviceInfo:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$platform:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2994
    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v10, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    :cond_4
    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "DEVICE_INFO_PERFORMANCE_SCORE_"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$deviceInfo:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, v5, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/4 p1, -0x1

    .line 3004
    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "fail"

    .line 3005
    invoke-virtual {v2, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3007
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getDefaultScore()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v10, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v0, "0:6200"

    invoke-interface {p1, v7, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DataCenter [getDevicePerformanceScore] default score="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-interface {v0, v10}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)V

    .line 3016
    :goto_4
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 3019
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataCenter [getDevicePerformanceScore] Exception1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
