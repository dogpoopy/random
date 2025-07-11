.class final Lcom/netease/ntunisdk/base/RealNameUpdate$a;
.super Ljava/lang/Object;
.source "RealNameUpdate.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/RealNameUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/netease/ntunisdk/base/SdkBase;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;ZLcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->a:Lcom/netease/ntunisdk/base/SdkBase;

    .line 99
    iput-object p2, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->b:Ljava/lang/String;

    .line 100
    iput-boolean p3, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->c:Z

    .line 101
    iput-object p4, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->d:Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;

    return-void
.end method


# virtual methods
.method public final ProcessResult(Ljava/lang/String;)V
    .locals 5

    .line 106
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "features result:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK RealNameUpdate"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/RealNameUpdate;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "features content md5 result:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 113
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 114
    iget-object v0, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "FEATURE_REAL_NAME"

    const-string v3, "is_real_name result:"

    const-string v4, "is_real_name"

    if-eqz v0, :cond_0

    .line 118
    :try_start_1
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "feature result json exception"

    .line 133
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "features md5 is difference"

    .line 137
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->c:Z

    if-eqz p1, :cond_3

    .line 143
    iget-object p1, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->d:Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/RealNameUpdate;->a(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V

    return-void

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$a;->d:Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;->updateCallback()V

    return-void
.end method
