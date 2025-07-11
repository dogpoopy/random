.class public Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BucketRecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketClickListener;,
        Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickListener:Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketClickListener;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;",
            ">;"
        }
    .end annotation
.end field

.field private fragment:Landroidx/fragment/app/Fragment;

.field private lastClickPosition:I

.field private final theLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragment",
            "data",
            "clickListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;",
            ">;",
            "Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketClickListener;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "item_us_bucket"

    .line 23
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->theLayout:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->fragment:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 31
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->isSelected:Z

    .line 32
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->data:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->clickListener:Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onCreateViewHolder$0$BucketRecAdapter(Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->clickListener:Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketClickListener;

    if-eqz p2, :cond_1

    .line 43
    iget p2, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->lastClickPosition:I

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->getAdapterPosition()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 44
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->data:Ljava/util/List;

    iget v0, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->lastClickPosition:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->isSelected:Z

    .line 45
    iget p2, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->lastClickPosition:I

    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->notifyItemChanged(I)V

    .line 46
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->getAdapterPosition()I

    move-result p2

    iput p2, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->lastClickPosition:I

    .line 47
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->isSelected:Z

    .line 48
    iget p2, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->lastClickPosition:I

    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->notifyItemChanged(I)V

    .line 50
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->clickListener:Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketClickListener;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketClickListener;->onClick(I)V

    :cond_1
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

    .line 21
    check-cast p1, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->onBindViewHolder(Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;I)V
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

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    .line 59
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->tvBucketName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->tvBucketSize:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-boolean v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->isSelected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->ivSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->vBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->ivSelected:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->vBg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :goto_0
    iget-object v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    iget p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->offset:I

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 69
    invoke-static {}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->getLoader()Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->ivShow:Lcom/netease/ntunisdk/piclib/view/TagImageView;

    sget-object v2, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->MICRO:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loadBitmap(Lcom/netease/ntunisdk/piclib/view/TagImageView;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;Z)V

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

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;
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

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "item_us_bucket"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;

    invoke-direct {p2, p1}, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    new-instance v0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$BucketRecAdapter$bq17fZYEKifZc0ceU36vwJkGl2A;

    invoke-direct {v0, p0, p2}, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$BucketRecAdapter$bq17fZYEKifZc0ceU36vwJkGl2A;-><init>(Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
