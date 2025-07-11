.class public Ltv/danmaku/ijk/media/player/utils/SNUtils$GetUtilTask;
.super Landroid/os/AsyncTask;
.source "SNUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/utils/SNUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetUtilTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 230
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/utils/SNUtils$GetUtilTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 235
    aget-object p1, p1, v1

    if-nez p1, :cond_1

    return-object v0

    .line 238
    :cond_1
    :try_start_0
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/utils/SPUtils;->Init(Landroid/content/Context;)V

    .line 239
    invoke-static {}, Ltv/danmaku/ijk/media/player/utils/SNUtils;->access$000()V

    .line 240
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->InitUnisdkDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method
