.class public abstract Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;
.super Ljava/lang/Object;
.source "SurfaceOutputConfig.java"

# interfaces
.implements Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(IILjava/lang/String;Ljava/util/List;Landroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;",
            "Landroid/view/Surface;",
            ")",
            "Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;"
        }
    .end annotation

    .line 44
    new-instance v6, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_SurfaceOutputConfig;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_SurfaceOutputConfig;-><init>(IILjava/lang/String;Ljava/util/List;Landroid/view/Surface;)V

    return-object v6
.end method

.method static create(ILandroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;
    .locals 3

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;->create(IILjava/lang/String;Ljava/util/List;Landroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract getSurface()Landroid/view/Surface;
.end method
