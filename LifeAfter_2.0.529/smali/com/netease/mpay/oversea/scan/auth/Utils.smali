.class public Lcom/netease/mpay/oversea/scan/auth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final PROTOCOL_LAUNCHER:Ljava/lang/String; = "com.netease.ntunisdk.external.protocol.ProtocolLauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isProtocolLauncher(Landroid/content/Context;)Z
    .locals 1

    .line 17
    invoke-static {p0}, Lcom/netease/mpay/oversea/auth/AuthUtils;->getLauncherName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.netease.ntunisdk.external.protocol.ProtocolLauncher"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupportProtocol()Z
    .locals 1

    const-string v0, "com.netease.ntunisdk.external.protocol.UniSDKProxy"

    .line 9
    invoke-static {v0}, Lcom/netease/mpay/oversea/auth/AuthUtils;->isClassInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.netease.ntunisdk.external.protocol.ProtocolManager"

    .line 10
    invoke-static {v0}, Lcom/netease/mpay/oversea/auth/AuthUtils;->isClassInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
