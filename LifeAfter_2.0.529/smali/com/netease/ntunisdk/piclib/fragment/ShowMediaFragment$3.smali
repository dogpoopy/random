.class Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShowMediaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->initBucket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 437
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$400(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$500(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 439
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$600(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$700(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 440
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$100(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->localMediaDataList:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$700(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->resetData(Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;)V

    .line 441
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$800(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 442
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$700(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$602(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;I)I

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 449
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$400(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$500(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    return-void
.end method
