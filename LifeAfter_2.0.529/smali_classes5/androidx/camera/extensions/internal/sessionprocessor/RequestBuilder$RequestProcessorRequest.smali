.class Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Landroidx/camera/core/impl/RequestProcessor$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestProcessorRequest"
.end annotation


# instance fields
.field final mCaptureStageId:I

.field final mParameterConfig:Landroidx/camera/core/impl/Config;

.field final mTargetOutputConfigIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mTemplateId:I


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Map;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;->mTargetOutputConfigIds:Ljava/util/List;

    .line 91
    iput p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;->mTemplateId:I

    .line 92
    iput p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;->mCaptureStageId:I

    .line 94
    new-instance p1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 95
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 99
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    invoke-virtual {p1, p4, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;->mParameterConfig:Landroidx/camera/core/impl/Config;

    return-void
.end method


# virtual methods
.method public getCaptureStageId()I
    .locals 1

    .line 122
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;->mCaptureStageId:I

    return v0
.end method

.method public getParameters()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;->mParameterConfig:Landroidx/camera/core/impl/Config;

    return-object v0
.end method

.method public getTargetOutputConfigIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;->mTargetOutputConfigIds:Ljava/util/List;

    return-object v0
.end method

.method public getTemplateId()I
    .locals 1

    .line 118
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;->mTemplateId:I

    return v0
.end method
