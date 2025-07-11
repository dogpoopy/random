.class public final synthetic Landroidx/camera/view/-$$Lambda$PreviewView$1$g3lRYHwwAGJlXtgKG6mjFWZkEis;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/PreviewView$1;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$1;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$g3lRYHwwAGJlXtgKG6mjFWZkEis;->f$0:Landroidx/camera/view/PreviewView$1;

    iput-object p2, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$g3lRYHwwAGJlXtgKG6mjFWZkEis;->f$1:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$g3lRYHwwAGJlXtgKG6mjFWZkEis;->f$0:Landroidx/camera/view/PreviewView$1;

    iget-object v1, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$g3lRYHwwAGJlXtgKG6mjFWZkEis;->f$1:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0, v1}, Landroidx/camera/view/PreviewView$1;->lambda$onSurfaceRequested$0$PreviewView$1(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
