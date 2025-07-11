.class public Lcom/netease/unisdk/gmbridge5/GmBridge;
.super Ljava/lang/Object;
.source "GmBridge.java"


# static fields
.field private static final OPEN_PAGE_AFTER_SETGENTOKENRESPONSE:I = 0x2

.field private static final SHOW_MENUS_AFTER_SETGENTOKENRESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "gm_bridge"

.field public static sWebCloseListener:Lcom/netease/unisdk/gmbridge5/IWebCloseListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

.field private mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

.field private mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

.field private mRefer:Ljava/lang/String;

.field private volatile mSetGenTokenResponsing:Z

.field private mTodoAfterSetGenTokenResponse:I

.field private mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mVisible:Z

    .line 48
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    .line 49
    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->init(III)V

    .line 50
    new-instance v0, Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-direct {v0, p1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/GmBridge;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 24
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mSetGenTokenResponsing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netease/unisdk/gmbridge5/GmBridge;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mSetGenTokenResponsing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/data/DataManager;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 24
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge5/GmBridge;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 24
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    return v0
.end method

.method static synthetic access$202(Lcom/netease/unisdk/gmbridge5/GmBridge;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge5/GmBridge;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 24
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mRefer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 24
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;
    .param p1, "x1"    # Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    .line 24
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/unisdk/gmbridge5/GmBridge;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 24
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->showLoadingDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/ITokenRequest;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 24
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->gotoGMWebviewActivity(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/unisdk/gmbridge5/GmBridge;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 24
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 24
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;
    .param p1, "x1"    # Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    .line 24
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    return-object p1
.end method

.method private gotoGMWebviewActivity(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "hasCutout"    # Z

    .line 159
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 160
    .local v0, "targetSdkVersion":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_0

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 162
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const-class v3, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v1, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 164
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const-class v3, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v2, "GM_WEBVIEW_URL"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v2, "GM_HASCUTOUT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V

    .line 170
    return-void
.end method

.method private hideLoadingDialog()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$6;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$6;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    :cond_0
    return-void
.end method

.method private showLoadingDialog()V
    .locals 1

    .line 254
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$5;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$5;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 230
    const-string v0, "gm_bridge"

    const-string v1, "destroy ##"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V

    .line 232
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getInstance()Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    move-result-object v0

    .line 233
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 236
    :cond_0
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->shutdown()V

    .line 237
    return-void
.end method

.method public getDataManager()Lcom/netease/unisdk/gmbridge5/data/DataManager;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    return-object v0
.end method

.method public getFloatWindow()Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    return-object v0
.end method

.method public openGMPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "refer"    # Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ntOpenGMPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->hasCutout(Landroid/app/Activity;)Z

    move-result v0

    .line 124
    .local v0, "hasCutout":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCutout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mRefer:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->gotoGMWebviewActivity(Ljava/lang/String;Z)V

    goto :goto_0

    .line 129
    :cond_0
    new-instance v1, Lcom/netease/unisdk/gmbridge5/GmBridge$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/GmBridge$2;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    .line 155
    :goto_0
    return-void
.end method

.method public receiveMessage(Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setFloatBtnVisible(Z)V

    .line 205
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "msgs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const-string v2, "menu_id"

    if-eqz v1, :cond_3

    .line 208
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 209
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 210
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 211
    .local v5, "object":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 212
    iget-object v6, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->addRedIds(Ljava/lang/String;)V

    .line 209
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "len":I
    .end local v4    # "i":I
    :cond_2
    goto :goto_1

    .line 216
    :cond_3
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->addRedIds(Ljava/lang/String;)V

    .line 218
    :goto_1
    new-instance v2, Lcom/netease/unisdk/gmbridge5/GmBridge$4;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$4;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ntReceiveMessage error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gm_bridge"

    invoke-static {v2, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public requestMenus()V
    .locals 1

    .line 248
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    .line 249
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->showLoadingDialog()V

    .line 250
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge5/ITokenRequest;->doRequest()V

    .line 251
    return-void
.end method

.method public sdkOnPause()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->hide()V

    .line 63
    :cond_0
    return-void
.end method

.method public sdkOnResume()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mVisible:Z

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->show()V

    .line 57
    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 66
    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->setDebug(Z)V

    .line 67
    return-void
.end method

.method public setFloatBtnVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 178
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mVisible:Z

    .line 179
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge$3;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Z)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public setGenTokenResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V

    .line 93
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge$1;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .line 280
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$7;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge$7;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 1
    .param p1, "roleId"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->setRoleId(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setTokenRequest(Lcom/netease/unisdk/gmbridge5/ITokenRequest;)V
    .locals 0
    .param p1, "tokenRequest"    # Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    .line 70
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    .line 71
    return-void
.end method

.method public setWebCloseListener(Lcom/netease/unisdk/gmbridge5/IWebCloseListener;)V
    .locals 0
    .param p1, "webCloseListener"    # Lcom/netease/unisdk/gmbridge5/IWebCloseListener;

    .line 74
    sput-object p1, Lcom/netease/unisdk/gmbridge5/GmBridge;->sWebCloseListener:Lcom/netease/unisdk/gmbridge5/IWebCloseListener;

    .line 75
    return-void
.end method
