.class public final synthetic Landroidx/camera/view/-$$Lambda$TextureViewImplementation$xLBAtUNcL3bMlKRrYxo-FmDmtr4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/TextureViewImplementation;

.field public final synthetic f$1:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/TextureViewImplementation;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$TextureViewImplementation$xLBAtUNcL3bMlKRrYxo-FmDmtr4;->f$0:Landroidx/camera/view/TextureViewImplementation;

    iput-object p2, p0, Landroidx/camera/view/-$$Lambda$TextureViewImplementation$xLBAtUNcL3bMlKRrYxo-FmDmtr4;->f$1:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$TextureViewImplementation$xLBAtUNcL3bMlKRrYxo-FmDmtr4;->f$0:Landroidx/camera/view/TextureViewImplementation;

    iget-object v1, p0, Landroidx/camera/view/-$$Lambda$TextureViewImplementation$xLBAtUNcL3bMlKRrYxo-FmDmtr4;->f$1:Landroid/view/Surface;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/view/TextureViewImplementation;->lambda$tryToProvidePreviewSurface$1$TextureViewImplementation(Landroid/view/Surface;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
