.class public interface abstract Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;
.super Ljava/lang/Object;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/ScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onEvent(ILorg/json/JSONObject;)V
.end method

.method public abstract onRecording(J)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop(Ljava/lang/Throwable;)V
.end method
