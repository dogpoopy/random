.class Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;
.super Ljava/lang/Object;
.source "Camera2SessionConfigBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;
    }
.end annotation


# instance fields
.field private mCamera2OutputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionTemplateId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionTemplateId:I

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionParameters:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addOutputConfig(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method addSessionParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method build()Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;
    .locals 4

    .line 101
    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionTemplateId:I

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionParameters:Ljava/util/Map;

    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;-><init>(ILjava/util/Map;Ljava/util/List;)V

    return-object v0
.end method

.method getCamera2OutputConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    return-object v0
.end method

.method getSessionParameters()Ljava/util/Map;
    .locals 1
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

    .line 85
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionParameters:Ljava/util/Map;

    return-object v0
.end method

.method getSessionTemplateId()I
    .locals 1

    .line 77
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionTemplateId:I

    return v0
.end method

.method setSessionTemplateId(I)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;
    .locals 0

    .line 69
    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionTemplateId:I

    return-object p0
.end method
