.class public final synthetic Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$hR30z4oUgSrKdnZLna30XHVLV6g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$hR30z4oUgSrKdnZLna30XHVLV6g;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$hR30z4oUgSrKdnZLna30XHVLV6g;->f$0:Landroid/content/Context;

    check-cast p1, Landroidx/camera/core/CameraX;

    invoke-static {v0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->lambda$getInstance$0(Landroid/content/Context;Landroidx/camera/core/CameraX;)Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object p1

    return-object p1
.end method
