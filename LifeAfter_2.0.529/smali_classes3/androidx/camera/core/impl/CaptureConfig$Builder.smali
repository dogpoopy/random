.class public final Landroidx/camera/core/impl/CaptureConfig$Builder;
.super Ljava/lang/Object;
.source "CaptureConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CaptureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCameraCaptureCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

.field private mExpectedFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

.field private mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

.field private final mSurfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateType:I

.field private mUseRepeatingSurface:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    .line 206
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    const/4 v0, -0x1

    .line 207
    iput v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mTemplateType:I

    .line 208
    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mExpectedFrameRateRange:Landroid/util/Range;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mUseRepeatingSurface:Z

    .line 211
    invoke-static {}, Landroidx/camera/core/impl/MutableTagBundle;->create()Landroidx/camera/core/impl/MutableTagBundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/core/impl/CaptureConfig;)V
    .locals 2

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    .line 206
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    const/4 v1, -0x1

    .line 207
    iput v1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mTemplateType:I

    .line 208
    sget-object v1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    iput-object v1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mExpectedFrameRateRange:Landroid/util/Range;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    const/4 v1, 0x0

    .line 210
    iput-boolean v1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mUseRepeatingSurface:Z

    .line 211
    invoke-static {}, Landroidx/camera/core/impl/MutableTagBundle;->create()Landroidx/camera/core/impl/MutableTagBundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    .line 219
    iget-object v1, p1, Landroidx/camera/core/impl/CaptureConfig;->mSurfaces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object v0, p1, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/Config;

    invoke-static {v0}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    .line 221
    iget v0, p1, Landroidx/camera/core/impl/CaptureConfig;->mTemplateType:I

    iput v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mTemplateType:I

    .line 222
    iget-object v0, p1, Landroidx/camera/core/impl/CaptureConfig;->mExpectedFrameRateRange:Landroid/util/Range;

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mExpectedFrameRateRange:Landroid/util/Range;

    .line 223
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->isUseRepeatingSurface()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mUseRepeatingSurface:Z

    .line 225
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/impl/MutableTagBundle;->from(Landroidx/camera/core/impl/TagBundle;)Landroidx/camera/core/impl/MutableTagBundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    return-void
.end method

.method public static createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/CaptureConfig$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;)",
            "Landroidx/camera/core/impl/CaptureConfig$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 235
    invoke-interface {p0, v0}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureOptionUnpacker(Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v1, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 245
    invoke-interface {v0, p0, v1}, Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;->unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V

    return-object v1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Implementation is missing option unpacker for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroidx/camera/core/impl/UseCaseConfig;->getTargetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/impl/CaptureConfig$Builder;
    .locals 1

    .line 252
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>(Landroidx/camera/core/impl/CaptureConfig;)V

    return-object v0
.end method


# virtual methods
.method public addAllCameraCaptureCallbacks(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;)V"
        }
    .end annotation

    .line 307
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 308
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAllTags(Landroidx/camera/core/impl/TagBundle;)V
    .locals 1

    .line 405
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/MutableTagBundle;->addTagBundle(Landroidx/camera/core/impl/TagBundle;)V

    return-void
.end method

.method public addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 1

    .line 296
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/impl/Config$Option<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    invoke-interface {v0, p1, p2}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-void
.end method

.method public addImplementationOptions(Landroidx/camera/core/impl/Config;)V
    .locals 5

    .line 351
    invoke-interface {p1}, Landroidx/camera/core/impl/Config;->listOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/Config$Option;

    .line 355
    iget-object v2, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroidx/camera/core/impl/MutableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 356
    invoke-interface {p1, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v3

    .line 357
    instance-of v4, v2, Landroidx/camera/core/impl/MultiValueSet;

    if-eqz v4, :cond_0

    .line 358
    check-cast v2, Landroidx/camera/core/impl/MultiValueSet;

    check-cast v3, Landroidx/camera/core/impl/MultiValueSet;

    invoke-virtual {v3}, Landroidx/camera/core/impl/MultiValueSet;->getAllItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/MultiValueSet;->addAll(Ljava/util/List;)V

    goto :goto_0

    .line 360
    :cond_0
    instance-of v2, v3, Landroidx/camera/core/impl/MultiValueSet;

    if-eqz v2, :cond_1

    .line 361
    check-cast v3, Landroidx/camera/core/impl/MultiValueSet;

    invoke-virtual {v3}, Landroidx/camera/core/impl/MultiValueSet;->clone()Landroidx/camera/core/impl/MultiValueSet;

    move-result-object v3

    .line 363
    :cond_1
    iget-object v2, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    .line 364
    invoke-interface {p1, v1}, Landroidx/camera/core/impl/Config;->getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object v4

    .line 363
    invoke-interface {v2, v1, v4, v3}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 1

    .line 325
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTag(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 398
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/impl/MutableTagBundle;->putTag(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public build()Landroidx/camera/core/impl/CaptureConfig;
    .locals 10

    .line 414
    new-instance v9, Landroidx/camera/core/impl/CaptureConfig;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    .line 416
    invoke-static {v0}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v2

    iget v3, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mTemplateType:I

    iget-object v4, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mExpectedFrameRateRange:Landroid/util/Range;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v6, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mUseRepeatingSurface:Z

    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    .line 421
    invoke-static {v0}, Landroidx/camera/core/impl/TagBundle;->from(Landroidx/camera/core/impl/TagBundle;)Landroidx/camera/core/impl/TagBundle;

    move-result-object v7

    iget-object v8, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroidx/camera/core/impl/CaptureConfig;-><init>(Ljava/util/List;Landroidx/camera/core/impl/Config;ILandroid/util/Range;Ljava/util/List;ZLandroidx/camera/core/impl/TagBundle;Landroidx/camera/core/impl/CameraCaptureResult;)V

    return-object v9
.end method

.method public clearSurfaces()V
    .locals 1

    .line 335
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getExpectedFrameRateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mExpectedFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getImplementationOptions()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 377
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    return-object v0
.end method

.method public getSurfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 391
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/MutableTagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateType()I
    .locals 1

    .line 265
    iget v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mTemplateType:I

    return v0
.end method

.method public isUseRepeatingSurface()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mUseRepeatingSurface:Z

    return v0
.end method

.method public removeCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Z
    .locals 1

    .line 320
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeSurface(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 1

    .line 330
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCameraCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0

    .line 261
    iput-object p1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    return-void
.end method

.method public setExpectedFrameRateRange(Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mExpectedFrameRateRange:Landroid/util/Range;

    return-void
.end method

.method public setImplementationOptions(Landroidx/camera/core/impl/Config;)V
    .locals 0

    .line 345
    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    return-void
.end method

.method public setTemplateType(I)V
    .locals 0

    .line 280
    iput p1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mTemplateType:I

    return-void
.end method

.method public setUseRepeatingSurface(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mUseRepeatingSurface:Z

    return-void
.end method
