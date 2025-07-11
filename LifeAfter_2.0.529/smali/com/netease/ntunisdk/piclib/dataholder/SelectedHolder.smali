.class public Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;
.super Landroidx/lifecycle/LiveData;
.source "SelectedHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/LinkedList<",
        "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectedHolder"


# instance fields
.field private final map:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Ljava/util/LinkedList<",
            "Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field public final removedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final selectedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->removedList:Ljava/util/LinkedList;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->map:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public addAdapter(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "adapter",
            "adapterPosition",
            "dataTag",
            "state",
            "add"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;I",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;",
            "Z)V"
        }
    .end annotation

    const-string v0, "SelectedHolder"

    const-string v1, "addAdapter"

    .line 138
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 139
    iget-object p6, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {p6, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_0

    .line 140
    iget-object p6, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {p6, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    iget-object p6, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {p6, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/LinkedList;

    if-nez p6, :cond_1

    .line 144
    new-instance p6, Ljava/util/LinkedList;

    invoke-direct {p6}, Ljava/util/LinkedList;-><init>()V

    .line 145
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    new-instance v6, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;-><init>(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;)V

    .line 148
    invoke-virtual {p6, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "adapter",
            "adapterPosition",
            "dataTag",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;I",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;",
            ")V"
        }
    .end annotation

    const-string v0, "SelectedHolder"

    const-string v1, "addEntity"

    .line 105
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->maxSize:I

    if-le v0, v2, :cond_1

    if-le v2, v1, :cond_1

    .line 107
    iget-object p1, p2, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p2, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->contextRef:Ljava/lang/ref/WeakReference;

    .line 109
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    const-string p3, "picedit_select_num_limit_tips"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    iget p4, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->maxSize:I

    .line 110
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    .line 109
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-static {p1, p2, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    if-ne v2, v1, :cond_2

    .line 115
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->removedList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_2
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 119
    invoke-virtual/range {v1 .. v7}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->addAdapter(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;Z)V

    .line 120
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->refreshIndex()V

    .line 121
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getMap()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Ljava/util/LinkedList<",
            "Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;",
            ">;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->map:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public refreshIndex()V
    .locals 6

    const-string v0, "SelectedHolder"

    const-string v1, "refreshIndex"

    .line 38
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->removedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->removedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 41
    iput v1, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 42
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    .line 45
    sget-object v4, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->REMOVE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    iput-object v4, v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->state:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    .line 46
    iget-object v4, v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 47
    iget-object v4, v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;

    invoke-virtual {v4, v3}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->notifyAdapter(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->removedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 56
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 58
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-eqz v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 61
    iget v5, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    if-eq v2, v5, :cond_4

    .line 62
    iput v2, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 63
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 64
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    .line 66
    iget-object v5, v4, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 67
    iget-object v5, v4, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;

    invoke-virtual {v5, v4}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->notifyAdapter(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V

    goto :goto_2

    .line 68
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 72
    :cond_6
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iput v1, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public removeEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->removedList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->refreshIndex()V

    .line 134
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxSize"
        }
    .end annotation

    .line 27
    iput p1, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->maxSize:I

    return-void
.end method

.method public updateSelectedIndex(Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "entity",
            "adapterPosition",
            "dataTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    .line 84
    iget-object v4, v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->dataTag:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_0

    const/4 v1, 0x0

    .line 86
    iput p3, v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    .line 87
    iput-object p4, v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->dataTag:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 90
    new-instance v1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    sget-object v8, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    move-object v3, v1

    move-object v4, p2

    move-object v5, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;-><init>(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 93
    new-instance v7, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    sget-object v6, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;-><init>(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {p1, p2, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method
