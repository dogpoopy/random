.class Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;
.super Ljava/lang/Object;
.source "AuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/auth/AuthUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckResult"
.end annotation


# static fields
.field public static CHECK_SUCCESS:Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;


# instance fields
.field final code:I

.field final success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 167
    new-instance v0, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;-><init>(ZI)V

    sput-object v0, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;->CHECK_SUCCESS:Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;->success:Z

    .line 177
    iput p2, p0, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;->code:I

    return-void
.end method

.method public static newCheckFailure(I)Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;
    .locals 2

    .line 172
    new-instance v0, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckResult;-><init>(ZI)V

    return-object v0
.end method
