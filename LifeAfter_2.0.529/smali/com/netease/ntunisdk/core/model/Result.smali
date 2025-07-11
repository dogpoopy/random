.class public final Lcom/netease/ntunisdk/core/model/Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public errCode:I

.field public errData:Lcom/netease/ntunisdk/core/model/ApiError;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fail(ILcom/netease/ntunisdk/core/model/ApiError;)Lcom/netease/ntunisdk/core/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netease/ntunisdk/core/model/ApiError;",
            ")",
            "Lcom/netease/ntunisdk/core/model/Result<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/model/Result;->success:Z

    iput p1, p0, Lcom/netease/ntunisdk/core/model/Result;->errCode:I

    iput-object p2, p0, Lcom/netease/ntunisdk/core/model/Result;->errData:Lcom/netease/ntunisdk/core/model/ApiError;

    return-object p0
.end method

.method public final success(Ljava/lang/Object;)Lcom/netease/ntunisdk/core/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/netease/ntunisdk/core/model/Result<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/model/Result;->success:Z

    iput-object p1, p0, Lcom/netease/ntunisdk/core/model/Result;->data:Ljava/lang/Object;

    return-object p0
.end method
