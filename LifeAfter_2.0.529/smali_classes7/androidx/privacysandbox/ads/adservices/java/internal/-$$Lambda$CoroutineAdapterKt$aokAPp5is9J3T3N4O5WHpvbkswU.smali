.class public final synthetic Landroidx/privacysandbox/ads/adservices/java/internal/-$$Lambda$CoroutineAdapterKt$aokAPp5is9J3T3N4O5WHpvbkswU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/Deferred;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/java/internal/-$$Lambda$CoroutineAdapterKt$aokAPp5is9J3T3N4O5WHpvbkswU;->f$0:Lkotlinx/coroutines/Deferred;

    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/java/internal/-$$Lambda$CoroutineAdapterKt$aokAPp5is9J3T3N4O5WHpvbkswU;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/java/internal/-$$Lambda$CoroutineAdapterKt$aokAPp5is9J3T3N4O5WHpvbkswU;->f$0:Lkotlinx/coroutines/Deferred;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/java/internal/-$$Lambda$CoroutineAdapterKt$aokAPp5is9J3T3N4O5WHpvbkswU;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->lambda$aokAPp5is9J3T3N4O5WHpvbkswU(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
