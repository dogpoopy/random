.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private mWeakPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ltv/danmaku/ijk/media/player/IjkMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 1354
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1355
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1360
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_12

    .line 1361
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 1367
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_f

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eq v1, v4, :cond_d

    if-eq v1, v3, :cond_c

    const/4 v7, 0x4

    if-eq v1, v7, :cond_b

    if-eq v1, v5, :cond_a

    const/16 v8, 0x63

    const-string v9, ")"

    if-eq v1, v8, :cond_8

    const-string v8, ","

    const/16 v10, 0x64

    if-eq v1, v10, :cond_5

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_11

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    .line 1457
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1453
    :cond_1
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    .line 1454
    invoke-virtual {v0, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnBufferingUpdate(I)V

    goto/16 :goto_0

    .line 1447
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1448
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1449
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    check-cast p1, [I

    .line 1450
    invoke-virtual {v0, v1, v2, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnCaptureComplete(II[I)V

    goto/16 :goto_0

    .line 1420
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x2bc

    if-eq v1, v2, :cond_4

    .line 1421
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnInfo(II)Z

    return-void

    .line 1400
    :cond_5
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    .line 1402
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setCurrentState(I)V

    .line 1404
    :cond_6
    new-instance v1, Ltv/danmaku/ijk/media/player/StatInfo;

    invoke-direct {v1}, Ltv/danmaku/ijk/media/player/StatInfo;-><init>()V

    .line 1405
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getStatInfo(Ltv/danmaku/ijk/media/player/StatInfo;)V

    .line 1407
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xf

    new-array v9, v9, [Ljava/lang/Object;

    .line 1410
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1700(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1800()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v7

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v5

    const/4 v2, 0x6

    iget-object v3, v1, Ltv/danmaku/ijk/media/player/StatInfo;->mServerIp:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x7

    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2000()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0x8

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0xa

    iget-object v1, v1, Ltv/danmaku/ijk/media/player/StatInfo;->mStreamId:Ljava/lang/String;

    aput-object v1, v9, v2

    const/16 v1, 0xb

    aput-object v8, v9, v1

    const/16 v1, 0xc

    .line 1411
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0xd

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0xe

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    const-string v1, "[TRACE] (PLAYER_LOADERROR) sid=%s addr=%s conwait=%d code=%d ver=%d src=%s server=%s version=%s cdn=%s vbr=%d stream=%s uid=%s template_type=%d room_id=%d sub_id=%d"

    .line 1408
    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1412
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sendHttpStat(Ljava/lang/String;)V

    .line 1413
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnError(II)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1414
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnCompletion()V

    .line 1416
    :cond_7
    invoke-static {v0, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    return-void

    .line 1427
    :cond_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_9

    const/4 p1, 0x0

    .line 1428
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnTimedText(Ljava/lang/String;)V

    goto :goto_0

    .line 1430
    :cond_9
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubtitleInfo ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1432
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnTimedText(Ljava/lang/String;)V

    goto :goto_0

    .line 1393
    :cond_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1202(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1394
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1395
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result p1

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v1

    .line 1396
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v3

    .line 1395
    invoke-virtual {v0, p1, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    return-void

    .line 1389
    :cond_b
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnSeekComplete()V

    return-void

    .line 1384
    :cond_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    long-to-int p1, v1

    .line 1385
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnBufferingUpdate(I)V

    return-void

    :cond_d
    if-eqz v0, :cond_e

    .line 1377
    invoke-virtual {v0, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setCurrentState(I)V

    .line 1379
    :cond_e
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnCompletion()V

    .line 1380
    invoke-static {v0, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    return-void

    :cond_f
    if-eqz v0, :cond_10

    .line 1370
    invoke-virtual {v0, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setCurrentState(I)V

    .line 1372
    :cond_10
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnPrepared()V

    :cond_11
    :goto_0
    return-void

    .line 1362
    :cond_12
    :goto_1
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IjkMediaPlayer went away with unhandled events"

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
