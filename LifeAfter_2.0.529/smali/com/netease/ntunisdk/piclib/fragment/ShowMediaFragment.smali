.class public Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;
.super Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;
.source "ShowMediaFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowMediaFragment"

.field public static final TO_OTHER:I


# instance fields
.field private adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

.field private btSend:Landroid/widget/Button;

.field private bucketAnimator:Landroid/animation/ObjectAnimator;

.field private bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

.field private clickPosition:I

.field private coverAnimator:Landroid/animation/ObjectAnimator;

.field private currentAlpha:F

.field private currentBucketPosition:I

.field private currentRotation:F

.field private currentTranslationY:F

.field private ivBucketShowFlag:Landroid/widget/ImageView;

.field private ivCancel:Landroid/widget/ImageView;

.field private ivOther:Landroid/widget/ImageView;

.field private lastBucketPosition:I

.field private llChooseBucket:Landroid/widget/LinearLayout;

.field notOverId:I

.field overId:I

.field rippleDefaultId:I

.field private rlFunc:Landroid/widget/RelativeLayout;

.field private rvBucket:Landroidx/recyclerview/widget/RecyclerView;

.field private rvBucketHeight:I

.field private rvBucketLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private rvLocal:Landroidx/recyclerview/widget/RecyclerView;

.field private rvLocalLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private targetRotation:F

.field private final theLayout:Ljava/lang/String;

.field private tvChosenBucket:Landroid/widget/TextView;

.field private tvPreview:Landroid/widget/TextView;

.field private vCover:Landroid/view/View;

.field private viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, -0x500f55c9

    .line 57
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->TO_OTHER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;-><init>()V

    const-string v0, "fragment_us_show_media"

    .line 55
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->theLayout:Ljava/lang/String;

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->clickPosition:I

    const/high16 v0, -0x3ccc0000    # -180.0f

    .line 88
    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->targetRotation:F

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->vCover:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->clickPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Landroid/widget/Button;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->btSend:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)F
    .locals 0

    .line 51
    iget p0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentTranslationY:F

    return p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucket:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->lastBucketPosition:I

    return p0
.end method

.method static synthetic access$602(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->lastBucketPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentBucketPosition:I

    return p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvLocal:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)F
    .locals 0

    .line 51
    iget p0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentAlpha:F

    return p0
.end method

