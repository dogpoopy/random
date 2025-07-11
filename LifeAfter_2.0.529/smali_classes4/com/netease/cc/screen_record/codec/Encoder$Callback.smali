.class public interface abstract Lcom/netease/cc/screen_record/codec/Encoder$Callback;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V
.end method

.method public abstract onNotifyErrorCode(Lcom/netease/cc/screen_record/codec/Encoder;I)V
.end method
