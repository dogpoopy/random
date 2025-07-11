.class public Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BucketRecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketViewHolder"
.end annotation


# instance fields
.field ivSelected:Landroid/widget/ImageView;

.field ivShow:Lcom/netease/ntunisdk/piclib/view/TagImageView;

.field tvBucketName:Landroid/widget/TextView;

.field tvBucketSize:Landroid/widget/TextView;

.field vBg:Landroid/view/View;


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

    .line 86
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_us_pic_lib_bucket"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/TagImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->ivShow:Lcom/netease/ntunisdk/piclib/view/TagImageView;

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tv_us_pic_lib_bucket_name"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->tvBucketName:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tv_us_pic_lib_bucket_count"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->tvBucketSize:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_us_pic_lib_bucket_sel"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->ivSelected:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "v_pic_lib_bucket_bg"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/BucketRecAdapter$BucketViewHolder;->vBg:Landroid/view/View;

    return-void
.end method
