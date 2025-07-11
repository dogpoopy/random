.class public final synthetic Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$NzdxTsFM1fwSzS0QLfbZtL4onac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

.field public final synthetic f$1:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;

.field public final synthetic f$2:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$NzdxTsFM1fwSzS0QLfbZtL4onac;->f$0:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$NzdxTsFM1fwSzS0QLfbZtL4onac;->f$1:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;

    iput-object p3, p0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$NzdxTsFM1fwSzS0QLfbZtL4onac;->f$2:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$NzdxTsFM1fwSzS0QLfbZtL4onac;->f$0:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$NzdxTsFM1fwSzS0QLfbZtL4onac;->f$1:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$NzdxTsFM1fwSzS0QLfbZtL4onac;->f$2:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;

    invoke-virtual {v0, v1, v2, p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->lambda$onCreateViewHolder$1$PrevPagerAdapter(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;Landroid/view/View;)V

    return-void
.end method
