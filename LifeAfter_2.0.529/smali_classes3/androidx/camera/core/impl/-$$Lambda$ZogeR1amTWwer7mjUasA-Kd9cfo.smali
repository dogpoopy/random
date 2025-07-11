.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$ZogeR1amTWwer7mjUasA-Kd9cfo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/-$$Lambda$ZogeR1amTWwer7mjUasA-Kd9cfo;->f$0:Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/-$$Lambda$ZogeR1amTWwer7mjUasA-Kd9cfo;->f$0:Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;->onOpenAvailable()V

    return-void
.end method
