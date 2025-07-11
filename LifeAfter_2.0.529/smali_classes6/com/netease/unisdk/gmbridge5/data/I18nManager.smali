.class public Lcom/netease/unisdk/gmbridge5/data/I18nManager;
.super Ljava/lang/Object;
.source "I18nManager.java"


# static fields
.field private static final I18N_JSON_FILE:Ljava/lang/String; = "gmbridge/string.%s.json"

.field private static final TAG:Ljava/lang/String; = "gm_bridge#i18n"

.field private static sI18nInfo:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getI18nInfo()Lcom/netease/unisdk/gmbridge5/data/I18nInfo;
    .locals 1

    .line 57
    sget-object v0, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->sI18nInfo:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    return-object v0
.end method

.method public static loadData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lan"    # Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge#i18n"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string v2, "gmbridge/string.%s.json"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "path":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->readAssetsFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    return-void

    .line 29
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    invoke-direct {v4}, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;-><init>()V

    .line 31
    .local v4, "i18nInfo":Lcom/netease/unisdk/gmbridge5/data/I18nInfo;
    const-string v5, "ASButtonTitleCamera"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mASButtonTitleCamera:Ljava/lang/String;

    .line 32
    const-string v5, "ASButtonTitleLibrary"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mASButtonTitleLibrary:Ljava/lang/String;

    .line 33
    const-string v5, "float_alert_tittle1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertTittle1:Ljava/lang/String;

    .line 34
    const-string v5, "float_alert_tittle2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertTittle2:Ljava/lang/String;

    .line 35
    const-string v5, "float_alert_cancel"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertCancel:Ljava/lang/String;

    .line 36
    const-string v5, "float_alert_ok"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertOk:Ljava/lang/String;

    .line 37
    const-string v5, "float_view_close"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatClose:Ljava/lang/String;

    .line 38
    const-string v5, "android_set_camera_permission_tip"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mPermissionNotAvailable:Ljava/lang/String;

    .line 39
    iget-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mPermissionNotAvailable:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 40
    const-string v5, "PHOTOLIBRARY_NOT_AVAILABLE_MSG"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mPermissionNotAvailable:Ljava/lang/String;

    .line 42
    :cond_1
    const-string v5, "need_camera_permission"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mNeedCameraPermission:Ljava/lang/String;

    .line 43
    invoke-virtual {v4}, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->check()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 44
    sput-object v4, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->sI18nInfo:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    .line 45
    sget-object v5, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->sI18nInfo:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    invoke-virtual {v5}, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    const-string v5, "I18nInfo isEmpty"

    invoke-static {v1, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "i18nInfo":Lcom/netease/unisdk/gmbridge5/data/I18nInfo;
    :goto_0
    goto :goto_1

    .line 49
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i18n Exception  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
