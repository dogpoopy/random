.class public interface abstract Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/PurchaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PurchaseValidationCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onResponse(Lcom/appsflyer/internal/components/network/http/ResponseNetwork;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/components/network/http/ResponseNetwork<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
