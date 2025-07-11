.class public Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;
.super Lcom/JavaWebsocket/exceptions/InvalidDataException;
.source "InvalidHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = -0x13cc1100e3e186e4L


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3ea

    .line 21
    invoke-direct {p0, v0}, Lcom/JavaWebsocket/exceptions/InvalidDataException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3ea

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/JavaWebsocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x3ea

    .line 33
    invoke-direct {p0, v0, p1, p2}, Lcom/JavaWebsocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x3ea

    .line 55
    invoke-direct {p0, v0, p1}, Lcom/JavaWebsocket/exceptions/InvalidDataException;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method
