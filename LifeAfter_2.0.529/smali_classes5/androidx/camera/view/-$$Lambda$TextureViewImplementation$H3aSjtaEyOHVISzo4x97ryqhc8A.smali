.class public final synthetic Landroidx/camera/view/-$$Lambda$TextureViewImplementation$H3aSjtaEyOHVISzo4x97ryqhc8A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/TextureViewImplementation;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/TextureViewImplementation;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$TextureViewImplementation$H3aSjtaEyOHVISzo4x97ryqhc8A;->f$0:Landroidx/camera/view/TextureViewImplementation;

    iput-object p2, p0, Landroidx/camera/view/-$$Lambda$TextureViewImplementation$H3aSjtaEyOHVISzo4x97ryqhc8A;->f$1:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$TextureViewImplementation$H3aSjtaEyOHVISzo4x97ryqhc8A;->f$0:Landroidx/camera/view/TextureViewImplementation;

    iget-object v1, p0, Landroidx/camera/view/-$$Lambda$TextureViewImplementation$H3aSjtaEyOHVISzo4x97ryqhc8A;->f$1:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0, v1}, Landroidx/camera/view/TextureViewImplementation;->lambda$onSurfaceRequested$0$TextureViewImplementation(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
