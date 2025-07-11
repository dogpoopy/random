.class public final synthetic Lkotlinx/coroutines/future/-$$Lambda$FutureKt$fyhs1ohzwEwbEqWUL9pjUeRyd8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/Job;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/future/-$$Lambda$FutureKt$fyhs1ohzwEwbEqWUL9pjUeRyd8k;->f$0:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/future/-$$Lambda$FutureKt$fyhs1ohzwEwbEqWUL9pjUeRyd8k;->f$0:Lkotlinx/coroutines/Job;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/future/FutureKt;->lambda$fyhs1ohzwEwbEqWUL9pjUeRyd8k(Lkotlinx/coroutines/Job;Ljava/lang/Object;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
