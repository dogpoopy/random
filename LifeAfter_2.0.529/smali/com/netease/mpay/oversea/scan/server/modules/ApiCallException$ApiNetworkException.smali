.class public final Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException$ApiNetworkException;
.super Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
.source "ApiCallException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiNetworkException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x59fab06c00bdd8f1L


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/scan/server/modules/ApiError;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;-><init>(Lcom/netease/mpay/oversea/scan/server/modules/ApiError;)V

    const/16 p1, 0x2712

    .line 30
    iput p1, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException$ApiNetworkException;->errorCode:I

    return-void
.end method
