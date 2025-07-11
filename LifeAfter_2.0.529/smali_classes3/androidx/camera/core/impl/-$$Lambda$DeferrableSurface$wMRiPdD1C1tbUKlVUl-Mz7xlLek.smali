.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$DeferrableSurface$wMRiPdD1C1tbUKlVUl-Mz7xlLek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/DeferrableSurface;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/-$$Lambda$DeferrableSurface$wMRiPdD1C1tbUKlVUl-Mz7xlLek;->f$0:Landroidx/camera/core/impl/DeferrableSurface;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/-$$Lambda$DeferrableSurface$wMRiPdD1C1tbUKlVUl-Mz7xlLek;->f$0:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/DeferrableSurface;->lambda$new$0$DeferrableSurface(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
