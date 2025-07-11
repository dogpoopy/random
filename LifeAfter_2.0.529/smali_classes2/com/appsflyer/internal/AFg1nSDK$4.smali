.class final Lcom/appsflyer/internal/AFg1nSDK$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFg1nSDK;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/AFi1xSDK;Lcom/appsflyer/internal/AFd1vSDK;Lcom/appsflyer/internal/AFi1fSDK;Lcom/appsflyer/internal/AFb1zSDK;Lcom/appsflyer/internal/AFg1bSDK;Lcom/appsflyer/internal/AFd1xSDK;Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFh1gSDK;Lcom/appsflyer/internal/AFg1zSDK;Lcom/appsflyer/internal/AFb1gSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFg1sSDK;Lcom/appsflyer/internal/AFd1sSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u0006*\u00020\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ljava/text/SimpleDateFormat;",
        "AFInAppEventParameterName",
        "()Ljava/text/SimpleDateFormat;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AFInAppEventType:Lcom/appsflyer/internal/AFg1nSDK$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appsflyer/internal/AFg1nSDK$4;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1nSDK$4;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFg1nSDK$4;->AFInAppEventType:Lcom/appsflyer/internal/AFg1nSDK$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 1020
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd_HHmmssZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFg1nSDK$4;->AFInAppEventParameterName()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method
