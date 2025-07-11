.class public Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;
.super Ljava/lang/Exception;
.source "FetchProtocolException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "fetch protocol failed!"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
