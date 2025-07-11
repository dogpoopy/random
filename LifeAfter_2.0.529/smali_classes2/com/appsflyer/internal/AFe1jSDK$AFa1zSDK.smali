.class public final Lcom/appsflyer/internal/AFe1jSDK$AFa1zSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFe1jSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AFa1zSDK"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R \u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\n\u001a\u00020\u0003X\u0087\u0002\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\tR\u0012\u0010\u000c\u001a\u00020\u0003X\u0087\u0002\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\tR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\r@\u0007X\u0087\n\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u000b\u0010\u0010"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFe1jSDK$AFa1zSDK;",
        "",
        "",
        "",
        "unregisterClient",
        "Ljava/util/List;",
        "AFKeystoreWrapper",
        "()Ljava/util/List;",
        "valueOf",
        "Ljava/lang/String;",
        "values",
        "AFInAppEventParameterName",
        "AFInAppEventType",
        "Lcom/appsflyer/internal/AFe1gSDK;",
        "AFLogger",
        "Lcom/appsflyer/internal/AFe1gSDK;",
        "(Lcom/appsflyer/internal/AFe1gSDK;)V",
        "<init>",
        "()V"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFe1jSDK$AFa1zSDK;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName(Lcom/appsflyer/internal/AFe1gSDK;)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/appsflyer/internal/AFe1jSDK;->values(Lcom/appsflyer/internal/AFe1gSDK;)V

    return-void
.end method

.method public static AFKeystoreWrapper()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/appsflyer/internal/AFe1jSDK;->AFKeystoreWrapper()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
