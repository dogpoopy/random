.class public Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;
.super Landroidx/fragment/app/Fragment;
.source "EditMediaFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EditMediaFragment"


# instance fields
.field private final DRAW:I

.field private final MOSAICS:I

.field private final NOTHING:I

.field btEditComplete:Landroid/widget/Button;

.field croppingMargin:I

.field currentEditState:I

.field delayHandler:Landroid/os/Handler;

.field drawTag:Ljava/lang/String;

.field drawingToolsView:Landroid/view/View;

.field editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

.field flImageRecreateContainer:Landroid/widget/FrameLayout;

.field ivCrop:Landroid/widget/ImageView;

.field ivCropCancel:Landroid/widget/ImageView;

.field ivCropDone:Landroid/widget/ImageView;

.field ivCropRevert:Landroid/widget/ImageView;

.field ivDrawRevoke:Landroid/widget/ImageView;

.field ivEditText:Landroid/widget/ImageView;

.field ivGraffiti:Landroid/widget/ImageView;

.field ivMosaic:Landroid/widget/ImageView;

.field ivMosaicRevoke:Landroid/widget/ImageView;

.field private justClip:Z

.field llCancel:Landroid/widget/LinearLayout;

.field llFunc:Landroid/widget/LinearLayout;

.field mResource:Landroid/graphics/drawable/Drawable;

.field private mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

.field mosaicTag:Ljava/lang/String;

.field mosaicToolsView:Landroid/view/View;

.field private picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

.field rlCropB:Landroid/widget/RelativeLayout;

.field saveEditedBitmapTask:Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;

.field selectedColor:I

.field private targetPath:Ljava/lang/String;

.field private targetUri:Landroid/net/Uri;

.field private final theLayout:Ljava/lang/String;

.field private tu:Lcom/netease/ntunisdk/piclib/unit/TextUnit;

.field viewFuncManager:Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;

