.class Landroid/support/v7/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 677
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .line 720
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 725
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 722
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    :goto_0
    return-void
.end method

.method public findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 686
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 1

    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 711
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 1

    .line 744
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 745
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 1

    .line 750
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 752
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2

    .line 697
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 698
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, p1, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 699
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView$State;->access$1812(Landroid/support/v7/widget/RecyclerView$State;I)I

    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2

    .line 704
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 705
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public onDispatchFirstPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 716
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$6;->dispatchUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method public onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$6;->dispatchUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method
