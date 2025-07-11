.class public Lcom/netease/ntunisdk/core/model/ApiCallException;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/model/ApiCallException$ApiNetworkException;
    }
.end annotation


# static fields
.field protected static final ERR_DEFAULT:I = 0x2711

.field protected static final ERR_NETWORK:I = 0x2712


# instance fields
.field private final a:Lcom/netease/ntunisdk/core/model/ApiError;

.field public errorCode:I


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/core/model/ApiError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/model/ApiCallException;->a:Lcom/netease/ntunisdk/core/model/ApiError;

    const/16 p1, 0x2711

    iput p1, p0, Lcom/netease/ntunisdk/core/model/ApiCallException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getError()Lcom/netease/ntunisdk/core/model/ApiError;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/ApiCallException;->a:Lcom/netease/ntunisdk/core/model/ApiError;

    return-object v0
.end method
