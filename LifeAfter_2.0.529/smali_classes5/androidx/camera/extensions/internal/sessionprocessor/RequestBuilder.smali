.class Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;
    }
.end annotation


# instance fields
.field mCaptureStageId:I

.field private mParameters:Ljava/util/Map;
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

.field private mTargetOutputConfigIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mTargetOutputConfigIds:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mParameters:Ljava/util/Map;

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mTemplateId:I

    return-void
.end method


# virtual methods
.method addTargetOutputConfigIds(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mTargetOutputConfigIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method build()Landroidx/camera/core/impl/RequestProcessor$Request;
    .locals 5

    .line 76
    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mTargetOutputConfigIds:Ljava/util/List;

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mParameters:Ljava/util/Map;

    iget v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mTemplateId:I

    iget v4, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mCaptureStageId:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;-><init>(Ljava/util/List;Ljava/util/Map;II)V

    return-object v0
.end method

.method public setCaptureStageId(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;
    .locals 0

    .line 70
    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mCaptureStageId:I

    return-object p0
.end method

.method setParameters(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method setTemplateId(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;
    .locals 0

    .line 64
    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->mTemplateId:I

    return-object p0
.end method
