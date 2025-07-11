.class final synthetic Lcom/appsflyer/internal/AFf1kSDK$5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFf1kSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic valueOf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    invoke-static {}, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->values()[Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appsflyer/internal/AFf1kSDK$5;->valueOf:[I

    :try_start_0
    sget-object v0, Lcom/appsflyer/internal/AFf1kSDK$5;->valueOf:[I

    sget-object v1, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/appsflyer/internal/AFf1kSDK$5;->valueOf:[I

    sget-object v1, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
