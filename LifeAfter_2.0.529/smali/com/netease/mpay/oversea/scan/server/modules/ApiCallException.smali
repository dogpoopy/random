.class public Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
.super Ljava/lang/Exception;
.source "ApiCallException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException$ApiNetworkException;
    }
.end annotation


# static fields
.field protected static final ERR_DEFAULT:I = 0x2711

.field protected static final ERR_NETWORK:I = 0x2712

.field private static final serialVersionUID:J = -0x5b8d75c333afea66L


# instance fields
.field private error:Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

.field public errorCode:I


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/scan/server/modules/ApiError;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;->error:Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    const/16 p1, 0x2711

    .line 18
    iput p1, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getError()Lcom/netease/mpay/oversea/scan/server/modules/ApiError;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;->error:Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    return-object v0
.end method
