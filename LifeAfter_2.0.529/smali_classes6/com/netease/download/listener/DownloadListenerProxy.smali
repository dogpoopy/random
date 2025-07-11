.class public Lcom/netease/download/listener/DownloadListenerProxy;
.super Ljava/lang/Object;
.source "DownloadListenerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadListenerCore"

.field private static volatile mDownloadCancelFileCount:I

.field private static volatile mDownloadFailFileCount:I

.field private static mDownloadListenerHandler:Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

.field public static mFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mFileName:Ljava/lang/String;

.field private static mFilePath:Ljava/lang/String;

.field public static mFinishFilePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile mHasDownloadSize:J

.field public static volatile mHasFinishFileCount:I

.field private static mListener:Lcom/netease/download/listener/DownloadListener;

.field public static volatile mMergeTotalSize:J

.field private static volatile mPreCallBackTime:J

.field public static volatile mTotalFileCount:I

.field public static volatile mTotalSize:J

.field private static sDownloadListenProxy:Lcom/netease/download/listener/DownloadListenerProxy;

.field private static sObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->sObject:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFinishFilePathList:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    .line 70
    sput-wide v0, Lcom/netease/download/listener/DownloadListenerProxy;->mPreCallBackTime:J

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFileMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 75
    sput-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFileName:Ljava/lang/String;

    .line 76
    sput-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    sput-object p0, Lcom/netease/download/listener/DownloadListenerProxy;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    sput-object p0, Lcom/netease/download/listener/DownloadListenerProxy;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()J
    .locals 2

    .line 35
    sget-wide v0, Lcom/netease/download/listener/DownloadListenerProxy;->mPreCallBackTime:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0

    .line 35
    sput-wide p0, Lcom/netease/download/listener/DownloadListenerProxy;->mPreCallBackTime:J

    return-wide p0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 35
    sget v0, Lcom/netease/download/listener/DownloadListenerProxy;->mDownloadFailFileCount:I

    return v0
.end method

.method static synthetic access$408()I
    .locals 2

    .line 35
    sget v0, Lcom/netease/download/listener/DownloadListenerProxy;->mDownloadFailFileCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/netease/download/listener/DownloadListenerProxy;->mDownloadFailFileCount:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 35
    sget v0, Lcom/netease/download/listener/DownloadListenerProxy;->mDownloadCancelFileCount:I

    return v0
.end method

.method static synthetic access$508()I
    .locals 2

    .line 35
    sget v0, Lcom/netease/download/listener/DownloadListenerProxy;->mDownloadCancelFileCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/netease/download/listener/DownloadListenerProxy;->mDownloadCancelFileCount:I

    return v0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .line 35
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->sObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700()Lcom/netease/download/listener/DownloadListener;
    .locals 1

    .line 35
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    return-object v0
.end method

.method public static getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;
    .locals 3

    .line 104
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mDownloadListenerHandler:Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;-><init>(Landroid/os/Looper;Lcom/netease/download/listener/DownloadListenerProxy$1;)V

    sput-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mDownloadListenerHandler:Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    .line 108
    :cond_0
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mDownloadListenerHandler:Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    return-object v0
.end method

.method public static getInstances()Lcom/netease/download/listener/DownloadListenerProxy;
    .locals 1

    .line 84
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->sDownloadListenProxy:Lcom/netease/download/listener/DownloadListenerProxy;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-direct {v0}, Lcom/netease/download/listener/DownloadListenerProxy;-><init>()V

    sput-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->sDownloadListenProxy:Lcom/netease/download/listener/DownloadListenerProxy;

    .line 86
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    .line 89
    :cond_0
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->sDownloadListenProxy:Lcom/netease/download/listener/DownloadListenerProxy;

    return-object v0
.end method

.method public static getmHasFinishFileCount()J
    .locals 2

    .line 137
    sget v0, Lcom/netease/download/listener/DownloadListenerProxy;->mHasFinishFileCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getmMergeTotalSize()J
    .locals 2

    .line 153
    sget-wide v0, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J

    return-wide v0
.end method

.method public static getmTotalFileCount()I
    .locals 1

    .line 129
    sget v0, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    return v0
.end method

.method public static getmTotalSize()J
    .locals 2

    .line 145
    sget-wide v0, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    return-wide v0
.end method

.method private reset()V
    .locals 1

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mFinishFilePathList:Ljava/util/ArrayList;

    return-void
.end method

.method public static setmMergeTotalSize(J)V
    .locals 0

    .line 157
    sput-wide p0, Lcom/netease/download/listener/DownloadListenerProxy;->mMergeTotalSize:J

    return-void
.end method

.method public static setmTotalFileCount(I)V
    .locals 0

    .line 133
    sput p0, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    return-void
.end method

.method public static setmTotalSize(J)V
    .locals 0

    .line 149
    sput-wide p0, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 121
    sput-wide v0, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    .line 122
    sput-wide v0, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    const/4 v0, 0x0

    .line 123
    sput v0, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    .line 124
    sput v0, Lcom/netease/download/listener/DownloadListenerProxy;->mHasFinishFileCount:I

    return-void
.end method

.method public getDownloadListener()Lcom/netease/download/listener/DownloadListener;
    .locals 1

    .line 99
    sget-object v0, Lcom/netease/download/listener/DownloadListenerProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    return-object v0
.end method

.method public declared-synchronized getHasDownloadSize()J
    .locals 2

    monitor-enter p0

    .line 117
    :try_start_0
    sget-wide v0, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lcom/netease/download/listener/DownloadListener;)V
    .locals 2

    const-string v0, "DownloadListenerCore"

    const-string v1, "\u521d\u59cb\u5316\u56de\u8c03\u76d1\u542c\u5668"

    .line 93
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sput-object p1, Lcom/netease/download/listener/DownloadListenerProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    .line 95
    invoke-direct {p0}, Lcom/netease/download/listener/DownloadListenerProxy;->reset()V

    return-void
.end method
