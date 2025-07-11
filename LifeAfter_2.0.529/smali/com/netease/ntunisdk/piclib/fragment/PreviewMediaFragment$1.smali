.class Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "PreviewMediaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

.field final synthetic val$rvList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$rvList"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;->val$rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 162
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 163
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 164
    iget v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 165
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->updateSelectedState(ZLjava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->access$102(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;I)I

    .line 167
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->access$200(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->updateItem(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    .line 168
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;->val$rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 169
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {p1, v3}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->access$300(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Z)V

    return-void
.end method