.method private checkOtherGetContent(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p1, v1, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->checkOtherGetContentVideo()Z

    move-result p1

    return p1

    .line 353
    :cond_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p1, v1, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->checkOtherGetContentImage()Z

    move-result p1

    return p1

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->checkOtherGetContentImage()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->checkOtherGetContentVideo()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :catch_0
    :cond_2
    return v0
.end method

.method private checkOtherGetContentImage()Z
    .locals 2

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->doCheckOtherGetContent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private checkOtherGetContentVideo()Z
    .locals 2

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->doCheckOtherGetContent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private doCheckOtherGetContent(Landroid/content/Intent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 v0, 0x0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 378
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method private init()V
    .locals 13

    .line 134
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    .line 135
    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->targetRotation:F

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rlFunc:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getItemCount(Landroid/content/res/Resources;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvLocalLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 143
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvLocal:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 146
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    if-eqz v0, :cond_2

    .line 147
    sget v0, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_duration:I

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    sget v2, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_size:I

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 150
    :cond_2
    sget v0, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_duration:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v4, v4, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectDurationOriginal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v3}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    sget v3, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_size:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v4, v4, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectSizeOriginal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v11, v0

    move-object v12, v2

    .line 154
    new-instance v0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getItemHeight(Landroid/content/res/Resources;)I

    move-result v5

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-boolean v6, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportCamera:Z

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget v7, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->maxNum:I

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v8, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    .line 156
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v10, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v12}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;-><init>(Landroidx/fragment/app/Fragment;IZILcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    .line 158
    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->setOnItemTouchListener(Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;)V

    .line 200
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvLocal:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 201
    new-instance v0, Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    invoke-direct {v0, v2}, Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;-><init>(Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->addObserver(Lcom/netease/ntunisdk/piclib/observer/OnFragmentHiddenChangedObserver;)V

    .line 204
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$ly5RpA7qvG6fHakWxJX1h2cXZgc;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$ly5RpA7qvG6fHakWxJX1h2cXZgc;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 210
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvLocal:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->cancelItemAnimator(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 214
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "ripple_us_picedit_default"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rippleDefaultId:I

    .line 215
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "shape_us_picedit_not_over"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->notOverId:I

    .line 216
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "shape_us_picedit_over"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->overId:I

    .line 217
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$Ur1O9s_kFk0m9IOE9MboM9ru3Wk;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$Ur1O9s_kFk0m9IOE9MboM9ru3Wk;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 219
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->localMediaDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "ShowMediaFragment"

    if-nez v0, :cond_3

    const-string v0, "load local"

    .line 220
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v3, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;-><init>(Landroid/content/Context;)V

    .line 223
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "picedit_recent_projects"

    invoke-static {v0, v5}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-boolean v6, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportGif:Z

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectDuration:I

    int-to-long v7, v0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectSize:I

    int-to-long v9, v0

    new-instance v11, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$i3yo4UtS9aXukOfNaUgXwOWmD5k;

    invoke-direct {v11, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$i3yo4UtS9aXukOfNaUgXwOWmD5k;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual/range {v3 .. v11}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->loadMedia(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;Ljava/lang/String;ZJJLcom/netease/ntunisdk/piclib/loader/MediaLoader$LoadListener;)V

    goto :goto_1

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->initShowLocalMedia()V

    .line 232
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->updateFuncVisibility(Ljava/util/LinkedList;)V

    .line 238
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->notifyShowingDataUpdate:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v4, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$a6FOfBsCEgJzkdIArP0bZvcrN1c;

    invoke-direct {v4, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$a6FOfBsCEgJzkdIArP0bZvcrN1c;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v3, v4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 255
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->tvPreview:Landroid/widget/TextView;

    new-instance v3, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$j57a5eqU10N6L3AR2f96AIeQflo;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$j57a5eqU10N6L3AR2f96AIeQflo;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->ivCancel:Landroid/widget/ImageView;

    new-instance v3, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$0cLN60nHDtIq2EaQkujw_KKEbNY;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$0cLN60nHDtIq2EaQkujw_KKEbNY;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->btSend:Landroid/widget/Button;

    new-instance v3, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$0Brt1VuCER4tOzsTPkNB_kwDCJ0;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$0Brt1VuCER4tOzsTPkNB_kwDCJ0;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->disableAddOther:Z

    if-nez v0, :cond_6

    .line 276
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->checkOtherGetContent(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)Z

    move-result v0

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init -> checkOtherGetContent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->ivOther:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$Cu8rIjuGx7Ve0FGS2Q6kLsK_TSQ;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$Cu8rIjuGx7Ve0FGS2Q6kLsK_TSQ;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->ivOther:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->ivOther:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    :goto_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->processing:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$2;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$2;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 307
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->configuration:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$lmMAsJlKIYTTD5VvacpNDy5DhFw;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$lmMAsJlKIYTTD5VvacpNDy5DhFw;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic lambda$Ur1O9s_kFk0m9IOE9MboM9ru3Wk(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->updateFuncVisibility(Ljava/util/LinkedList;)V

    return-void
.end method

.method public static newInstance()Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;
    .locals 1

    .line 97
    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;-><init>()V

    return-object v0
.end method

.method private toOther(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p1, v1, :cond_0

    const-string p1, "video/*"

    .line 390
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "image/*"

    .line 392
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->TO_OTHER:I

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateFuncVisibility(Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;)V"
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-string v1, "picedit_finish"

    if-nez v0, :cond_0

    .line 331
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pic_lib_minor_color"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->btSend:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->btSend:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pic_lib_white_alpha"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 335
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->btSend:Landroid/widget/Button;

    iget v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->notOverId:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 336
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->tvPreview:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pic_lib_main_color"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 340
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->tvPreview:Landroid/widget/TextView;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rippleDefaultId:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->btSend:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->btSend:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pic_lib_white"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 345
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->btSend:Landroid/widget/Button;

    iget v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->overId:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hideBucket()V
    .locals 7

    .line 509
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 511
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 512
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentTranslationY:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 515
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v1, [F

    iget v6, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentAlpha:F

    aput v6, v2, v4

    aput v5, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 516
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentRotation:F

    aput v2, v1, v4

    aput v5, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 517
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 518
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 519
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public initBucket()V
    .locals 8

    .line 422
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->setRvBucketLayout(I)I

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucket:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->cancelItemAnimator(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 426
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucketLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 427
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucket:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 429
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucket:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string v5, "translationY"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    const/16 v2, 0x12c

    int-to-long v5, v2

    .line 431
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 432
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$pGc5pU3vaH0bAUwCaPy7FBQWCz4;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$pGc5pU3vaH0bAUwCaPy7FBQWCz4;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 433
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 452
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->vCover:Landroid/view/View;

    new-array v2, v1, [F

    aput v4, v2, v3

    const-string v7, "alpha"

    invoke-static {v0, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    .line 453
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 454
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$6gE7KIW0NFu5XRsqJdtAnlbXMJk;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$6gE7KIW0NFu5XRsqJdtAnlbXMJk;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 455
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$4;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$4;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->ivBucketShowFlag:Landroid/widget/ImageView;

    new-array v1, v1, [F

    aput v4, v1, v3

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

    .line 469
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 470
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$EeD64n7VkfFzHCiXV8dgUMC_FIU;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$EeD64n7VkfFzHCiXV8dgUMC_FIU;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 472
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->vCover:Landroid/view/View;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$kCsEjeiKnl5r_Pg5uEru7xQSmX8;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$kCsEjeiKnl5r_Pg5uEru7xQSmX8;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->llChooseBucket:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$VMsLaHA8FsshFRKVAhHuIkR2QRU;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$VMsLaHA8FsshFRKVAhHuIkR2QRU;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    new-instance v0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->localMediaDataList:Ljava/util/List;

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$xFc9lIPE9FMGZNyrUpK74ZlpXOg;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$xFc9lIPE9FMGZNyrUpK74ZlpXOg;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketClickListener;)V

    .line 491
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucket:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public initShowLocalMedia()V
    .locals 3

    const-string v0, "ShowMediaFragment"

    const-string v1, "initShowLocalMedia"

    .line 398
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->localMediaDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->resetData(Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;)V

    .line 401
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->localMediaDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->initBucket()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$init$0$ShowMediaFragment(Ljava/lang/Boolean;)V
    .locals 0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->showBucket()V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->hideBucket()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$1$ShowMediaFragment(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-object p1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->localMediaDataList:Ljava/util/List;

    .line 228
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->initShowLocalMedia()V

    return-void
.end method

.method public synthetic lambda$init$2$ShowMediaFragment(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 8

    .line 239
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->localMediaDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    .line 240
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 241
    iget v2, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->offset:I

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-boolean v5, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportCamera:Z

    .line 245
    invoke-interface {v0, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->maxNum:I

    if-ge v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->getCurrentDataTag()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->ADD:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->addEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;)V

    goto :goto_2

    .line 248
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportCamera:Z

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->notifyItemInserted(I)V

    :goto_2
    return-void
.end method

.method public synthetic lambda$init$3$ShowMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 256
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 258
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    const/4 v0, 0x0

    iput v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->position:I

    .line 260
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "com.netease.ntunisdk.piclib.fragment.PreviewMediaFragment"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$init$4$ShowMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 265
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$init$5$ShowMediaFragment(Landroid/view/View;)V
    .locals 2

    .line 269
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->btSend:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "picedit_sending"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$init$6$ShowMediaFragment(Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;)V
    .locals 1

    .line 283
    sget-object v0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->IMAGE:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->toOther(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)V

    goto :goto_0

    .line 284
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->VIDEO:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->toOther(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$init$7$ShowMediaFragment(Landroid/view/View;)V
    .locals 3

    .line 281
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-nez p1, :cond_0

    .line 282
    new-instance p1, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$I_g_PIeanFNzaHSb66eAn9a5O2w;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$ShowMediaFragment$I_g_PIeanFNzaHSb66eAn9a5O2w;-><init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;-><init>(Landroid/content/Context;ZLcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;)V

    .line 286
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->show()V

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->toOther(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init -> e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShowMediaFragment"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$8$ShowMediaFragment(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x2

    .line 309
    :try_start_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 312
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 314
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 316
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvLocalLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getItemCount(Landroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 317
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucketLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getBucketCount(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 318
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->setRvBucketLayout(I)I

    .line 319
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getItemHeight(Landroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->setShowHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 321
    sget-boolean v0, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged -> e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShowMediaFragment"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initBucket$10$ShowMediaFragment(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 454
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentAlpha:F

    return-void
.end method

.method public synthetic lambda$initBucket$11$ShowMediaFragment(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 470
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentRotation:F

    return-void
.end method

.method public synthetic lambda$initBucket$12$ShowMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 473
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$initBucket$13$ShowMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 479
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 480
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$initBucket$14$ShowMediaFragment(I)V
    .locals 2

    .line 485
    iput p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentBucketPosition:I

    .line 486
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->tvChosenBucket:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->localMediaDataList:Ljava/util/List;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentBucketPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->bucketName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucket:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->showBucket:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initBucket$9$ShowMediaFragment(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 432
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentTranslationY:F

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

    const-string p3, "ShowMediaFragment"

    const-string v0, "onCreateView"

    .line 103
    invoke-static {p3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "fragment_us_show_media"

    invoke-static {p3, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "rv_us_pic_lib_local_media"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvLocal:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "rv_us_pic_lib_bucket"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucket:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "ll_us_pic_lib_choose_bucket"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->llChooseBucket:Landroid/widget/LinearLayout;

    .line 109
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "tv_us_pic_lib_bucket_name_show"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->tvChosenBucket:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "tv_us_pic_lib_preview"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->tvPreview:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "bt_us_pic_lib_show_send"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->btSend:Landroid/widget/Button;

    .line 112
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "v_us_pic_lib_show_cover"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->vCover:Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "iv_us_pic_lib_bucket_show_flag"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->ivBucketShowFlag:Landroid/widget/ImageView;

    .line 114
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "iv_us_pic_lib_show_cancel"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->ivCancel:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "iv_us_pic_lib_show_other"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->ivOther:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "rl_us_pic_lib_func"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rlFunc:Landroid/widget/RelativeLayout;

    .line 117
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;->VMPFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {p2, p3, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    .line 118
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->init()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 527
    :cond_2
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 124
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_1

    .line 126
    iget p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->clickPosition:I

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    iget v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->clickPosition:I

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->notifyItemChanged(I)V

    .line 128
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->clickPosition:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->adapterLocal:Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->clickPosition:I

    .line 129
    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->getCurrentDataTag()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    const/4 v6, 0x0

    .line 128
    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->addAdapter(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;Z)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public setRvBucketLayout(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucket:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 406
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getBucketCount(Landroid/content/res/Resources;I)I

    move-result p1

    .line 407
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getDisplayMetrics(Landroid/content/res/Resources;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 408
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->density:F

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float v2, v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 409
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->localMediaDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 410
    iput v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucketHeight:I

    .line 411
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 412
    iget v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucketHeight:I

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 414
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucket:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return p1
.end method

.method public showBucket()V
    .locals 6

    .line 495
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 497
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 498
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentTranslationY:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->rvBucketHeight:I

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 501
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v1, [F

    iget v3, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentAlpha:F

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 502
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->currentRotation:F

    aput v2, v1, v4

    iget v2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->targetRotation:F

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 503
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 504
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->coverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 505
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->bucketShowFlagAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
