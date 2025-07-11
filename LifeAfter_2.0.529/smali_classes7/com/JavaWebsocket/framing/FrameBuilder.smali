.class public interface abstract Lcom/JavaWebsocket/framing/FrameBuilder;
.super Ljava/lang/Object;
.source "FrameBuilder.java"

# interfaces
.implements Lcom/JavaWebsocket/framing/Framedata;


# virtual methods
.method public abstract setFin(Z)V
.end method

.method public abstract setOptcode(Lcom/JavaWebsocket/framing/Framedata$Opcode;)V
.end method

.method public abstract setPayload(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract setTransferemasked(Z)V
.end method
