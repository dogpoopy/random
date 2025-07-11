.class public Lcom/JavaWebsocket/exceptions/InvalidDataException;
.super Ljava/lang/Exception;
.source "InvalidDataException.java"


# static fields
.field private static final serialVersionUID:J = 0x33ca2ae9af8edac6L


# instance fields
.field private closecode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    iput p1, p0, Lcom/JavaWebsocket/exceptions/InvalidDataException;->closecode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lcom/JavaWebsocket/exceptions/InvalidDataException;->closecode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 57
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    iput p1, p0, Lcom/JavaWebsocket/exceptions/InvalidDataException;->closecode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 45
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 46
    iput p1, p0, Lcom/JavaWebsocket/exceptions/InvalidDataException;->closecode:I

    return-void
.end method


# virtual methods
.method public getCloseCode()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/JavaWebsocket/exceptions/InvalidDataException;->closecode:I

    return v0
.end method
