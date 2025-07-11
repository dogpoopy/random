.class public Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;
.super Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;
.source "PrevListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;,
        Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$OnAddedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
        "Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private fragment:Landroidx/fragment/app/Fragment;

.field private onAddedListener:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$OnAddedListener;

.field private final theLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragment",
            "data",
            "selectedHolder",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;",
            "Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p2, p3, p4}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;-><init>(Ljava/util/List;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;Landroid/content/Context;)V

    const-string p2, "item_us_preview_list_show"

    .line 25
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->theLayout:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public getCurrentDataTag()Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.ntunisdk.piclib.adapter.PrevListAdapter.pre_list_tag"

    return-object v0
.end method

.method public synthetic lambda$onCreateViewHolder$0$PrevListAdapter(Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;Landroid/view/View;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;->getAdapterPosition()I

    move-result p1

    .line 63
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->data:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->updateItem(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    .line 64
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->onItemTouchListener:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->onItemTouchListener:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-interface {p2, v0, p0, p1}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;->onItemClick(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->onBindViewHolder(Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 72
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 73
    iget-boolean v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->previewListSelected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;->vBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;->vBg:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_0
    iget-object v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->getLoader()Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;->ivShow:Lcom/netease/ntunisdk/piclib/view/TagImageView;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    sget-object v2, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->MICRO:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loadBitmap(Lcom/netease/ntunisdk/piclib/view/TagImageView;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;Z)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->getLoader()Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;->ivShow:Lcom/netease/ntunisdk/piclib/view/TagImageView;

    sget-object v2, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->MICRO:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loadBitmap(Lcom/netease/ntunisdk/piclib/view/TagImageView;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "item_us_preview_list_show"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;

    invoke-direct {p2, p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;-><init>(Landroid/view/View;)V

    .line 61
    iget-object p1, p2, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;->ivShow:Lcom/netease/ntunisdk/piclib/view/TagImageView;

    new-instance v0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevListAdapter$nW3-y6h6RXLEtP_yB_JrJ8PKTNU;

    invoke-direct {v0, p0, p2}, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevListAdapter$nW3-y6h6RXLEtP_yB_JrJ8PKTNU;-><init>(Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setOnAddedListener(Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$OnAddedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onAddedListener"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->onAddedListener:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$OnAddedListener;

    return-void
.end method

.method public updateItem(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entityInfo"
        }
    .end annotation

    .line 93
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->state:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    sget-object v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->REMOVE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    if-ltz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->data:Ljava/util/List;

    iget v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    iget p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->state:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    sget-object v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->ADD:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    if-ne v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->data:Ljava/util/List;

    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->notifyItemInserted(I)V

    .line 101
    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->updateItem(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    .line 102
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->onAddedListener:Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$OnAddedListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$OnAddedListener;->onAdded()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateItem(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 42
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->data:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    if-eq v3, p1, :cond_1

    .line 43
    iget-boolean v4, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->previewListSelected:Z

    if-eqz v4, :cond_1

    .line 44
    iput-boolean v1, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->previewListSelected:Z

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-ne v3, p1, :cond_2

    const/4 v3, 0x1

    .line 47
    iput-boolean v3, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->previewListSelected:Z

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_4
    return-void
.end method
