.class public interface abstract Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;
.super Ljava/lang/Object;
.source "TrimVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/TrimVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrimVideoListener"
.end annotation


# virtual methods
.method public abstract onTranscodeCanceled()V
.end method

.method public abstract onTranscodeCompleted(I)V
.end method

.method public abstract onTranscodeFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onTranscodeProgress(D)V
.end method
