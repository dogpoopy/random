.class public final enum Lcom/appsflyer/AFLogger$LogLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AFLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/AFLogger$LogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0007\u001a\u00020\u00028\u0007\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010"
    }
    d2 = {
        "Lcom/appsflyer/AFLogger$LogLevel;",
        "",
        "",
        "AFInAppEventParameterName",
        "I",
        "getLevel",
        "()I",
        "level",
        "p0",
        "<init>",
        "(Ljava/lang/String;II)V",
        "NONE",
        "ERROR",
        "WARNING",
        "INFO",
        "DEBUG",
        "VERBOSE"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum ERROR:Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum INFO:Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum NONE:Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum VERBOSE:Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum WARNING:Lcom/appsflyer/AFLogger$LogLevel;

.field private static final synthetic values:[Lcom/appsflyer/AFLogger$LogLevel;


# instance fields
.field private final AFInAppEventParameterName:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 271
    new-instance v0, Lcom/appsflyer/AFLogger$LogLevel;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    .line 272
    new-instance v0, Lcom/appsflyer/AFLogger$LogLevel;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2, v2}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AFLogger$LogLevel;->ERROR:Lcom/appsflyer/AFLogger$LogLevel;

    .line 273
    new-instance v0, Lcom/appsflyer/AFLogger$LogLevel;

    const/4 v3, 0x2

    const-string v4, "WARNING"

    invoke-direct {v0, v4, v3, v3}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AFLogger$LogLevel;->WARNING:Lcom/appsflyer/AFLogger$LogLevel;

    .line 274
    new-instance v0, Lcom/appsflyer/AFLogger$LogLevel;

    const/4 v4, 0x3

    const-string v5, "INFO"

    invoke-direct {v0, v5, v4, v4}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AFLogger$LogLevel;->INFO:Lcom/appsflyer/AFLogger$LogLevel;

    .line 275
    new-instance v0, Lcom/appsflyer/AFLogger$LogLevel;

    const/4 v5, 0x4

    const-string v6, "DEBUG"

    invoke-direct {v0, v6, v5, v5}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    .line 276
    new-instance v0, Lcom/appsflyer/AFLogger$LogLevel;

    const/4 v6, 0x5

    const-string v7, "VERBOSE"

    invoke-direct {v0, v7, v6, v6}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AFLogger$LogLevel;->VERBOSE:Lcom/appsflyer/AFLogger$LogLevel;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/appsflyer/AFLogger$LogLevel;

    .line 1000
    sget-object v7, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    aput-object v7, v0, v1

    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->ERROR:Lcom/appsflyer/AFLogger$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->WARNING:Lcom/appsflyer/AFLogger$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->INFO:Lcom/appsflyer/AFLogger$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->VERBOSE:Lcom/appsflyer/AFLogger$LogLevel;

    aput-object v1, v0, v6

    .line 276
    sput-object v0, Lcom/appsflyer/AFLogger$LogLevel;->values:[Lcom/appsflyer/AFLogger$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 268
    iput p3, p0, Lcom/appsflyer/AFLogger$LogLevel;->AFInAppEventParameterName:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/AFLogger$LogLevel;
    .locals 1

    const-class v0, Lcom/appsflyer/AFLogger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/AFLogger$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/AFLogger$LogLevel;
    .locals 1

    sget-object v0, Lcom/appsflyer/AFLogger$LogLevel;->values:[Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/AFLogger$LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getLevel()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/appsflyer/AFLogger$LogLevel;->AFInAppEventParameterName:I

    return v0
.end method
