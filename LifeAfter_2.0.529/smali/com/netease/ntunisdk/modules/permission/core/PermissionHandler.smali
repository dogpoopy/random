.class public Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;
.super Ljava/lang/Object;
.source "PermissionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionHandler"


# instance fields
.field private firstText:Ljava/lang/String;

.field private gotoSetting:Z

.field private gotoSettingReason:Ljava/lang/String;

.field private negativeText:Ljava/lang/String;

.field private permissionArray:[Ljava/lang/String;

.field private permissionName:Ljava/lang/String;

.field private permissionRequest:Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

.field private positiveText:Ljava/lang/String;

.field private refuseTip:Ljava/lang/String;

.field private showDialog:Z

.field private tipSetting:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/modules/permission/PermissionContext;Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "negativeText"

    const-string v1, "positiveText"

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 33
    :try_start_0
    iput-boolean v2, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->gotoSetting:Z

    const-string v3, "firstText"

    .line 34
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->firstText:Ljava/lang/String;

    const-string v3, "refuseTip"

    .line 35
    invoke-interface {p1}, Lcom/netease/ntunisdk/modules/permission/PermissionContext;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/netease/ntunisdk/modules/permission/R$string;->netease_permissionkit_sdk__refuse_tip:I

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->refuseTip:Ljava/lang/String;

    const-string v3, "showDialog"

    .line 36
    invoke-virtual {p3, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->showDialog:Z

    .line 37
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->positiveText:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/netease/ntunisdk/modules/permission/PermissionContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netease/ntunisdk/modules/permission/R$string;->netease_permissionkit_sdk__continue:I

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->positiveText:Ljava/lang/String;

    .line 42
    :goto_0
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->negativeText:Ljava/lang/String;

    goto :goto_1

    .line 45
    :cond_1
    invoke-interface {p1}, Lcom/netease/ntunisdk/modules/permission/PermissionContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netease/ntunisdk/modules/permission/R$string;->netease_permissionkit_sdk__cancel:I

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->negativeText:Ljava/lang/String;

    :goto_1
    const-string v0, "permissionName"

    .line 47
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->permissionName:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->permissionName:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->permissionArray:[Ljava/lang/String;

    const-string v0, "gotoSettingReason"

    const-string v1, ""

    .line 49
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->gotoSettingReason:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->permissionArray:[Ljava/lang/String;

    invoke-direct {v0, p3, v1, p1, p2}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/PermissionContext;Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->permissionRequest:Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "jsonException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PermissionHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public getFirstText()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->firstText:Ljava/lang/String;

    return-object v0
.end method

.method public getGotoSetting()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->gotoSetting:Z

    return v0
.end method

.method public getGotoSettingReason()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->gotoSettingReason:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->negativeText:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionArray()[Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->permissionArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->permissionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->permissionRequest:Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    return-object v0
.end method

.method public getPositiveText()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->positiveText:Ljava/lang/String;

    return-object v0
.end method

.method public getRefuseTip()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->refuseTip:Ljava/lang/String;

    return-object v0
.end method

.method public getShowDialog()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->showDialog:Z

    return v0
.end method

.method public getTipSetting()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->tipSetting:Ljava/lang/String;

    return-object v0
.end method

.method public setShowDialog(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->showDialog:Z

    return-void
.end method

.method public setTipSetting(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->tipSetting:Ljava/lang/String;

    return-void
.end method
