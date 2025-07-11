.class public final synthetic Landroidx/camera/view/-$$Lambda$TextureViewImplementation$4Ro_RTJ9XOS56iq0uDUHbUM8dTQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/TextureViewImplementation;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/TextureViewImplementation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$TextureViewImplementation$4Ro_RTJ9XOS56iq0uDUHbUM8dTQ;->f$0:Landroidx/camera/view/TextureViewImplementation;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$TextureViewImplementation$4Ro_RTJ9XOS56iq0uDUHbUM8dTQ;->f$0:Landroidx/camera/view/TextureViewImplementation;

    invoke-virtual {v0, p1}, Landroidx/camera/view/TextureViewImplementation;->lambda$waitForNextFrame$3$TextureViewImplementation(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
