.class public abstract Lcom/netease/ntunisdk/core/storage/PersistenceStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netease/ntunisdk/core/storage/Store;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/netease/ntunisdk/core/storage/ExtFileStore;

.field private final b:Lcom/netease/ntunisdk/core/storage/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->getExtFileStore()Lcom/netease/ntunisdk/core/storage/ExtFileStore;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->a:Lcom/netease/ntunisdk/core/storage/ExtFileStore;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->getInnerStore()Lcom/netease/ntunisdk/core/storage/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->b:Lcom/netease/ntunisdk/core/storage/Store;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->b:Lcom/netease/ntunisdk/core/storage/Store;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/core/storage/Store;->delete(Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->a:Lcom/netease/ntunisdk/core/storage/ExtFileStore;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/core/storage/ExtFileStore;->delete(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method protected abstract getExtFileStore()Lcom/netease/ntunisdk/core/storage/ExtFileStore;
.end method

.method protected abstract getInnerStore()Lcom/netease/ntunisdk/core/storage/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->b:Lcom/netease/ntunisdk/core/storage/Store;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/core/storage/Store;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->a:Lcom/netease/ntunisdk/core/storage/ExtFileStore;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/core/storage/ExtFileStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->b:Lcom/netease/ntunisdk/core/storage/Store;

    invoke-interface {v1, p1, v0}, Lcom/netease/ntunisdk/core/storage/Store;->save(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->b:Lcom/netease/ntunisdk/core/storage/Store;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/core/storage/Store;->save(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/PersistenceStore;->a:Lcom/netease/ntunisdk/core/storage/ExtFileStore;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/core/storage/ExtFileStore;->save(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method
