.class interface abstract Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;
.super Ljava/lang/Object;
.source "Camera2SessionConfig.java"


# virtual methods
.method public abstract getOutputConfigs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionTemplateId()I
.end method
