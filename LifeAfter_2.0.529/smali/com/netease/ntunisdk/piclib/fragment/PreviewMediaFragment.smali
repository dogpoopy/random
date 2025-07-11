.class public Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;
.super Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;
.source "PreviewMediaFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewMediaFragment"


# instance fields
.field private currentPagerPosition:I

.field private entitiesWithAdapter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;>;>;>;"
        }
    .end annotation
.end field

.field private initPosition:I

.field private prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

.field private prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

.field private final theLayout:Ljava/lang/String;

.field private toEditPosition:I

.field private tvEdit:Landroid/widget/TextView;

.field private tvSelectedIndex:Landroid/widget/TextView;

.field private videoMaxSelectDurationTips:Ljava/lang/String;

.field private videoMaxSelectSizeTips:Ljava/lang/String;

.field private viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;-><init>()V

    const-string v0, "fragment_us_preview_media"

    .line 48
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->theLayout:Ljava/lang/String;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->toEditPosition:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->entitiesWithAdapter:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->currentPagerPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->currentPagerPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->setEditVisibility(Z)V

    return-void
.end method

.method private handleArabLayout(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflate"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_us_pic_lib_preview_return"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/high16 v0, -0x40800000    # -1.0f

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_0
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflate"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tv_us_pic_lib_preview_pager_selected_index"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->tvSelectedIndex:Landroid/widget/TextView;

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fl_us_pic_lib_preview_pager_selected"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bt_us_pic_lib_preview_send"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tv_us_pic_lib_edit"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->tvEdit:Landroid/widget/TextView;

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vp_us_pic_lib_preview_pager"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/viewpager2/widget/ViewPager2;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "rv_us_pic_lib_preview_list"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ll_us_pic_lib_preview_back"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rl_us_pic_lib_preview_func"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rv_us_pic_lib_preview_top"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rv_us_pic_lib_preview_bg"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "v_us_pic_lib_preview_func_top"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fl_us_pic_lib_preview_rv_bg"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/FrameLayout;

    .line 102
    new-instance v2, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;->VMPFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v2, v3, v4}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-object v2, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    .line 103
    invoke-direct/range {p0 .. p1}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->handleArabLayout(Landroid/view/View;)V

    .line 105
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->position:I

    iput v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->initPosition:I

    .line 107
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v6, 0x0

    if-lez v0, :cond_0

    .line 108
    invoke-virtual {v15, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x4

    .line 109
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$UiGYaZd3o4R41EjkhJEZf_D_LVg;

    invoke-direct {v0, v7}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$UiGYaZd3o4R41EjkhJEZf_D_LVg;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$4jLbRtDwQ2TIAtssnHaRYFnAOl0;

    invoke-direct {v0, v7, v9}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$4jLbRtDwQ2TIAtssnHaRYFnAOl0;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Landroid/widget/Button;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "shape_us_picedit_not_over"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "shape_us_picedit_over"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 124
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$emzCCoWGssibhPGO0MCJuVH_uo0;

    move-object v0, v1

    move-object/from16 v17, v8

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v14

    move-object v14, v2

    move-object v2, v9

    move-object/from16 v19, v9

    move-object v9, v4

    move-object v4, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$emzCCoWGssibhPGO0MCJuVH_uo0;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Landroid/widget/Button;ILandroid/widget/FrameLayout;Landroid/view/View;I)V

    invoke-virtual {v9, v14, v8}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 151
    new-instance v0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    iget-object v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    invoke-direct {v0, v7, v1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    .line 152
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    iget v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->initPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const/4 v6, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v7, v0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->setEditVisibility(Z)V

    .line 153
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    invoke-virtual {v10, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 154
    iget v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->initPosition:I

    invoke-virtual {v10, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 155
    iget v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->initPosition:I

    iput v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->currentPagerPosition:I

    .line 156
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->initPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    if-lez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 157
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->updateSelectedState(ZLjava/lang/String;)V

    .line 159
    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;

    invoke-direct {v0, v7, v11}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v10, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 173
    iget-object v8, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    new-instance v9, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$vSsMFhs6H9awhfCIX3fsv-HYAq4;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$vSsMFhs6H9awhfCIX3fsv-HYAq4;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v8, v9}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->setOnItemClickListener(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$OnItemClickListener;)V

    .line 198
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 199
    invoke-static {v11}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->cancelItemAnimator(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    iget-object v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 202
    iput-boolean v2, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->previewListSelected:Z

    .line 203
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 205
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->initPosition:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 206
    iget v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->initPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput-boolean v6, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->previewListSelected:Z

    .line 208
    :cond_4
    new-instance v1, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    iget-object v3, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v7, v0, v3, v4}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;Landroid/content/Context;)V

    iput-object v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    const/4 v6, 0x0

    .line 209
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_5

    .line 210
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 211
    iget-object v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v2, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->getCurrentDataTag()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    const/16 v26, 0x0

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move/from16 v23, v6

    invoke-virtual/range {v20 .. v26}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->addAdapter(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 214
    :cond_5
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$2;

    invoke-direct {v1, v7, v10}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$2;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->setOnItemTouchListener(Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;)V

    .line 229
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$AVwLu7XPfLD4hZhvh1Q1We4xYyQ;

    invoke-direct {v1, v7, v11}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$AVwLu7XPfLD4hZhvh1Q1We4xYyQ;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->setOnAddedListener(Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$OnAddedListener;)V

    .line 230
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 231
    iget v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->initPosition:I

    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 232
    new-instance v0, Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;

    iget-object v1, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;-><init>(Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;)V

    invoke-virtual {v7, v0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->addObserver(Lcom/netease/ntunisdk/piclib/observer/OnFragmentHiddenChangedObserver;)V

    .line 234
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->getMap()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 236
    iget-object v3, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->entitiesWithAdapter:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_7

    .line 238
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 239
    iget-object v4, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->entitiesWithAdapter:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_7
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-eqz v2, :cond_6

    .line 243
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    .line 244
    iget-object v5, v4, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 245
    iget-object v4, v4, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 252
    :cond_9
    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$mFbf67uUBlEcX6cnUqLM9Qd8W8c;

    invoke-direct {v0, v7}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$mFbf67uUBlEcX6cnUqLM9Qd8W8c;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->tvEdit:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$MBDi_KHYUs0Plz95lRV5MTntNrs;

    invoke-direct {v1, v7}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$MBDi_KHYUs0Plz95lRV5MTntNrs;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->processing:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$BHJ2_uUHUyrsBrp5ZSulww0E24g;

    move-object/from16 v3, v19

    invoke-direct {v2, v7, v3}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$BHJ2_uUHUyrsBrp5ZSulww0E24g;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 300
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->configuration:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$1T53FaroUoYMH6uVOKHD2Vo3srQ;

    invoke-direct {v2, v7}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$PreviewMediaFragment$1T53FaroUoYMH6uVOKHD2Vo3srQ;-><init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance()Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;
    .locals 1

    .line 67
    new-instance v0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;-><init>()V

    return-object v0
.end method

.method private setEditVisibility(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->supportImageEdit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->tvEdit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->tvEdit:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->tvEdit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 312
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->tvEdit:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$PreviewMediaFragment(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$init$1$PreviewMediaFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    if-gtz p2, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "picedit_sending"

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$init$2$PreviewMediaFragment(Landroid/widget/Button;ILandroid/widget/FrameLayout;Landroid/view/View;ILjava/util/LinkedList;)V
    .locals 3

    .line 125
    invoke-virtual {p6}, Ljava/util/LinkedList;->size()I

    move-result p6

    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "picedit_finish"

    if-lez p6, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p5

    const-string p6, "pic_lib_white"

    invoke-static {p5, p6}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/widget/Button;->setTextColor(I)V

    .line 127
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 128
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 129
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 133
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 134
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p6, "pic_lib_white_alpha"

    invoke-static {p2, p6}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 138
    invoke-virtual {p1, p5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 139
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 142
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$init$3$PreviewMediaFragment(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;)Z
    .locals 3

    .line 174
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "pic_lib_black"

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 179
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->updateState(Ljava/lang/String;Z)V

    return v2

    .line 182
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 185
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 188
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 189
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 191
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "pic_lib_white"

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 192
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->updateState(Ljava/lang/String;Z)V

    return p3
.end method

.method public synthetic lambda$init$4$PreviewMediaFragment(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public synthetic lambda$init$5$PreviewMediaFragment(Landroid/view/View;)V
    .locals 8

    .line 254
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->videoMaxSelectDurationTips:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->videoMaxSelectSizeTips:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    if-eqz p1, :cond_1

    .line 256
    sget p1, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_duration:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->videoMaxSelectDurationTips:Ljava/lang/String;

    .line 257
    sget p1, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_size:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->videoMaxSelectSizeTips:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_1
    sget p1, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_duration:I

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectDurationOriginal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->videoMaxSelectDurationTips:Ljava/lang/String;

    .line 260
    sget p1, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_size:I

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectSizeOriginal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->videoMaxSelectSizeTips:Ljava/lang/String;

    .line 263
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->currentPagerPosition:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 264
    iget-boolean v2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    if-eqz v2, :cond_3

    .line 265
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->videoMaxSelectDurationTips:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 268
    :cond_3
    iget-boolean v2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    if-eqz v2, :cond_4

    .line 269
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->videoMaxSelectSizeTips:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 272
    :cond_4
    iget v2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    if-lez v2, :cond_5

    .line 273
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    invoke-virtual {v2, p1}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->removeEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    goto :goto_1

    .line 275
    :cond_5
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->entitiesWithAdapter:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_6

    .line 277
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 278
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->entitiesWithAdapter:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_6
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevListAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    const/4 v5, -0x1

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->getCurrentDataTag()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->ADD:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->addEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;)V

    .line 283
    :goto_1
    iget v2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    if-lez v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->updateSelectedState(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 285
    sget-object v0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init -> e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public synthetic lambda$init$6$PreviewMediaFragment(Landroid/view/View;)V
    .locals 2

    .line 291
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->currentPagerPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 292
    iget p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->currentPagerPosition:I

    iput p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->toEditPosition:I

    .line 293
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->viewModelPicLib:Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "com.netease.ntunisdk.piclib.fragment.EditMediaFragment"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$init$7$PreviewMediaFragment(Landroid/widget/Button;Ljava/lang/Boolean;)V
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "picedit_finish"

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$init$8$PreviewMediaFragment(Landroid/content/res/Configuration;)V
    .locals 0

    .line 301
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->configurationChanged()V

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

    .line 73
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "fragment_us_preview_media"

    invoke-static {p3, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->init(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 354
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;->onDestroyView()V

    .line 355
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->destroyMediaPlayer()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 318
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 319
    iget v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->toEditPosition:I

    if-ltz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->notifyItemChanged(I)V

    :cond_0
    if-nez p1, :cond_3

    .line 322
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->entitiesWithAdapter:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 323
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->entitiesWithAdapter:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 324
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->entitiesWithAdapter:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 326
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 327
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;

    if-eqz v2, :cond_2

    .line 329
    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 331
    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 348
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;->onPause()V

    .line 349
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->prevPagerAdapter:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->stopMediaPlayer()V

    return-void
.end method

.method public updateSelectedState(ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flag",
            "selectedIndex"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->tvSelectedIndex:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 343
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->tvSelectedIndex:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
