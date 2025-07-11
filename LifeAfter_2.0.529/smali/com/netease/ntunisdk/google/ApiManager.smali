.class public Lcom/netease/ntunisdk/google/ApiManager;
.super Ljava/lang/Object;
.source "ApiManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApi()Lcom/netease/ntunisdk/google/Api;
    .locals 2

    .line 7
    invoke-static {}, Lcom/netease/ntunisdk/google/ApiManager;->isPGSV2SDK()Z

    move-result v0

    const-string v1, "GoogleApi"

    if-eqz v0, :cond_0

    const-string v0, "isPGSV2SDK"

    .line 8
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    invoke-direct {v0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "isPGSV1SDK"

    .line 11
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSApi;

    invoke-direct {v0}, Lcom/netease/ntunisdk/google/GooglePGSApi;-><init>()V

    return-object v0
.end method

.method public static isPGSV2SDK()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.gms.games.PlayGamesSdk"

    .line 18
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method
