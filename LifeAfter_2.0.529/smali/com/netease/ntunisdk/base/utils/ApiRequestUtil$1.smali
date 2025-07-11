.class final Lcom/netease/ntunisdk/base/utils/ApiRequestUtil$1;
.super Ljava/lang/Object;
.source "ApiRequestUtil.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->generateTimestampDiff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ProcessResult(Ljava/lang/String;)V
    .locals 10

    .line 78
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "generateTimestampDiff wget: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiRequestUtil"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "TimestampDiff is set by Sauth, pass"

    .line 80
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    const-string p1, "result is empty"

    .line 84
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->access$102(J)J

    return-void

    .line 89
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 90
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v4, "subcode"

    .line 91
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_3

    const/4 p1, 0x1

    if-ne v4, p1, :cond_3

    const-string p1, "server_time"

    .line 93
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-string p1, "generateTimestampDiff server_time: "

    .line 95
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "generateTimestampDiff cur_time: "

    .line 96
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, v6, v2

    if-nez p1, :cond_2

    .line 98
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->access$102(J)J

    goto :goto_0

    :cond_2
    sub-long/2addr v4, v6

    .line 100
    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->access$102(J)J

    goto :goto_0

    .line 104
    :cond_3
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->access$102(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->access$102(J)J

    .line 110
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "generateTimestampDiff timestampDiff: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->access$100()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
