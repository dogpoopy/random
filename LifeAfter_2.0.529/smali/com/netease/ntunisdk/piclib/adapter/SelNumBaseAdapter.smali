.class public abstract Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelNumBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelNumBaseAdapter"


# instance fields
.field public final cache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field public onItemTouchListener:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;

.field public refreshable:Z

.field public selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "selectedHolder",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;",
            "Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->cache:Ljava/util/List;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->refreshable:Z

    .line 32
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->data:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    .line 34
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->contextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->cache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public abstract getCurrentDataTag()Ljava/lang/String;
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public notifyAdapter(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entityInfo"
        }
    .end annotation

    const-string v0, "SelNumBaseAdapter"

    const-string v1, "notifyAdapter"

    .line 48
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->refreshable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->notifyItem(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->cache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public notifyItem(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entityInfo"
        }
    .end annotation

    const-string v0, "SelNumBaseAdapter"

    const-string v1, "notifyItem"

    .line 63
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->dataTag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->getCurrentDataTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    if-ltz v0, :cond_1

    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->data:Ljava/util/List;

    iget v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    if-eq v0, v1, :cond_2

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->data:Ljava/util/List;

    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    .line 70
    :cond_2
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->updateItem(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V

    .line 71
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->state:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    sget-object v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->ADD:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    if-ne v0, v1, :cond_3

    .line 72
    sget-object v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    iput-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->state:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    :cond_3
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 77
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->data:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    if-lez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->getCurrentDataTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, p2, v1}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->updateSelectedIndex(Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnItemTouchListener(Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onItemTouchListener"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->onItemTouchListener:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;

    return-void
.end method

.method public abstract updateItem(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entityInfo"
        }
    .end annotation
.end method
