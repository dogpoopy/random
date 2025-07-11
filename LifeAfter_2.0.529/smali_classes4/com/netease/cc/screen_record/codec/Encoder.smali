.class interface abstract Lcom/netease/cc/screen_record/codec/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/screen_record/codec/Encoder$Callback;
    }
.end annotation


# virtual methods
.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setCallback(Lcom/netease/cc/screen_record/codec/Encoder$Callback;)V
.end method

.method public abstract stop()V
.end method
