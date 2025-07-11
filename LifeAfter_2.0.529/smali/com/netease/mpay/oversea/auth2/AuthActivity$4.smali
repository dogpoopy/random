.class Lcom/netease/mpay/oversea/auth2/AuthActivity$4;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnExtendFuncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/auth2/AuthActivity;->initUniSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/auth2/AuthActivity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity$4;->this$0:Lcom/netease/mpay/oversea/auth2/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtendFuncCall(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "onExtendFuncCall, code = %s"

    .line 109
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "auth_main"

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    const-string v3, ""

    .line 112
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x369abd3

    const/4 v5, 0x2

    if-eq v3, v4, :cond_2

    const v4, 0x36559004

    if-eq v3, v4, :cond_1

    const v2, 0x4eefd8d7    # 2.01198272E9f

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "onQrCodeScanOrderPayFinish"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "onQrCodeScanLoginSuccess"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "onQrCodeScanIndexPayFinish"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_4

    if-eq v1, v5, :cond_4

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
