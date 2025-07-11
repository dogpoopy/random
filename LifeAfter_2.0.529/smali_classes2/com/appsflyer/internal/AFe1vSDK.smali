.class public final Lcom/appsflyer/internal/AFe1vSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1sSDK;

.field final values:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFe1sSDK;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1vSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1sSDK;

    .line 17
    iput-object p2, p0, Lcom/appsflyer/internal/AFe1vSDK;->values:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
