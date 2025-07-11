.class public final synthetic Landroidx/camera/view/-$$Lambda$Q03kgDwbZwCgAiD9f2jklDJCTyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$Q03kgDwbZwCgAiD9f2jklDJCTyg;->f$0:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$Q03kgDwbZwCgAiD9f2jklDJCTyg;->f$0:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    invoke-interface {v0}, Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;->onSurfaceNotInUse()V

    return-void
.end method
