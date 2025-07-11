.class public final Lcom/netease/ntunisdk/core/model/ApiCallException$ApiNetworkException;
.super Lcom/netease/ntunisdk/core/model/ApiCallException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/model/ApiCallException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiNetworkException"
.end annotation


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/core/model/ApiError;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/core/model/ApiCallException;-><init>(Lcom/netease/ntunisdk/core/model/ApiError;)V

    const/16 v0, 0x2712

    iput v0, p0, Lcom/netease/ntunisdk/core/model/ApiCallException$ApiNetworkException;->errorCode:I

    sget-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

    iput-object v0, p1, Lcom/netease/ntunisdk/core/model/ApiError;->alertType:Lcom/netease/ntunisdk/core/model/AlertType;

    return-void
.end method
