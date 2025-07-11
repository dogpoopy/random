.class public Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;
.super Ljava/lang/Object;
.source "CandidateHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CandidateHolder"


# instance fields
.field candidateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field map:Landroidx/collection/ArrayMap;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;->candidateList:Ljava/util/List;

    .line 18
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;->map:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public addEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "adapter",
            "adapterPosition",
            "dataTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "CandidateHolder"

    const-string v1, "addEntity"

    .line 45
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;->candidateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;->candidateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    .line 50
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 52
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 53
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    .line 56
    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne p2, v3, :cond_2

    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 63
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    sget-object v7, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;-><init>(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;)V

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public needRefresh(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public refresh()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;->candidateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 40
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;->refreshEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;->needRefresh(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/CandidateHolder;->map:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 29
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    .line 30
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->notifyAdapter(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V

    goto :goto_0

    :cond_1
    return-void
.end method
