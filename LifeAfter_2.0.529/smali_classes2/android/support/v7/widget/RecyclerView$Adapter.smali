.class public abstract Landroid/support/v7/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5139
    new-instance v0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x0

    .line 5140
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 5242
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5243
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5244
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    .line 5246
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    const-string v0, "RV OnBindView"

    .line 5249
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5250
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 5251
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 5252
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "RV CreateView"

    .line 5227
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5228
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 5229
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 5230
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-object p1
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final hasObservers()Z
    .locals 1

    .line 5406
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 5314
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 5493
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2

    .line 5509
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2

    .line 5537
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2

    .line 5602
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1

    .line 5617
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    .line 5555
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 5585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    .line 5636
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1

    .line 5670
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2

    .line 5653
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5217
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 5426
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .line 5280
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5284
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void

    .line 5281
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 5440
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
