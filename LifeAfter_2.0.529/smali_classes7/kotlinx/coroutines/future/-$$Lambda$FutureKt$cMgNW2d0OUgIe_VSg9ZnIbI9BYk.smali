.class public final synthetic Lkotlinx/coroutines/future/-$$Lambda$FutureKt$cMgNW2d0OUgIe_VSg9ZnIbI9BYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/future/-$$Lambda$FutureKt$cMgNW2d0OUgIe_VSg9ZnIbI9BYk;->f$0:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/future/-$$Lambda$FutureKt$cMgNW2d0OUgIe_VSg9ZnIbI9BYk;->f$0:Lkotlin/jvm/functions/Function2;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/future/FutureKt;->lambda$cMgNW2d0OUgIe_VSg9ZnIbI9BYk(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
