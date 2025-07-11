.class public interface abstract Lcom/JavaWebsocket/framing/Framedata;
.super Ljava/lang/Object;
.source "Framedata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JavaWebsocket/framing/Framedata$Opcode;
    }
.end annotation


# virtual methods
.method public abstract append(Lcom/JavaWebsocket/framing/Framedata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidFrameException;
        }
    .end annotation
.end method

.method public abstract getOpcode()Lcom/JavaWebsocket/framing/Framedata$Opcode;
.end method

.method public abstract getPayloadData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getTransfereMasked()Z
.end method

.method public abstract isFin()Z
.end method
