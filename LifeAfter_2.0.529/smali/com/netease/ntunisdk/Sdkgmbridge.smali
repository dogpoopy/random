.class public Lcom/netease/ntunisdk/Sdkgmbridge;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "Sdkgmbridge.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "gmbridge"

.field private static final SDK_VERSION:Ljava/lang/String; = "4.9.3"

.field private static final TAG:Ljava/lang/String; = "UniSDK gm_bridge"


# instance fields
.field private mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    const-string v1, "INNER_MODE_SECOND_CHANNEL"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/Sdkgmbridge;->setPropInt(Ljava/lang/String;I)V

    .line 38
    const-string v1, "INNER_MODE_NO_PAY"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/Sdkgmbridge;->setPropInt(Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method private initGmBridgeProp(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 192
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "orientation":I
    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    .line 196
    const-string v1, "language"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "language":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v2, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setLanguage(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method private isDebug()Z
    .locals 9

    .line 208
    const/4 v0, 0x0

    const-string v1, "DEBUG_MODE"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/Sdkgmbridge;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    .line 209
    .local v1, "debugMode":I
    const-string v2, "DEBUG_LOG"

    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/Sdkgmbridge;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    .line 210
    .local v2, "debugLog":I
    const/4 v3, 0x1

    if-eq v3, v1, :cond_3

    if-ne v3, v2, :cond_0

    goto/16 :goto_2

    .line 215
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 216
    .local v4, "sdCardExist":Z
    if-eqz v4, :cond_1

    .line 217
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "baseDir":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ntUniSDK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "base"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "debug_log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "debugLogFile":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_1

    .line 221
    return v3

    .line 225
    .end local v4    # "sdCardExist":Z
    .end local v5    # "baseDir":Ljava/lang/String;
    .end local v6    # "debugLogFile":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 224
    :catch_0
    move-exception v3

    .line 227
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->myCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".BuildConfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "className":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 230
    .local v4, "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "DEBUG"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 231
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    .local v6, "isDebug":Z
    if-eqz v6, :cond_2

    .line 233
    return v6

    .line 236
    .end local v4    # "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "isDebug":Z
    :cond_2
    goto :goto_1

    .line 235
    :catch_1
    move-exception v4

    .line 237
    :goto_1
    return v0

    .line 211
    .end local v3    # "className":Ljava/lang/String;
    :cond_3
    :goto_2
    return v3
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0
    .param p1, "order"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .line 91
    return-void
.end method

.method public exit()V
    .locals 2

    .line 130
    const-string v0, "UniSDK gm_bridge"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->destroy()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 135
    :cond_0
    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "methodId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "methodId":Ljava/lang/String;
    const-string v3, "ntSetGMProp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/Sdkgmbridge;->initGmBridgeProp(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 159
    :cond_0
    const-string v3, "ntSetRoleId"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    const-string v3, "roleId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "roleId":Ljava/lang/String;
    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v4, v3}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setRoleId(Ljava/lang/String;)V

    .line 162
    .end local v3    # "roleId":Ljava/lang/String;
    goto/16 :goto_0

    :cond_1
    const-string v3, "ntOpenGMPage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    const-string v3, "refer"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "refer":Ljava/lang/String;
    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v4, v3}, Lcom/netease/unisdk/gmbridge5/GmBridge;->openGMPage(Ljava/lang/String;)V

    .line 165
    .end local v3    # "refer":Ljava/lang/String;
    goto :goto_0

    :cond_2
    const-string v3, "ntSetGenTokenResponse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    const-string v3, "response"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "response":Ljava/lang/String;
    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v4, v3}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setGenTokenResponse(Ljava/lang/String;)V

    .line 168
    .end local v3    # "response":Ljava/lang/String;
    goto :goto_0

    :cond_3
    const-string v3, "ntSetFloatBtnVisible"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 169
    const-string v3, "visible"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 170
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v4, v3}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setFloatBtnVisible(Z)V

    .line 171
    .end local v3    # "visible":Z
    goto :goto_0

    :cond_4
    const-string v3, "ntReceiveMessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v4, v3}, Lcom/netease/unisdk/gmbridge5/GmBridge;->receiveMessage(Ljava/lang/String;)V

    .line 174
    .end local v3    # "msg":Ljava/lang/String;
    goto :goto_0

    :cond_5
    const-string v3, "ntDestroy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 175
    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v3}, Lcom/netease/unisdk/gmbridge5/GmBridge;->destroy()V

    goto :goto_0

    .line 176
    :cond_6
    const-string v3, "gmbridge_call_js"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 177
    const-string v3, "params"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "params":Ljava/lang/String;
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getInstance()Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    move-result-object v4

    .line 179
    .local v4, "gmWebviewActivity":Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    if-eqz v4, :cond_7

    .line 180
    const-string v5, "gmsdk.gmbridge_call_js"

    invoke-virtual {v4, v3, v5}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "methodId":Ljava/lang/String;
    .end local v3    # "params":Ljava/lang/String;
    .end local v4    # "gmWebviewActivity":Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    :cond_7
    :goto_0
    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendFunc Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "gmbridge"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 120
    const-string v0, "4.9.3"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "4.9.3"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 2
    .param p1, "initListner"    # Lcom/netease/ntunisdk/base/OnFinishInitListener;

    .line 43
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge;

    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->myCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 45
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-direct {p0}, Lcom/netease/ntunisdk/Sdkgmbridge;->isDebug()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setDebug(Z)V

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    new-instance v1, Lcom/netease/ntunisdk/Sdkgmbridge$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/Sdkgmbridge$1;-><init>(Lcom/netease/ntunisdk/Sdkgmbridge;)V

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setTokenRequest(Lcom/netease/unisdk/gmbridge5/ITokenRequest;)V

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    new-instance v1, Lcom/netease/ntunisdk/Sdkgmbridge$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/Sdkgmbridge$2;-><init>(Lcom/netease/ntunisdk/Sdkgmbridge;)V

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setWebCloseListener(Lcom/netease/unisdk/gmbridge5/IWebCloseListener;)V

    .line 70
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    .line 71
    return-void
.end method

.method public login()V
    .locals 0

    .line 76
    return-void
.end method

.method public logout()V
    .locals 0

    .line 96
    return-void
.end method

.method public ntSetFloatBtnVisible(Z)V
    .locals 0
    .param p1, "v"    # Z

    .line 110
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->ntSetFloatBtnVisible(Z)V

    .line 111
    return-void
.end method

.method public openManager()V
    .locals 0

    .line 101
    return-void
.end method

.method public sdkOnPause()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->sdkOnPause()V

    .line 149
    :cond_0
    return-void
.end method

.method public sdkOnResume()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->sdkOnResume()V

    .line 142
    :cond_0
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    .line 106
    return-void
.end method
