.class public Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;
.super Landroidx/fragment/app/Fragment;
.source "HiddenStateChangedFragment.java"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/observer/OnFragmentHiddenChangedObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;->listeners:Ljava/util/List;

    return-void
.end method

.method private stateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/observer/OnFragmentHiddenChangedObserver;

    .line 35
    invoke-interface {v1, p1}, Lcom/netease/ntunisdk/piclib/observer/OnFragmentHiddenChangedObserver;->onHiddenChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/netease/ntunisdk/piclib/observer/OnFragmentHiddenChangedObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;->stateChanged(Z)V

    .line 30
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 24
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/HiddenStateChangedFragment;->stateChanged(Z)V

    return-void
.end method
