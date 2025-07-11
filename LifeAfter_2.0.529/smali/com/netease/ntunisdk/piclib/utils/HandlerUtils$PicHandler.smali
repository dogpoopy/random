.class public Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;
.super Landroid/os/Handler;
.source "HandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/utils/HandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PicHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PicHandler"

.field public static instance:Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;


# instance fields
.field private final fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    new-instance p1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    invoke-direct {p1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;->fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;
    .locals 3

    .line 34
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;->instance:Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;->instance:Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandlerThread;

    const-string v2, "PicHandlerThread"

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandlerThread;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandlerThread;->start()V

    .line 39
    new-instance v2, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;->instance:Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;->instance:Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 53
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;->fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;->deleteFiles(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage -> e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PicHandler"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
