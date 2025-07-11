.class public Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PrevPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PagerViewHolder"
.end annotation


# instance fields
.field flVideoCover:Landroid/widget/FrameLayout;

.field ivVideoPlay:Landroid/widget/ImageView;

.field pivPreview:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

.field rlPagerBg:Landroid/widget/RelativeLayout;

.field sfVideoPlayer:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "piv_us_pic_lib_preview_pager_show"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->pivPreview:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sv_us_pic_lib_preview_pager_player"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->sfVideoPlayer:Landroid/view/SurfaceView;

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fl_us_pic_lib_preview_video_cover"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->flVideoCover:Landroid/widget/FrameLayout;

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_us_pic_lib_preview_video_play"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->ivVideoPlay:Landroid/widget/ImageView;

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rl_us_pic_lib_preview_pager_bg"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->rlPagerBg:Landroid/widget/RelativeLayout;

    return-void
.end method
