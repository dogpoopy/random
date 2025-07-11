.class public Lcom/netease/ntunisdk/core/logs/LogConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/logs/LogConfig$LogLevel;,
        Lcom/netease/ntunisdk/core/logs/LogConfig$LogTarget;
    }
.end annotation


# static fields
.field public static final LOG_TARGET_CONSOLE:I = 0x0

.field public static final LOG_TARGET_FILE:I = 0x1

.field public static final LOG_TARGET_REMOTE:I = 0x2

.field public static final TYPE_DEBUG_TEXT:Ljava/lang/String; = "DEBUG"

.field public static final TYPE_ERROR_TEXT:Ljava/lang/String; = "ERROR"

.field public static final TYPE_INFO_TEXT:Ljava/lang/String; = "INFO"

.field public static final TYPE_WARN_TEXT:Ljava/lang/String; = "WARN"


# instance fields
.field public final conversionPattern:Ljava/lang/String;

.field public final level:I

.field public final target:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/ntunisdk/core/logs/LogConfig;->level:I

    iput p2, p0, Lcom/netease/ntunisdk/core/logs/LogConfig;->target:I

    iput-object p3, p0, Lcom/netease/ntunisdk/core/logs/LogConfig;->conversionPattern:Ljava/lang/String;

    return-void
.end method

.method static a()Lcom/netease/ntunisdk/core/logs/LogConfig;
    .locals 4

    new-instance v0, Lcom/netease/ntunisdk/core/logs/LogConfig;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "[%p-%l-%c]-#%t:%m"

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/ntunisdk/core/logs/LogConfig;-><init>(IILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public wrapperLog(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const-string p1, "INFO"

    goto :goto_0

    :cond_0
    const-string p1, "DEBUG"

    goto :goto_0

    :cond_1
    const-string p1, "WARN"

    goto :goto_0

    :cond_2
    const-string p1, "ERROR"

    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "[%s]:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
