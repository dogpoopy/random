.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$0Fu5GiwvhImRmuM0XnUjyC-vdns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/LiveDataObservable;

.field public final synthetic f$1:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$0Fu5GiwvhImRmuM0XnUjyC-vdns;->f$0:Landroidx/camera/core/impl/LiveDataObservable;

    iput-object p2, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$0Fu5GiwvhImRmuM0XnUjyC-vdns;->f$1:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$0Fu5GiwvhImRmuM0XnUjyC-vdns;->f$0:Landroidx/camera/core/impl/LiveDataObservable;

    iget-object v1, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$0Fu5GiwvhImRmuM0XnUjyC-vdns;->f$1:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/LiveDataObservable;->lambda$removeObserver$3$LiveDataObservable(Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;)V

    return-void
.end method
