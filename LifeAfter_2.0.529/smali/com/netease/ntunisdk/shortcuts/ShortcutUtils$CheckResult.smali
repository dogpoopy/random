.class Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/shortcuts/ShortcutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckResult"
.end annotation


# static fields
.field public static CHECK_SUCCESS:Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;


# instance fields
.field final code:I

.field final success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 239
    new-instance v0, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;-><init>(ZI)V

    sput-object v0, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;->CHECK_SUCCESS:Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-boolean p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;->success:Z

    .line 249
    iput p2, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;->code:I

    return-void
.end method

.method public static newCheckFailure(I)Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;
    .locals 2

    .line 244
    new-instance v0, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;-><init>(ZI)V

    return-object v0
.end method
