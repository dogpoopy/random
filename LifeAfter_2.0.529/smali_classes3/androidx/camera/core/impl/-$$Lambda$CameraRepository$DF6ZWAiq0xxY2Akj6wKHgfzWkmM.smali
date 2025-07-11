.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$CameraRepository$DF6ZWAiq0xxY2Akj6wKHgfzWkmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/CameraRepository;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/-$$Lambda$CameraRepository$DF6ZWAiq0xxY2Akj6wKHgfzWkmM;->f$0:Landroidx/camera/core/impl/CameraRepository;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/-$$Lambda$CameraRepository$DF6ZWAiq0xxY2Akj6wKHgfzWkmM;->f$0:Landroidx/camera/core/impl/CameraRepository;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CameraRepository;->lambda$deinit$0$CameraRepository(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
