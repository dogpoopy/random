.class Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$1;
.super Ljava/lang/Object;
.source "PrevPagerAdapter.java"

# interfaces
.implements Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

.field final synthetic val$pagerViewHolder:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pagerViewHolder"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$1;->this$0:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$1;->val$pagerViewHolder:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaStop()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$1;->this$0:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$1;->val$pagerViewHolder:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->access$000(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$1;->this$0:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$1;->val$pagerViewHolder:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->access$000(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;)V

    return-void
.end method
