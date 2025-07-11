.class public final Lcom/appsflyer/internal/AFd1dSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFd1jSDK;


# instance fields
.field private final AFInAppEventType:Lcom/appsflyer/internal/AFd1gSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1gSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1gSDK;

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper([BLjava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string p3, ""

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance p3, Lcom/appsflyer/internal/AFd1bSDK;

    const/16 v0, 0x7d0

    invoke-direct {p3, p1, p2, v0}, Lcom/appsflyer/internal/AFd1bSDK;-><init>([BLjava/util/Map;I)V

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFd1mSDK;->AFInAppEventParameterName()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1023
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1gSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventType()Z

    :cond_0
    return-void
.end method
