.class public final Lcom/appsflyer/internal/AFd1ySDK$AFa1zSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFd1ySDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AFa1zSDK"
.end annotation


# static fields
.field static final synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1ySDK$AFa1zSDK;

.field private static AFInAppEventType:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appsflyer/internal/AFd1ySDK$AFa1zSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1ySDK$AFa1zSDK;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFd1ySDK$AFa1zSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1ySDK$AFa1zSDK;

    const-wide/16 v0, 0x1f4

    .line 13
    sput-wide v0, Lcom/appsflyer/internal/AFd1ySDK$AFa1zSDK;->AFInAppEventType:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFKeystoreWrapper()J
    .locals 2

    .line 13
    sget-wide v0, Lcom/appsflyer/internal/AFd1ySDK$AFa1zSDK;->AFInAppEventType:J

    return-wide v0
.end method
