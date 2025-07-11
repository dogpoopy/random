.class public Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;
.super Ljava/lang/Object;
.source "IAwareGameSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;
    }
.end annotation


# instance fields
.field private gameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

.field private mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

.field private mPhoneInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mPhoneInfo:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    .line 13
    new-instance v0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;

    invoke-direct {v0, p0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;-><init>(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;)V

    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->gameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;)Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mPhoneInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mPhoneInfo:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getPhoneInfo()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhoneInfo, level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mPhoneInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAwareGameSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mPhoneInfo:Ljava/lang/String;

    return-object v0
.end method

.method public registerGame(Ljava/lang/String;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->gameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->registerGame(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;)Z

    move-result p1

    return p1
.end method

.method public registerGame(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;)Z
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerGame, packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAwareGameSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    return v0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    if-nez v1, :cond_2

    .line 37
    new-instance v0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-direct {v0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;-><init>()V

    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->registerGameCallback(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public updateGameAppInfo(Ljava/lang/String;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateGameAppInfo, json: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAwareGameSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0, p1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->reportData(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
