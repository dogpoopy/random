.class public Lcom/netease/mrzhna/ScreenShotObserver;
.super Ljava/lang/Object;
.source "ScreenShotObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;
    }
.end annotation


# static fields
.field private static final KEYWORDS_CN:[Ljava/lang/String;

.field private static final KEYWORDS_EN:[Ljava/lang/String;

.field private static final MEDIA_PROJECTIONS:[Ljava/lang/String;

.field private static final MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ScreebShotObserver"


# instance fields
.field private bIsListenering:Z

.field private mContext:Landroid/content/Context;

.field private mExternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

.field private mInternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

.field private mLastScreenShotEventTime:J

.field private final mUIHandler:Landroid/os/Handler;

.field private m_listener:Lcom/netease/mrzhna/IScreenShotListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "datetaken"

    aput-object v5, v1, v4

    .line 28
    sput-object v1, Lcom/netease/mrzhna/ScreenShotObserver;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/String;

    aput-object v3, v6, v2

    aput-object v5, v6, v4

    const-string v3, "width"

    aput-object v3, v6, v0

    const-string v3, "height"

    const/4 v5, 0x3

    aput-object v3, v6, v5

    .line 33
    sput-object v6, Lcom/netease/mrzhna/ScreenShotObserver;->MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "screenshot"

    aput-object v6, v3, v2

    const-string v6, "screen_shot"

    aput-object v6, v3, v4

    const-string v6, "screen-shot"

    aput-object v6, v3, v0

    const-string v0, "screen shot"

    aput-object v0, v3, v5

    const-string v0, "screencapture"

    aput-object v0, v3, v1

    const/4 v0, 0x5

    const-string v1, "screen_capture"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "screen-capture"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "screen capture"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "screencap"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, "screen_cap"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string v1, "screen-cap"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string v1, "screen cap"

    aput-object v1, v3, v0

    .line 41
    sput-object v3, Lcom/netease/mrzhna/ScreenShotObserver;->KEYWORDS_EN:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u622a\u5c4f"

    aput-object v1, v0, v2

    .line 47
    sput-object v0, Lcom/netease/mrzhna/ScreenShotObserver;->KEYWORDS_CN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/mrzhna/IScreenShotListener;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->bIsListenering:Z

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/netease/mrzhna/ScreenShotObserver;->m_listener:Lcom/netease/mrzhna/IScreenShotListener;

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The context must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/ScreenShotObserver;)Lcom/netease/mrzhna/IScreenShotListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->m_listener:Lcom/netease/mrzhna/IScreenShotListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/mrzhna/ScreenShotObserver;Landroid/net/Uri;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/ScreenShotObserver;->handleMediaContentChange(Landroid/net/Uri;)V

    return-void
.end method

.method private static assertInMainThread()V
    .locals 4

    .line 231
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 232
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const/4 v1, 0x3

    .line 235
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call the method must be in main thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkScreenShot(Ljava/lang/String;JII)Z
    .locals 3

    .line 203
    iget-wide p4, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mLastScreenShotEventTime:J

    const/4 v0, 0x0

    cmp-long v1, p2, p4

    if-gez v1, :cond_0

    return v0

    .line 208
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 213
    :cond_1
    sget-object p2, Lcom/netease/mrzhna/ScreenShotObserver;->KEYWORDS_CN:[Ljava/lang/String;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    const-string p5, "ScreebShotObserver"

    const/4 v1, 0x1

    if-ge p4, p3, :cond_3

    aget-object v2, p2, p4

    .line 214
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "screen shot with KEYWORD_CN"

    .line 215
    invoke-static {p5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 220
    sget-object p2, Lcom/netease/mrzhna/ScreenShotObserver;->KEYWORDS_EN:[Ljava/lang/String;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_5

    aget-object v2, p2, p4

    .line 221
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "screen shot with KEYWORD_EN"

    .line 222
    invoke-static {p5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method private handleMediaContentChange(Landroid/net/Uri;)V
    .locals 10

    const/4 v0, 0x0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 142
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-ge v1, v8, :cond_0

    sget-object v1, Lcom/netease/mrzhna/ScreenShotObserver;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/netease/mrzhna/ScreenShotObserver;->MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

    :goto_0
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date_added desc limit 1"

    move-object v3, p1

    .line 140
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "ScreebShotObserver"

    if-nez v0, :cond_2

    :try_start_1
    const-string v1, "Deviant logic."

    .line 149
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 183
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 152
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Cursor no data."

    .line 153
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 183
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_3
    const-string p1, "_data"

    .line 158
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const-string v1, "datetaken"

    .line 159
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 162
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, -0x1

    if-lt v2, v8, :cond_5

    const-string v2, "width"

    .line 163
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v2, "height"

    .line 164
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    .line 168
    :goto_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 p1, 0x0

    if-ltz v3, :cond_6

    if-ltz v2, :cond_6

    .line 173
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 174
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move v8, p1

    move v9, v1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    move-object v4, p0

    .line 178
    invoke-direct/range {v4 .. v9}, Lcom/netease/mrzhna/ScreenShotObserver;->handleMediaRowData(Ljava/lang/String;JII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_7

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 180
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_7

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    .line 183
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void

    :goto_4
    if-eqz v0, :cond_8

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 183
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_8
    throw p1
.end method

.method private handleMediaRowData(Ljava/lang/String;JII)V
    .locals 6

    .line 192
    invoke-direct/range {p0 .. p5}, Lcom/netease/mrzhna/ScreenShotObserver;->checkScreenShot(Ljava/lang/String;JII)Z

    move-result v0

    const-string v1, "; date = "

    const-string v2, " * "

    const-string v3, "; size = "

    const-string v4, "ScreebShotObserver"

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenShot: path = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0, p1, p4, p5}, Lcom/netease/mrzhna/ScreenShotObserver;->onScreenShot(Ljava/lang/String;II)V

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mLastScreenShotEventTime:J

    goto :goto_0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media content changed, but not screenshot: path = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onScreenShot(Ljava/lang/String;II)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 246
    new-instance v1, Lcom/netease/mrzhna/ScreenShotObserver$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/mrzhna/ScreenShotObserver$1;-><init>(Lcom/netease/mrzhna/ScreenShotObserver;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startListen()V
    .locals 4

    .line 80
    iget-boolean v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->bIsListenering:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->bIsListenering:Z

    .line 85
    invoke-static {}, Lcom/netease/mrzhna/ScreenShotObserver;->assertInMainThread()V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mLastScreenShotEventTime:J

    .line 90
    new-instance v0, Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;-><init>(Lcom/netease/mrzhna/ScreenShotObserver;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mInternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    .line 91
    new-instance v0, Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;-><init>(Lcom/netease/mrzhna/ScreenShotObserver;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mExternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    .line 94
    iget-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mInternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    iget-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mExternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen shot listener start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreebShotObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopListen()V
    .locals 3

    .line 104
    iget-boolean v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->bIsListenering:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->bIsListenering:Z

    .line 109
    invoke-static {}, Lcom/netease/mrzhna/ScreenShotObserver;->assertInMainThread()V

    .line 112
    iget-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mInternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mInternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :goto_0
    iput-object v1, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mInternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mExternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    if-eqz v0, :cond_2

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mExternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    :goto_1
    iput-object v1, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mExternalObserver:Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;

    :cond_2
    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcom/netease/mrzhna/ScreenShotObserver;->mLastScreenShotEventTime:J

    return-void
.end method
