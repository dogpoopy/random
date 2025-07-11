.class public final synthetic Lcom/appsflyer/internal/AFi1tSDK$AFa1vSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFi1tSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "AFa1vSDK"
.end annotation


# static fields
.field public static final synthetic valueOf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/appsflyer/internal/AFi1rSDK;->values()[Lcom/appsflyer/internal/AFi1rSDK;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/appsflyer/internal/AFi1rSDK;->valueOf:Lcom/appsflyer/internal/AFi1rSDK;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFi1rSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1rSDK;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/appsflyer/internal/AFi1tSDK$AFa1vSDK;->valueOf:[I

    return-void
.end method
