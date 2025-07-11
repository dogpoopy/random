.class final Lcom/netease/ntunisdk/base/SdkBase$73$1;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase$73;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase$73;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase$73;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 8507
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->b:Lcom/netease/ntunisdk/base/SdkBase$73;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ProcessResult(Ljava/lang/String;)V
    .locals 4

    const-string v0, "UniSDK Base"

    .line 8512
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "CMCC_PAYTYPE"

    if-nez v1, :cond_1

    .line 8513
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 8514
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "S_OK"

    .line 8515
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8516
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->b:Lcom/netease/ntunisdk/base/SdkBase$73;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/SdkBase$73;->f:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)Ljava/lang/String;

    .line 8518
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 8519
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->b:Lcom/netease/ntunisdk/base/SdkBase$73;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/SdkBase$73;->f:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SdkBase;->h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8520
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 8522
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->b:Lcom/netease/ntunisdk/base/SdkBase$73;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/SdkBase$73;->f:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->b:Lcom/netease/ntunisdk/base/SdkBase$73;

    iget-object v3, v3, Lcom/netease/ntunisdk/base/SdkBase$73;->f:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/SdkBase;->h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 8525
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->b:Lcom/netease/ntunisdk/base/SdkBase$73;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/SdkBase$73;->f:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->b:Lcom/netease/ntunisdk/base/SdkBase$73;

    iget-object v3, v3, Lcom/netease/ntunisdk/base/SdkBase$73;->f:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/SdkBase;->h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)Ljava/lang/String;

    .line 8527
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "cmcc_paytype:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$73$1;->b:Lcom/netease/ntunisdk/base/SdkBase$73;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/SdkBase$73;->f:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SdkBase;->h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8529
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "queryCmccPaytype parse json error"

    .line 8530
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
