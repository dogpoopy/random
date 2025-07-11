.class public Lcom/netease/ntunisdk/Sdkprotocol;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "Sdkprotocol.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "protocol"

.field private static final SDK_VERSION:Ljava/lang/String; = "3.0.1"

.field private static final TAG:Ljava/lang/String; = "UniSDK protocol"


# instance fields
.field private launcherOpen:Z

.field private protocolCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

.field private protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Lcom/netease/ntunisdk/Sdkprotocol$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/Sdkprotocol$1;-><init>(Lcom/netease/ntunisdk/Sdkprotocol;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/Sdkprotocol;->setPropInt(Ljava/lang/String;I)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/Sdkprotocol;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/Sdkprotocol;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method private getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 230
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 232
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getProtocolProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;-><init>()V

    .line 176
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "COMPACT_URL"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrl(Ljava/lang/String;)V

    .line 186
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NT_COMPACT_URL_TYPE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrlType(Ljava/lang/String;)V

    .line 190
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NT_COMPACT_OFFLINE_GAME"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 192
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setOfflineGameFlag(Ljava/lang/String;)V

    .line 194
    :cond_3
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NT_COMPACT_NEW_OFFLINE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 196
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setNewOfflineFlag(Ljava/lang/String;)V

    .line 198
    :cond_4
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NT_COMPACT_SHOW_TITLE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 200
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setShowTitleFlag(Ljava/lang/String;)V

    .line 202
    :cond_5
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "COMPACT_SHOW_AGREE_LINE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 204
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setShowAgreeLineFlag(Ljava/lang/String;)V

    .line 206
    :cond_6
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "COMPACT_AGREE_LINE_TEXT"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 208
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setAgreeLineText(Ljava/lang/String;)V

    .line 214
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "NT_COMPACT_LOCALE"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 216
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setLocale(Ljava/lang/String;)V

    .line 218
    :cond_8
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    const-string v2, "protocol_issuer_name"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 220
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setIssuer(Ljava/lang/String;)V

    .line 222
    :cond_9
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 223
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/Sdkprotocol;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setGameName(Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method

.method private initProtocolManager()V
    .locals 2

    .line 257
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 258
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setActivity(Landroid/app/Activity;)V

    .line 259
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V

    .line 260
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->getProtocolProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "PROTOCOL_LAUNCHER"

    .line 136
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocol_launcher : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK protocol"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->launcherOpen:Z

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method protected gameLoginSuccess()V
    .locals 3

    .line 249
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UIN"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " gameLoginSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK protocol"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->initProtocolManager()V

    .line 252
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->getProtocolProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V

    .line 253
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->gameLoginSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "protocol"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.1"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.1"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DEBUG_MODE"

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/Sdkprotocol;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 70
    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->setDebug(Z)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->setDebug(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    :goto_0
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    return-void
.end method

.method public login()V
    .locals 0

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public sdkOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string p1, "UniSDK protocol"

    const-string v0, "sdkOnConfigurationChanged"

    .line 242
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->initProtocolManager()V

    .line 244
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->handleOnConfigurationChanged()V

    return-void
.end method

.method public showCompactView(Z)V
    .locals 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " >> showCompactView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK protocol"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 151
    iget-boolean v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->launcherOpen:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    const/4 v0, 0x3

    .line 154
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->protocolFinish(I)V

    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->initProtocolManager()V

    .line 160
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkprotocol;->getProtocolProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V

    .line 162
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UIN"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol;->protocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolIfNeed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
