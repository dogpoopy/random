.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$M3yyOXIn2HbgNvPGJcdn5xz5Qzo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/LiveDataObservable;

.field public final synthetic f$1:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

.field public final synthetic f$2:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$M3yyOXIn2HbgNvPGJcdn5xz5Qzo;->f$0:Landroidx/camera/core/impl/LiveDataObservable;

    iput-object p2, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$M3yyOXIn2HbgNvPGJcdn5xz5Qzo;->f$1:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    iput-object p3, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$M3yyOXIn2HbgNvPGJcdn5xz5Qzo;->f$2:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$M3yyOXIn2HbgNvPGJcdn5xz5Qzo;->f$0:Landroidx/camera/core/impl/LiveDataObservable;

    iget-object v1, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$M3yyOXIn2HbgNvPGJcdn5xz5Qzo;->f$1:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    iget-object v2, p0, Landroidx/camera/core/impl/-$$Lambda$LiveDataObservable$M3yyOXIn2HbgNvPGJcdn5xz5Qzo;->f$2:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/LiveDataObservable;->lambda$addObserver$2$LiveDataObservable(Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;)V

    return-void
.end method
