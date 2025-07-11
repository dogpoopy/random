.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$LiveDataObserverAdapter$zk7E9HE-YKnKodkIktZDHfMDQhY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

.field public final synthetic f$1:Landroidx/camera/core/impl/LiveDataObservable$Result;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;Landroidx/camera/core/impl/LiveDataObservable$Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$LiveDataObserverAdapter$zk7E9HE-YKnKodkIktZDHfMDQhY;->f$0:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    iput-object p2, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$LiveDataObserverAdapter$zk7E9HE-YKnKodkIktZDHfMDQhY;->f$1:Landroidx/camera/core/impl/LiveDataObservable$Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$LiveDataObserverAdapter$zk7E9HE-YKnKodkIktZDHfMDQhY;->f$0:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    iget-object v1, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$LiveDataObserverAdapter$zk7E9HE-YKnKodkIktZDHfMDQhY;->f$1:Landroidx/camera/core/impl/LiveDataObservable$Result;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->lambda$onChanged$0$LiveDataObservable$LiveDataObserverAdapter(Landroidx/camera/core/impl/LiveDataObservable$Result;)V

    return-void
.end method
