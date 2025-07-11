.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$-28SVhrY5k3kr5BcB6nW1gb8KJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/-$$Lambda$-28SVhrY5k3kr5BcB6nW1gb8KJk;->f$0:Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/-$$Lambda$-28SVhrY5k3kr5BcB6nW1gb8KJk;->f$0:Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;->onConfigureAvailable()V

    return-void
.end method
