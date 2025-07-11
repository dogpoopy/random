.class public Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;
.super Ljava/lang/Object;
.source "AdapterRefreshObserver.java"

# interfaces
.implements Lcom/netease/ntunisdk/piclib/observer/OnFragmentHiddenChangedObserver;


# instance fields
.field private final adapter:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;->adapter:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;

    return-void
.end method


# virtual methods
.method public onHiddenChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;->adapter:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->refreshable:Z

    .line 21
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;->adapter:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;

    iget-boolean p1, p1, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->refreshable:Z

    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;->adapter:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->cache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;

    .line 23
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;->adapter:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->notifyItem(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/observer/AdapterRefreshObserver;->adapter:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->clearCache()V

    :cond_1
    return-void
.end method
