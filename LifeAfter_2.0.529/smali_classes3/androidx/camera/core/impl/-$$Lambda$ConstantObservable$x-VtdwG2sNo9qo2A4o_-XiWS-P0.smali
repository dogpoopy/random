.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$ConstantObservable$x-VtdwG2sNo9qo2A4o_-XiWS-P0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/ConstantObservable;

.field public final synthetic f$1:Landroidx/camera/core/impl/Observable$Observer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/ConstantObservable;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/-$$Lambda$ConstantObservable$x-VtdwG2sNo9qo2A4o_-XiWS-P0;->f$0:Landroidx/camera/core/impl/ConstantObservable;

    iput-object p2, p0, Landroidx/camera/core/impl/-$$Lambda$ConstantObservable$x-VtdwG2sNo9qo2A4o_-XiWS-P0;->f$1:Landroidx/camera/core/impl/Observable$Observer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/-$$Lambda$ConstantObservable$x-VtdwG2sNo9qo2A4o_-XiWS-P0;->f$0:Landroidx/camera/core/impl/ConstantObservable;

    iget-object v1, p0, Landroidx/camera/core/impl/-$$Lambda$ConstantObservable$x-VtdwG2sNo9qo2A4o_-XiWS-P0;->f$1:Landroidx/camera/core/impl/Observable$Observer;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ConstantObservable;->lambda$addObserver$0$ConstantObservable(Landroidx/camera/core/impl/Observable$Observer;)V

    return-void
.end method
