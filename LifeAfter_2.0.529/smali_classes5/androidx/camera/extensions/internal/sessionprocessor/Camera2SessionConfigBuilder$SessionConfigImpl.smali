.class Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;
.super Ljava/lang/Object;
.source "Camera2SessionConfigBuilder.java"

# interfaces
.implements Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionConfigImpl"
.end annotation


# instance fields
.field private final mCamera2OutputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionParameters:Ljava/util/Map;
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

.field private final mSessionTemplateId:I


# direct methods
.method constructor <init>(ILjava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;->mSessionTemplateId:I

    .line 113
    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;->mSessionParameters:Ljava/util/Map;

    .line 114
    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;->mCamera2OutputConfigs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getOutputConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;->mCamera2OutputConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getSessionParameters()Ljava/util/Map;
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

    .line 126
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;->mSessionParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getSessionTemplateId()I
    .locals 1

    .line 131
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;->mSessionTemplateId:I

    return v0
.end method
