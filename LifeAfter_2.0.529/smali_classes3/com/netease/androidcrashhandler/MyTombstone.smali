.class public Lcom/netease/androidcrashhandler/MyTombstone;
.super Ljava/lang/Object;
.source "MyTombstone.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field private static sMyTombstone:Lcom/netease/androidcrashhandler/MyTombstone;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/MyTombstone;
    .locals 1

    .line 26
    sget-object v0, Lcom/netease/androidcrashhandler/MyTombstone;->sMyTombstone:Lcom/netease/androidcrashhandler/MyTombstone;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/netease/androidcrashhandler/MyTombstone;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/MyTombstone;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/MyTombstone;->sMyTombstone:Lcom/netease/androidcrashhandler/MyTombstone;

    .line 30
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/MyTombstone;->sMyTombstone:Lcom/netease/androidcrashhandler/MyTombstone;

    return-object v0
.end method

.method private getLastTimeExitReasonFile(Landroid/content/Context;Ljava/lang/String;IJI)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const-string v1, "trace"

    .line 51
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_9

    if-eqz p1, :cond_9

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getLastTimeCrashTombstone] start pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "activity"

    .line 53
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez p3, :cond_0

    .line 56
    invoke-virtual {v2, v3, p3, v4}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v4, v4}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    .line 60
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getLastTimeCrashTombstone] list:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 62
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_9

    .line 63
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getLastTimeCrashTombstone] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v5

    if-ne v5, p6, :cond_8

    const-wide/16 v5, 0x0

    cmp-long p1, p4, v5

    if-lez p1, :cond_1

    .line 66
    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v5, p4

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    const-wide/16 p5, 0x7530

    cmp-long p1, p3, p5

    if-lez p1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "[getLastTimeCrashTombstone] match"

    .line 70
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 75
    :try_start_1
    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p3, 0x400

    :try_start_2
    new-array p3, p3, [B

    .line 78
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    :goto_2
    :try_start_3
    invoke-virtual {p2, p3}, Ljava/io/InputStream;->read([B)I

    move-result p5

    if-lez p5, :cond_2

    .line 80
    invoke-virtual {p4, p3, v4, p5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 92
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catch_0
    move-exception p2

    .line 94
    :try_start_5
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 100
    :cond_3
    :goto_3
    :try_start_6
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 101
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catch_1
    move-exception p2

    .line 103
    :try_start_7
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[getLastTimeCrashTombstone] copy finish:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    return-object p1

    :catchall_0
    move-exception p3

    goto :goto_5

    :catchall_1
    move-exception p3

    move-object p4, v3

    :goto_5
    move-object v3, p2

    goto :goto_6

    :catchall_2
    move-exception p3

    move-object p4, v3

    .line 84
    :goto_6
    :try_start_8
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const-string p1, "[getLastTimeCrashTombstone] get tombstone fail"

    .line 86
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_4

    .line 92
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_7

    :catch_2
    move-exception p1

    .line 94
    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_4
    :goto_7
    if-eqz p4, :cond_5

    .line 100
    :try_start_b
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 101
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_8

    :catch_3
    move-exception p1

    .line 103
    :try_start_c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_5
    :goto_8
    return-object v0

    :catchall_3
    move-exception p1

    if-eqz v3, :cond_6

    .line 92
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_9

    :catch_4
    move-exception p2

    .line 94
    :try_start_e
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_6
    :goto_9
    if-eqz p4, :cond_7

    .line 100
    :try_start_f
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 101
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_a

    :catch_5
    move-exception p2

    .line 103
    :try_start_10
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    :cond_7
    :goto_a
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :catchall_4
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    return-object v0
.end method


# virtual methods
.method public getLastTimeAnrFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".trace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p2, v1, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x6

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/netease/androidcrashhandler/MyTombstone;->getLastTimeExitReasonFile(Landroid/content/Context;Ljava/lang/String;IJI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getLastTimeCrashTombstone(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 9

    .line 34
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".tombstone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p2, v1, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x5

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/netease/androidcrashhandler/MyTombstone;->getLastTimeExitReasonFile(Landroid/content/Context;Ljava/lang/String;IJI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method
