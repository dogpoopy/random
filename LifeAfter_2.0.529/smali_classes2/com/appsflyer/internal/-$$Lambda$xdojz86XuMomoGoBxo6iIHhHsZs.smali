.class public final synthetic Lcom/appsflyer/internal/-$$Lambda$xdojz86XuMomoGoBxo6iIHhHsZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/appsflyer/internal/AFe1ySDK;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/-$$Lambda$xdojz86XuMomoGoBxo6iIHhHsZs;->f$0:Lcom/appsflyer/internal/AFe1ySDK;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/internal/-$$Lambda$xdojz86XuMomoGoBxo6iIHhHsZs;->f$0:Lcom/appsflyer/internal/AFe1ySDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1mSDK;->AFInAppEventParameterName()Z

    return-void
.end method
