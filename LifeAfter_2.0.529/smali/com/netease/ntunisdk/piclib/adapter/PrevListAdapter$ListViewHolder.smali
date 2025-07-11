.class public Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PrevListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewHolder"
.end annotation


# instance fields
.field ivShow:Lcom/netease/ntunisdk/piclib/view/TagImageView;

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

    .line 114
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_us_pic_lib_preview_list_show"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/TagImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;->ivShow:Lcom/netease/ntunisdk/piclib/view/TagImageView;

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "v_us_pic_lib_preview_list_bg"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevListAdapter$ListViewHolder;->vBg:Landroid/view/View;

    return-void
.end method
