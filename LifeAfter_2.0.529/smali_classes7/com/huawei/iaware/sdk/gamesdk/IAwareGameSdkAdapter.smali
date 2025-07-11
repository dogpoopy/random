.class public Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;
.super Ljava/lang/Object;
.source "IAwareGameSdkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;
    }
.end annotation


# static fields
.field private static final GAME_SDK_DATA_EVENT_ID:I = 0xbbd

.field private static INTERFACE_ID_REGISTER_GAME_CALLBACK:I = 0x4

.field private static INTERFACE_ID_REPORT_DATA:I = 0x1

.field private static final mDataFromSDK:I = 0x1


# instance fields
.field private isRegistedSuccess:Z

.field private mGameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

.field private mPackageName:Ljava/lang/String;

.field private mSdkCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

.field private myPid:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mGameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    .line 18
    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mSdkCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->myPid:I

    .line 21
    iput-boolean v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    return p0
.end method

.method static synthetic access$100(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mGameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    return-object p0
.end method

.method private registerSdkCallback(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;)Z
    .locals 2

    .line 65
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 66
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 68
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 70
    sget p1, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->INTERFACE_ID_REGISTER_GAME_CALLBACK:I

    invoke-static {p1, v0, v1}, Landroid/rms/iaware/IAwareSdkCore;->handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 72
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 75
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public registerGameCallback(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;)Z
    .locals 2

    const-string v0, "IAwareGameSdkAdapter"

    const-string v1, "registerGameCallback"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mGameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    .line 32
    iput-object p1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mPackageName:Ljava/lang/String;

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    iput p2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->myPid:I

    .line 34
    iget-object p2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mGameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mSdkCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

    if-nez p2, :cond_0

    .line 35
    new-instance p2, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

    invoke-direct {p2, p0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;-><init>(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)V

    iput-object p2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mSdkCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

    const-string p2, "new SDKCallback"

    .line 36
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mSdkCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

    invoke-direct {p0, p1, p2}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->registerSdkCallback(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    .line 39
    :cond_0
    iget-boolean p1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    return p1
.end method

.method public reportData(Ljava/lang/String;)V
    .locals 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportData package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isRegistedSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAwareGameSdkAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-boolean v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->myPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xbbd

    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const-wide/16 v2, 0x0

    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    sget p1, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->INTERFACE_ID_REPORT_DATA:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroid/rms/iaware/IAwareSdkCore;->handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method