.field private viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "fragment_us_edit_media"

    .line 53
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->theLayout:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->NOTHING:I

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->DRAW:I

    const/4 v0, 0x2

    .line 60
    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->MOSAICS:I

    const-string v0, "draw"

    .line 92
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->drawTag:Ljava/lang/String;

    const-string v0, "mosaic"

    .line 93
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mosaicTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)Lcom/netease/ntunisdk/piclib/unit/PicUnit;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->justClip:Z

    return p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchCropFuncVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFuncVisibility(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$702(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;Lcom/netease/ntunisdk/piclib/unit/TextUnit;)Lcom/netease/ntunisdk/piclib/unit/TextUnit;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->tu:Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    return-object p1
.end method

.method private createNewMatrixImage()V
    .locals 8

    .line 390
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->flImageRecreateContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 394
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHistory()Ljava/util/Stack;

    move-result-object v1

    .line 396
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getMosaicHistory()Ljava/util/Stack;

    move-result-object v0

    .line 397
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getTextUnitMap()Landroidx/collection/ArrayMap;

    move-result-object v2

    move-object v3, v0

    goto :goto_2

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->editedInfoMap:Landroidx/collection/ArrayMap;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;

    if-eqz v0, :cond_4

    .line 402
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;->graffitiHistory:Ljava/util/Stack;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;->graffitiHistory:Ljava/util/Stack;

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 403
    :goto_0
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;->mosaicHistory:Ljava/util/Stack;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;->mosaicHistory:Ljava/util/Stack;

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 404
    :goto_1
    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;->textUnitMap:Landroidx/collection/ArrayMap;

    if-eqz v4, :cond_3

    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;->textUnitMap:Landroidx/collection/ArrayMap;

    :cond_3
    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    :cond_4
    move-object v2, v1

    move-object v3, v2

    .line 407
    :goto_2
    new-instance v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    .line 408
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->scaleX:I

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->scaleX:I

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v5, v5, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->scaleY:I

    if-ne v0, v5, :cond_5

    .line 409
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setStableCropBox(Z)V

    .line 411
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 412
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    new-instance v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    .line 414
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->snapshotHistory()V

    .line 415
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setPicUnit(Lcom/netease/ntunisdk/piclib/unit/PicUnit;)V

    if-eqz v1, :cond_6

    .line 417
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setHistory(Ljava/util/Stack;)V

    :cond_6
    if-eqz v3, :cond_7

    .line 420
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setMosaicHistory(Ljava/util/Stack;)V

    :cond_7
    if-eqz v2, :cond_8

    .line 423
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setTextUnitMap(Landroidx/collection/ArrayMap;)V

    .line 425
    :cond_8
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->flImageRecreateContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 426
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mResource:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 428
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getShowSize(Landroid/content/Context;I)[I

    move-result-object v0

    .line 429
    aget v2, v0, v1

    aget v0, v0, v4

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v5, v5, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v5, v5, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v6, v6, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v6, v6, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    invoke-static {v2, v0, v3, v5, v6}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getRealShowWH(IIIII)[I

    move-result-object v0

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNewMatrixImage -> realShowWH w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  ; h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EditMediaFragment"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    aget v3, v0, v1

    aget v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 435
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->targetUri:Landroid/net/Uri;

    if-eqz v2, :cond_9

    .line 436
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->targetUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$2;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$2;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    .line 457
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_3

    .line 458
    :cond_9
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->targetPath:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 459
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->targetPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    .line 480
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_3

    .line 484
    :cond_a
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->delayHandler:Landroid/os/Handler;

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$V2_N1q2E94zhi2Wv9idMi_6h3GQ;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$V2_N1q2E94zhi2Wv9idMi_6h3GQ;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setDrawCallback(Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;)V

    .line 529
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->justClip:Z

    if-nez v0, :cond_c

    .line 530
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    :cond_c
    return-void
.end method

.method private editComplete()V
    .locals 9

    .line 365
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 367
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->justClip:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 368
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    .line 370
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHistory()Ljava/util/Stack;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;->graffitiHistory:Ljava/util/Stack;

    .line 372
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getMosaicHistory()Ljava/util/Stack;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;->mosaicHistory:Ljava/util/Stack;

    .line 373
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getTextUnitMap()Landroidx/collection/ArrayMap;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;->textUnitMap:Landroidx/collection/ArrayMap;

    .line 374
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->editedInfoMap:Landroidx/collection/ArrayMap;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {v1, v2, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v7, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->btEditComplete:Landroid/widget/Button;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;-><init>(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Landroid/widget/Button;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->saveEditedBitmapTask:Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;

    .line 376
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    return-void
.end method

.method private initDrawTools()V
    .locals 4

    .line 128
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view_edit_drawing_tools"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->drawingToolsView:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "iv_us_pic_lib_edit_draw_revoke"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivDrawRevoke:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivDrawRevoke:Landroid/widget/ImageView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivDrawRevoke:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$fj3lkXD8mrehgmBmfuHNBnU_7WM;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$fj3lkXD8mrehgmBmfuHNBnU_7WM;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->drawingToolsView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cmv_us_pic_lib_edit_draw_color_magazine"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    .line 133
    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$ssyJFKutB35Z1EctErGd5Rf8E_4;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$ssyJFKutB35Z1EctErGd5Rf8E_4;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->setOnColorChangedListener(Lcom/netease/ntunisdk/piclib/view/ColorMagazineView$OnColorChangedListener;)V

    .line 134
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewFuncManager:Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->drawTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->drawingToolsView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->addView(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private initMosaicTools()V
    .locals 4

    .line 138
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view_edit_mosaic_tools"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mosaicToolsView:Landroid/view/View;

    .line 139
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "iv_us_pic_lib_edit_mosaic_revoke"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivMosaicRevoke:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivMosaicRevoke:Landroid/widget/ImageView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivMosaicRevoke:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$2hwv7Q-Fb5GjpaQ1YxSh3WNjFlM;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$2hwv7Q-Fb5GjpaQ1YxSh3WNjFlM;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewFuncManager:Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mosaicTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mosaicToolsView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->addView(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static newInstance()Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;
    .locals 1

    .line 111
    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;-><init>()V

    return-object v0
.end method

.method private setTools(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 536
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewFuncManager:Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->drawTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->show(Ljava/lang/String;)V

    .line 537
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivDrawRevoke:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isHistoryEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 539
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewFuncManager:Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mosaicTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->show(Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivMosaicRevoke:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isHistoryEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 542
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewFuncManager:Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->dismiss()V

    :goto_2
    return-void
.end method

.method private switchCropFuncVisibility(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->rlCropB:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->rlCropB:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private switchFunc(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "integer"
        }
    .end annotation

    .line 310
    iput p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->currentEditState:I

    .line 311
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->editState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setState(I)V

    .line 329
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->enablePaint(Z)V

    .line 330
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivGraffiti:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 331
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivMosaic:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 332
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewFuncManager:Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 333
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewFuncManager:Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->dismiss()V

    goto :goto_2

    .line 313
    :cond_1
    :goto_0
    iget v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->selectedColor:I

    if-nez v3, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "pic_lib_main_color"

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->selectedColor:I

    :cond_2
    if-ne p1, v2, :cond_3

    .line 317
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivMosaic:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 318
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3, v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setState(I)V

    .line 319
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivGraffiti:Landroid/widget/ImageView;

    iget v4, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->selectedColor:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 321
    :cond_3
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivGraffiti:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 322
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setState(I)V

    .line 323
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivMosaic:Landroid/widget/ImageView;

    iget v4, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->selectedColor:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 325
    :goto_1
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3, v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->enablePaint(Z)V

    .line 326
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->setTools(I)V

    :cond_4
    :goto_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    .line 337
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 338
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->show()V

    :cond_5
    if-eq p1, v3, :cond_6

    .line 342
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 343
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->dismiss()V

    :cond_6
    const/4 v3, 0x4

    if-ne p1, v3, :cond_7

    .line 347
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isCropping()Z

    move-result v4

    if-nez v4, :cond_7

    .line 348
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4, v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setIsCrop(Z)V

    .line 349
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchCropFuncVisibility(Z)V

    :cond_7
    if-eq p1, v3, :cond_8

    .line 353
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isCropping()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 354
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setIsCrop(Z)V

    .line 355
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->resetCrop()V

    .line 356
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setCropImage()V

    .line 357
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchCropFuncVisibility(Z)V

    :cond_8
    if-eqz p1, :cond_9

    if-eq p1, v2, :cond_9

    if-ne p1, v0, :cond_a

    :cond_9
    const/4 v1, 0x1

    .line 360
    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFuncVisibility(Ljava/lang/Boolean;)V

    return-void
.end method

.method private switchFuncVisibility(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 551
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llCancel:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 553
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llCancel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 556
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llCancel:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 557
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llCancel:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflate"
        }
    .end annotation

    .line 146
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;->VMPFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    .line 147
    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->croppingMargin:I

    .line 152
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ll_us_pic_lib_edit_cancel"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llCancel:Landroid/widget/LinearLayout;

    .line 153
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_us_pic_lib_edit_command_graffiti"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivGraffiti:Landroid/widget/ImageView;

    .line 154
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_us_pic_lib_edit_command_mosaic"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivMosaic:Landroid/widget/ImageView;

    .line 155
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_us_pic_lib_edit_command_edit_text"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivEditText:Landroid/widget/ImageView;

    .line 156
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_us_pic_lib_edit_command_crop"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivCrop:Landroid/widget/ImageView;

    .line 157
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ll_us_pic_lib_edit_func"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llFunc:Landroid/widget/LinearLayout;

    .line 158
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bt_us_pic_lib_edit_complete"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->btEditComplete:Landroid/widget/Button;

    .line 159
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fl_us_pic_lib_edit_drawing_tools_container"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 160
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fl_us_pic_lib_edit_image_recreate_container"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->flImageRecreateContainer:Landroid/widget/FrameLayout;

    .line 163
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "rl_us_pic_lib_edit_crop_func_b"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->rlCropB:Landroid/widget/RelativeLayout;

    .line 164
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "iv_us_pic_lib_edit_crop_cancel"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivCropCancel:Landroid/widget/ImageView;

    .line 166
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "iv_us_pic_lib_edit_crop_revert"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivCropRevert:Landroid/widget/ImageView;

    .line 167
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "iv_us_pic_lib_edit_crop_done"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivCropDone:Landroid/widget/ImageView;

    .line 169
    new-instance v1, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewFuncManager:Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;

    .line 170
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->initDrawTools()V

    .line 171
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->initMosaicTools()V

    .line 173
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->targetUri:Landroid/net/Uri;

    .line 174
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->targetPath:Ljava/lang/String;

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->delayHandler:Landroid/os/Handler;

    .line 177
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llCancel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$tmaRXoC7w6VBLoLpMtW9LdxALS0;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$tmaRXoC7w6VBLoLpMtW9LdxALS0;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivCropRevert:Landroid/widget/ImageView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 181
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "iv_us_pic_lib_edit_return"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->onlyClip:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->justClip:Z

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->llFunc:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFuncVisibility(Ljava/lang/Boolean;)V

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivGraffiti:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$hRmgvNCvItNFgfTymlu7S9tVl4o;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$hRmgvNCvItNFgfTymlu7S9tVl4o;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivMosaic:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$1TST7q8N1LhlemwC-UnM43lHo8o;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$1TST7q8N1LhlemwC-UnM43lHo8o;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    new-instance v0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;-><init>(Landroid/view/ViewGroup;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    .line 208
    new-instance p1, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$1;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->setOnShowOrDismissListener(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnShowOrDismissListener;)V

    .line 223
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$7aQWMDOsv4EJ9SN5G_Xl3ZKLCno;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$7aQWMDOsv4EJ9SN5G_Xl3ZKLCno;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->setOnOutputListener(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnOutputListener;)V

    .line 240
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivEditText:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$0zpor-eK-Nq0KgMrysySMQ4Z1lg;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$0zpor-eK-Nq0KgMrysySMQ4Z1lg;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivCrop:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$yr83qgS2CI_xGOQdvwlCx9WA7c4;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$yr83qgS2CI_xGOQdvwlCx9WA7c4;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivCropRevert:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$rbxCv3T1pe3uKsdQU-e2HxRi2Ng;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$rbxCv3T1pe3uKsdQU-e2HxRi2Ng;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivCropCancel:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$6vplNuoowKFvUsLnqJJB9FytJUI;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$6vplNuoowKFvUsLnqJJB9FytJUI;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivCropDone:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$u3E0I8bGU3lm-tzaV6ugfJ9rgCA;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$u3E0I8bGU3lm-tzaV6ugfJ9rgCA;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->editState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$VU2NpIlEZHaIQSmWjWHej_Oiy5g;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$VU2NpIlEZHaIQSmWjWHej_Oiy5g;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 293
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->configuration:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$NfZzE-GxURLEH1HnsLsJk0mcNuk;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$NfZzE-GxURLEH1HnsLsJk0mcNuk;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 301
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->btEditComplete:Landroid/widget/Button;

    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$ZX_AIhxsw-EjUM9QYcBcCsysB34;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$ZX_AIhxsw-EjUM9QYcBcCsysB34;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->createNewMatrixImage()V

    return-void
.end method

.method public synthetic lambda$createNewMatrixImage$15$EditMediaFragment()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    if-eqz v0, :cond_1

    .line 486
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getmImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->doMatrix()V

    .line 491
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->justClip:Z

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setIsCrop(Z)V

    .line 493
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchCropFuncVisibility(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$init$10$EditMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 264
    iget-boolean p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->justClip:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$11$EditMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 271
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isCropping()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setRealCrop()V

    .line 274
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setCropImage()V

    .line 275
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->justClip:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setIsCrop(Z)V

    .line 280
    iget-boolean p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->justClip:Z

    if-eqz p1, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editComplete()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$init$12$EditMediaFragment(Ljava/lang/Integer;)V
    .locals 0

    .line 287
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->currentEditState:I

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 288
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$init$13$EditMediaFragment(Landroid/content/res/Configuration;)V
    .locals 0

    .line 294
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->reset()V

    const/4 p1, 0x0

    .line 295
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchCropFuncVisibility(Z)V

    .line 297
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->createNewMatrixImage()V

    return-void
.end method

.method public synthetic lambda$init$14$EditMediaFragment(Landroid/view/View;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editComplete()V

    return-void
.end method

.method public synthetic lambda$init$3$EditMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$init$4$EditMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 194
    iget p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->currentEditState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 195
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$5$EditMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 201
    iget p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->currentEditState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 202
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$6$EditMediaFragment(Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->tu:Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->tu:Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    .line 227
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setText(Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->tu:Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setColor(I)V

    .line 229
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->tu:Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->addText(Lcom/netease/ntunisdk/piclib/unit/TextUnit;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setText(Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->tu:Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setColor(I)V

    .line 233
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->tu:Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->updateText(Lcom/netease/ntunisdk/piclib/unit/TextUnit;)V

    .line 235
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "containsEmoji: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->tu:Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->containsEmoji(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Emoji"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->tu:Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    .line 237
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$init$7$EditMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->setText(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->setColor(I)V

    .line 243
    iget p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->currentEditState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 244
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$8$EditMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 250
    iget p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->currentEditState:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 251
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->switchFunc(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$9$EditMediaFragment(Landroid/view/View;)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isCropping()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->resetCrop()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initDrawTools$0$EditMediaFragment(Landroid/view/View;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->undo()V

    return-void
.end method

.method public synthetic lambda$initDrawTools$1$EditMediaFragment(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setColor(I)V

    return-void
.end method

.method public synthetic lambda$initMosaicTools$2$EditMediaFragment(Landroid/view/View;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicUndo()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "fragment_us_edit_media"

    invoke-static {p3, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 120
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->init(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 122
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 564
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->saveEditedBitmapTask:Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mView:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    .line 570
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy -> e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditMediaFragment"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
