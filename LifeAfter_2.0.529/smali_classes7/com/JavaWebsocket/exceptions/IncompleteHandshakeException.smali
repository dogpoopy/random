.class public Lcom/JavaWebsocket/exceptions/IncompleteHandshakeException;
.super Ljava/lang/RuntimeException;
.source "IncompleteHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = 0x6db9dfe70a9994e4L


# instance fields
.field private preferedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/JavaWebsocket/exceptions/IncompleteHandshakeException;->preferedSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 24
    iput p1, p0, Lcom/JavaWebsocket/exceptions/IncompleteHandshakeException;->preferedSize:I

    return-void
.end method


# virtual methods
.method public getPreferedSize()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/JavaWebsocket/exceptions/IncompleteHandshakeException;->preferedSize:I

    return v0
.end method
