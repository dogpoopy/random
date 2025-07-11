.class public final synthetic Landroidx/camera/camera2/-$$Lambda$mR8gvbxWjOvajaJAJqHO7o32os4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/CameraFactory$Provider;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/-$$Lambda$mR8gvbxWjOvajaJAJqHO7o32os4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/-$$Lambda$mR8gvbxWjOvajaJAJqHO7o32os4;

    invoke-direct {v0}, Landroidx/camera/camera2/-$$Lambda$mR8gvbxWjOvajaJAJqHO7o32os4;-><init>()V

    sput-object v0, Landroidx/camera/camera2/-$$Lambda$mR8gvbxWjOvajaJAJqHO7o32os4;->INSTANCE:Landroidx/camera/camera2/-$$Lambda$mR8gvbxWjOvajaJAJqHO7o32os4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/impl/CameraFactory;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;

    invoke-direct {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/Camera2CameraFactory;-><init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/core/CameraSelector;)V

    check-cast v0, Landroidx/camera/core/impl/CameraFactory;

    return-object v0
.end method
