.class final Lcom/appsflyer/internal/AFd1kSDK$3;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFd1kSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 498
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    return-void
.end method

.method private AFInAppEventParameterName(Ljava/lang/Runnable;)Z
    .locals 1

    .line 501
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 498
    check-cast p1, Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1kSDK$3;->AFInAppEventParameterName(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
