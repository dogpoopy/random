.class Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$6;
.super Ljava/lang/Object;
.source "ShortcutMainActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnExtendFuncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->initUniSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$6;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtendFuncCall(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "onExtendFuncCall, code = %s"

    .line 255
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "QR quickqr_main"

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    const-string v3, ""

    .line 258
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x369abd3

    const/4 v5, 0x2

    const/4 v6, -0x1

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

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const-string v3, "onQrCodeScanLoginSuccess"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    const-string v2, "onQrCodeScanIndexPayFinish"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_4

    if-eq v2, v5, :cond_4

    return-void

    .line 265
    :cond_4
    iget-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$6;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    const-string v0, "orderStatus"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->access$500(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;I)V

    return-void

    .line 261
    :cond_5
    iget-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$6;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->access$400(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 271
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
