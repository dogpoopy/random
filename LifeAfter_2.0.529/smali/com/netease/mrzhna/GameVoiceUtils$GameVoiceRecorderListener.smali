.class public Lcom/netease/mrzhna/GameVoiceUtils$GameVoiceRecorderListener;
.super Ljava/lang/Object;
.source "GameVoiceUtils.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/GameVoiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameVoiceRecorderListener"
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final INTERRUPT:I = 0x5

.field public static final MAX_DURATION:I = 0x4

.field public static final MAX_FILESIZE:I = 0x3

.field public static final PAUSE:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    const-string p1, "GameVoiceUtils"

    const-string p2, "cocos2d-x: record receive error msg."

    .line 194
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->stopRecord()V

    const/4 p1, 0x1

    .line 196
    invoke-static {p1}, Lcom/netease/mrzhna/GameVoiceUtils;->onRecorderListener(I)V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const-string p1, "GameVoiceUtils"

    const-string p3, "cocos2d-x: record receive info msg."

    .line 200
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->stopRecord()V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/16 p3, 0x320

    if-eq p2, p3, :cond_1

    const/16 p3, 0x321

    if-eq p2, p3, :cond_0

    .line 213
    invoke-static {p1}, Lcom/netease/mrzhna/GameVoiceUtils;->onRecorderListener(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 210
    invoke-static {p1}, Lcom/netease/mrzhna/GameVoiceUtils;->onRecorderListener(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 207
    invoke-static {p1}, Lcom/netease/mrzhna/GameVoiceUtils;->onRecorderListener(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    .line 204
    invoke-static {p1}, Lcom/netease/mrzhna/GameVoiceUtils;->onRecorderListener(I)V

    :goto_0
    return-void
.end method
