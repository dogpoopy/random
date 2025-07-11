.class Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$2;
.super Ljava/lang/Object;
.source "PreviewMediaFragment.java"

# interfaces
.implements Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;


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

.field final synthetic val$vpPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$vpPager"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$2;->this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$2;->val$vpPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "adapter",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;I)V"
        }
    .end annotation

    .line 217
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$2;->this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 218
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$2;->this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->access$100(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)I

    move-result p2

    if-eq p2, p1, :cond_0

    if-ltz p1, :cond_0

    .line 219
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$2;->this$0:Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment;)Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->notifyItemChanged(I)V

    .line 220
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/PreviewMediaFragment$2;->val$vpPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onItemSelected(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "adapter",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;I)V"
        }
    .end annotation

    return-void
.end method
